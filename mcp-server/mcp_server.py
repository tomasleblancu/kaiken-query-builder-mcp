#!/usr/bin/env python3
"""
MCP Server para Query Builder
Actúa como interfaz entre Claude y los endpoints Django
"""

import asyncio
import os
import json
import httpx
from pathlib import Path
from typing import Any
from dotenv import load_dotenv
from mcp.server.models import InitializationOptions
from mcp.server import NotificationOptions, Server
from mcp.server.stdio import stdio_server
from mcp import types

# Cargar variables de entorno desde la raíz del proyecto
project_root = Path(__file__).parent.parent
load_dotenv(project_root / '.env')

# Configuración
DJANGO_API_URL = os.getenv('DJANGO_API_URL', 'https://lab.kaiken.ai/api/mcp')
DJANGO_API_TOKEN = os.getenv('DJANGO_API_TOKEN', '')

# Crear servidor MCP
app = Server("kaiken-query-builder")


async def call_django_api(endpoint: str, method: str = 'POST', data: dict = None) -> dict:
    """Llama a un endpoint de la API Django"""
    # Limpiar barras para evitar dobles barras en la URL
    base_url = DJANGO_API_URL.rstrip('/')
    endpoint = endpoint.lstrip('/')
    url = f"{base_url}/{endpoint}"
    headers = {
        'Content-Type': 'application/json'
    }

    if DJANGO_API_TOKEN:
        headers['Authorization'] = f'Bearer {DJANGO_API_TOKEN}'

    async with httpx.AsyncClient(timeout=60.0) as client:
        try:
            if method == 'POST':
                response = await client.post(url, json=data, headers=headers)
            else:
                response = await client.get(url, headers=headers)

            response.raise_for_status()
            return response.json()
        except httpx.HTTPError as e:
            error_msg = f'Error HTTP {e.response.status_code if hasattr(e, "response") else "unknown"}'
            try:
                error_detail = e.response.json() if hasattr(e, 'response') else {}
                error_msg += f': {error_detail}'
            except:
                error_msg += f': {str(e)}'

            return {
                'success': False,
                'error': error_msg
            }
        except Exception as e:
            return {
                'success': False,
                'error': f'Error inesperado: {str(e)}'
            }


def read_query_file(file_path: str) -> str:
    """Lee un archivo SQL del directorio queries/"""
    try:
        # Manejar rutas relativas desde el directorio del proyecto
        project_root = Path(__file__).parent.parent
        full_path = project_root / file_path

        if not full_path.exists():
            raise FileNotFoundError(f"No se encontró el archivo: {file_path}")

        with open(full_path, 'r', encoding='utf-8') as f:
            return f.read()
    except Exception as e:
        raise Exception(f"Error leyendo archivo: {str(e)}")


@app.list_tools()
async def handle_list_tools() -> list[types.Tool]:
    """Lista las herramientas disponibles"""
    return [
        types.Tool(
            name="execute_sql",
            description="Ejecuta una query SQL de solo lectura (SELECT, SHOW, DESCRIBE, EXPLAIN) contra KAIKEN_APP",
            inputSchema={
                "type": "object",
                "properties": {
                    "sql": {
                        "type": "string",
                        "description": "La query SQL a ejecutar"
                    }
                },
                "required": ["sql"]
            }
        ),
        types.Tool(
            name="execute_query_file",
            description="Ejecuta una query SQL desde un archivo en queries/",
            inputSchema={
                "type": "object",
                "properties": {
                    "file_path": {
                        "type": "string",
                        "description": "Ruta al archivo SQL, ej: 'queries/Reportes Contables/01_proyectos_licitaciones.sql'"
                    }
                },
                "required": ["file_path"]
            }
        ),
        types.Tool(
            name="list_query_files",
            description="Lista todos los archivos .sql disponibles en queries/",
            inputSchema={
                "type": "object",
                "properties": {
                    "folder": {
                        "type": "string",
                        "description": "Carpeta específica a listar (opcional)"
                    }
                }
            }
        ),
        types.Tool(
            name="get_query_logs",
            description="Obtiene los logs de queries ejecutadas recientemente",
            inputSchema={
                "type": "object",
                "properties": {
                    "limit": {
                        "type": "number",
                        "description": "Número de logs a obtener (default: 10)"
                    }
                }
            }
        ),
        types.Tool(
            name="get_available_reports",
            description="Lista los reportes contables disponibles",
            inputSchema={
                "type": "object",
                "properties": {}
            }
        ),
        types.Tool(
            name="query_database_natural",
            description="Consulta información sobre el esquema de la base de datos: estructura de tablas, columnas, relaciones entre tablas, claves foráneas, etc. NO es para obtener datos, solo para entender la estructura.",
            inputSchema={
                "type": "object",
                "properties": {
                    "query": {
                        "type": "string",
                        "description": "Pregunta en lenguaje natural sobre el esquema, ej: '¿Cuál es la tabla selected_tenders?' o '¿Cómo se relaciona selected_tender con projects?'"
                    }
                },
                "required": ["query"]
            }
        )
    ]


@app.call_tool()
async def handle_call_tool(
    name: str,
    arguments: dict[str, Any] | None
) -> list[types.TextContent]:
    """Maneja las llamadas a las herramientas"""

    if name == "execute_sql":
        sql = arguments.get("sql", "")

        # Llamar al endpoint Django
        result = await call_django_api("execute-query/", method='POST', data={"sql": sql})

        if result.get('success'):
            if 'data' in result:
                data = result['data']
                output = f"✅ Query ejecutada exitosamente\n"
                output += f"📊 Filas retornadas: {len(data)}\n\n"

                if len(data) > 0:
                    # Limitar resultados mostrados
                    rows_to_show = data[:100]
                    output += "Resultados:\n"
                    output += json.dumps(rows_to_show, indent=2, default=str, ensure_ascii=False)

                    if len(data) > 100:
                        output += f"\n\n... ({len(data) - 100} filas más no mostradas)"
                else:
                    output += "No se encontraron resultados"
            else:
                output = f"✅ {result.get('message', 'Query ejecutada')}"
        else:
            output = f"❌ Error: {result.get('error', 'Error desconocido')}"

        return [types.TextContent(type="text", text=output)]

    elif name == "execute_query_file":
        file_path = arguments.get("file_path", "")

        try:
            # Leer el archivo SQL
            sql = read_query_file(file_path)

            # Llamar al endpoint Django
            result = await call_django_api("execute-query/", method='POST', data={"sql": sql})

            if result.get('success'):
                if 'data' in result:
                    data = result['data']
                    output = f"✅ Query ejecutada desde: {file_path}\n"
                    output += f"📊 Filas retornadas: {len(data)}\n\n"

                    if len(data) > 0:
                        rows_to_show = data[:100]
                        output += "Resultados:\n"
                        output += json.dumps(rows_to_show, indent=2, default=str, ensure_ascii=False)

                        if len(data) > 100:
                            output += f"\n\n... ({len(data) - 100} filas más no mostradas)"
                    else:
                        output += "No se encontraron resultados"
                else:
                    output = f"✅ {result.get('message', 'Query ejecutada')}"
            else:
                output = f"❌ Error: {result.get('error', 'Error desconocido')}"

        except Exception as e:
            output = f"❌ Error: {str(e)}"

        return [types.TextContent(type="text", text=output)]

    elif name == "list_query_files":
        folder = arguments.get("folder", "")

        try:
            project_root = Path(__file__).parent.parent
            queries_dir = project_root / "queries"

            if folder:
                search_dir = queries_dir / folder
            else:
                search_dir = queries_dir

            if not search_dir.exists():
                output = f"❌ La carpeta '{folder}' no existe"
            else:
                sql_files = []
                for sql_file in search_dir.rglob("*.sql"):
                    rel_path = sql_file.relative_to(queries_dir)
                    sql_files.append(str(rel_path))

                output = f"📁 Archivos .sql encontrados ({len(sql_files)}):\n\n"

                # Agrupar por carpeta
                by_folder = {}
                for f in sorted(sql_files):
                    folder_name = str(Path(f).parent) if str(Path(f).parent) != '.' else 'raíz'
                    if folder_name not in by_folder:
                        by_folder[folder_name] = []
                    by_folder[folder_name].append(Path(f).name)

                for folder_name, files in sorted(by_folder.items()):
                    output += f"\n📂 {folder_name}:\n"
                    for file in files:
                        output += f"  - {file}\n"

        except Exception as e:
            output = f"❌ Error listando archivos: {str(e)}"

        return [types.TextContent(type="text", text=output)]

    elif name == "get_query_logs":
        limit = arguments.get("limit", 10)

        # Llamar al endpoint de logs
        result = await call_django_api("query-logs/", method='GET')

        if result.get('success') or isinstance(result, list):
            logs = result if isinstance(result, list) else result.get('logs', [])
            logs = logs[:limit]  # Limitar cantidad

            output = f"📋 Logs de queries recientes ({len(logs)}):\n\n"
            output += json.dumps(logs, indent=2, default=str, ensure_ascii=False)
        else:
            output = f"❌ Error: {result.get('error', 'Error desconocido')}"

        return [types.TextContent(type="text", text=output)]

    elif name == "get_available_reports":
        try:
            project_root = Path(__file__).parent.parent
            reports_dir = project_root / "queries" / "Reportes Contables"
            reports = []

            for sql_file in sorted(reports_dir.glob("*.sql")):
                reports.append({
                    "nombre": sql_file.name,
                    "ruta": f"queries/Reportes Contables/{sql_file.name}"
                })

            output = "📋 Reportes Contables Disponibles:\n\n"

            descriptions = {
                "01_proyectos_licitaciones.sql": "Proyectos y licitaciones Kaiken Lab",
                "02_documentos_pago_ordenes_compra.sql": "Documentos de pago y OC (6 meses)",
                "03_facturas_compra_completo.sql": "Facturas de compra, NC y ND (12 meses)",
                "04_facturas_venta_completo.sql": "Facturas de venta, NC y ND (12 meses)",
                "05_movimientos_bancarios_consolidado.sql": "Movimientos bancarios (6 meses)",
                "06_ordenes_compra_con_conciliacion.sql": "OC con conciliación (12 meses)"
            }

            for report in reports:
                desc = descriptions.get(report['nombre'], 'Sin descripción')
                output += f"• {report['nombre']}\n"
                output += f"  {desc}\n"
                output += f"  Ruta: {report['ruta']}\n\n"

        except Exception as e:
            output = f"❌ Error: {str(e)}"

        return [types.TextContent(type="text", text=output)]

    elif name == "query_database_natural":
        query = arguments.get("query", "")

        # Llamar al endpoint Django de consulta natural
        result = await call_django_api("query-database/", method='POST', data={"query": query})

        if result.get('success'):
            output = f"✅ Consulta procesada exitosamente\n\n"

            # Mostrar la pregunta original
            if 'query' in result:
                output += f"❓ Pregunta: {result['query']}\n\n"

            # Mostrar la respuesta del asistente (campo principal)
            if 'response' in result:
                output += f"📝 Respuesta:\n{result['response']}\n\n"
            else:
                # Si no hay campo response, mostrar toda la respuesta para debug
                output += f"⚠️ No se encontró campo 'response' en la respuesta del backend\n"
                output += f"📋 Respuesta completa:\n{json.dumps(result, indent=2, default=str, ensure_ascii=False)}\n\n"

            # Mostrar información del vector store si está disponible
            if 'vector_store' in result:
                vs = result['vector_store']
                output += f"📊 Vector Store: {vs.get('id', 'N/A')} ({vs.get('table_count', 0)} tablas)\n"

            # Mostrar uso de tokens si está disponible
            if 'usage' in result:
                usage = result['usage']
                output += f"💰 Tokens: {usage.get('total_tokens', 0)} (prompt: {usage.get('prompt_tokens', 0)}, completion: {usage.get('completion_tokens', 0)})\n"
        else:
            output = f"❌ Error: {result.get('error', 'Error desconocido')}"

        return [types.TextContent(type="text", text=output)]

    else:
        raise ValueError(f"Herramienta desconocida: {name}")


async def main():
    """Punto de entrada principal"""
    # Verificar configuración
    if not DJANGO_API_TOKEN:
        print("❌ Error: DJANGO_API_TOKEN no configurada en .env")
        print("   Configura tu token en el archivo .env")
        return

    print(f"🚀 MCP Server iniciado")
    print(f"📡 Django API: {DJANGO_API_URL}")
    print(f"🔐 Token: ✅ Configurado")
    print(f"📂 Directorio queries: {Path(__file__).parent.parent / 'queries'}")
    print()

    async with stdio_server() as (read_stream, write_stream):
        await app.run(
            read_stream,
            write_stream,
            InitializationOptions(
                server_name="kaiken-query-builder",
                server_version="1.0.0",
                capabilities=app.get_capabilities(
                    notification_options=NotificationOptions(),
                    experimental_capabilities={},
                ),
            ),
        )


if __name__ == "__main__":
    asyncio.run(main())
