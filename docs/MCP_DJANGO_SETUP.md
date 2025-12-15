# Implementación del MCP Server en Django

Este documento explica cómo implementar el servidor MCP (Model Context Protocol) en tu aplicación Django para permitir que Claude ejecute queries SQL directamente.

---

## 📋 Arquitectura

```
┌─────────────────┐         ┌──────────────────┐         ┌─────────────┐
│  Claude Code    │  SSE    │  Django App      │  MySQL  │  KAIKEN_APP │
│  (Cliente)      │◄────────│  (MCP Server)    │◄────────│  Database   │
└─────────────────┘         └──────────────────┘         └─────────────┘
```

**Flujo:**
1. Claude Code se conecta al servidor MCP vía SSE (Server-Sent Events)
2. Claude envía solicitudes de queries SQL
3. El servidor MCP ejecuta las queries contra KAIKEN_APP
4. Los resultados se envían de vuelta a Claude

---

## 🚀 Implementación en Django

### Paso 1: Instalar Dependencias

En tu proyecto Django, agrega al `requirements.txt`:

```txt
mcp>=1.0.0
django>=4.0
mysqlclient>=2.0
```

Instala:
```bash
pip install mcp mysqlclient
```

### Paso 2: Crear la App MCP

```bash
python manage.py startapp mcp_server
```

### Paso 3: Implementar el Servidor MCP

Crea `mcp_server/server.py`:

```python
"""
MCP Server para Query Builder
Permite ejecutar queries SQL de solo lectura contra KAIKEN_APP
"""

from mcp.server import Server
from mcp.server.sse import SseServerTransport
from mcp import types
from django.db import connections
from django.conf import settings
import json
from typing import Any

# Crear instancia del servidor
app = Server("kaiken-query-builder")


def execute_query(sql: str) -> dict[str, Any]:
    """Ejecuta una query SQL de solo lectura"""
    # Validar que sea query de lectura
    sql_upper = sql.strip().upper()
    if not any(sql_upper.startswith(cmd) for cmd in ['SELECT', 'SHOW', 'DESCRIBE', 'EXPLAIN']):
        return {
            'success': False,
            'error': 'Solo se permiten queries de lectura (SELECT, SHOW, DESCRIBE, EXPLAIN)'
        }

    try:
        # Usar la conexión de Django a KAIKEN_APP
        with connections['default'].cursor() as cursor:
            cursor.execute(sql)

            if cursor.description:
                columns = [col[0] for col in cursor.description]
                rows = [dict(zip(columns, row)) for row in cursor.fetchall()]

                return {
                    'success': True,
                    'rows': rows,
                    'row_count': len(rows),
                    'columns': columns
                }
            else:
                return {
                    'success': True,
                    'message': 'Query ejecutada exitosamente'
                }

    except Exception as e:
        return {
            'success': False,
            'error': str(e)
        }


@app.list_tools()
async def handle_list_tools() -> list[types.Tool]:
    """Lista las herramientas disponibles"""
    return [
        types.Tool(
            name="execute_sql",
            description="Ejecuta una query SQL de solo lectura contra KAIKEN_APP",
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
            name="get_table_info",
            description="Obtiene información de una tabla (columnas, tipos, etc.)",
            inputSchema={
                "type": "object",
                "properties": {
                    "table_name": {
                        "type": "string",
                        "description": "Nombre de la tabla"
                    }
                },
                "required": ["table_name"]
            }
        ),
        types.Tool(
            name="list_tables",
            description="Lista todas las tablas de la base de datos",
            inputSchema={
                "type": "object",
                "properties": {}
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
        result = execute_query(sql)

        if result['success']:
            if 'rows' in result:
                output = f"✅ Query ejecutada exitosamente\n"
                output += f"📊 Filas: {result['row_count']}\n"
                output += f"📋 Columnas: {', '.join(result['columns'])}\n\n"
                output += json.dumps(result['rows'], indent=2, default=str, ensure_ascii=False)
            else:
                output = f"✅ {result.get('message', 'Query ejecutada')}"
        else:
            output = f"❌ Error: {result['error']}"

        return [types.TextContent(type="text", text=output)]

    elif name == "get_table_info":
        table_name = arguments.get("table_name", "")
        sql = f"DESCRIBE {table_name}"
        result = execute_query(sql)

        if result['success']:
            output = f"📋 Tabla: {table_name}\n\n"
            output += json.dumps(result['rows'], indent=2, default=str, ensure_ascii=False)
        else:
            output = f"❌ Error: {result['error']}"

        return [types.TextContent(type="text", text=output)]

    elif name == "list_tables":
        sql = "SHOW TABLES"
        result = execute_query(sql)

        if result['success']:
            tables = [list(row.values())[0] for row in result['rows']]
            output = f"📊 Total de tablas: {len(tables)}\n\n"
            output += "\n".join(f"  - {table}" for table in sorted(tables))
        else:
            output = f"❌ Error: {result['error']}"

        return [types.TextContent(type="text", text=output)]

    else:
        raise ValueError(f"Herramienta desconocida: {name}")
```

### Paso 4: Crear Vista SSE

Crea `mcp_server/views.py`:

```python
from django.http import StreamingHttpResponse
from django.views.decorators.csrf import csrf_exempt
from mcp.server.sse import SseServerTransport
from .server import app
import asyncio
import json


@csrf_exempt
async def mcp_sse_endpoint(request):
    """Endpoint SSE para el servidor MCP"""

    # Crear transport SSE
    async def event_generator():
        transport = SseServerTransport("/mcp/messages")

        # Manejar mensajes entrantes
        async def handle_message(message):
            # Procesar mensaje del cliente
            response = await app.handle_message(message)
            return response

        # Stream de eventos
        async for event in transport.handle_sse(request):
            yield event

    response = StreamingHttpResponse(
        event_generator(),
        content_type='text/event-stream'
    )
    response['Cache-Control'] = 'no-cache'
    response['X-Accel-Buffering'] = 'no'

    return response
```

### Paso 5: Configurar URLs

En `mcp_server/urls.py`:

```python
from django.urls import path
from . import views

urlpatterns = [
    path('sse', views.mcp_sse_endpoint, name='mcp_sse'),
]
```

En tu `urls.py` principal:

```python
from django.urls import path, include

urlpatterns = [
    # ... tus otras URLs
    path('mcp/', include('mcp_server.urls')),
]
```

### Paso 6: Configurar Base de Datos

En `settings.py`, asegúrate de tener configurada la conexión a KAIKEN_APP:

```python
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'KAIKEN_APP',
        'USER': 'AppConnect',
        'PASSWORD': os.environ.get('DB_PASSWORD'),
        'HOST': '10.207.81.3',
        'PORT': '3306',
        'OPTIONS': {
            'charset': 'utf8mb4',
            'init_command': "SET sql_mode='STRICT_TRANS_TABLES'",
        }
    }
}
```

### Paso 7: Agregar a INSTALLED_APPS

En `settings.py`:

```python
INSTALLED_APPS = [
    # ... tus otras apps
    'mcp_server',
]
```

---

## 🔧 Configuración del Cliente (Query Builder)

En este repositorio, el archivo `.claude/mcp_config.json` debe configurarse:

```json
{
  "mcpServers": {
    "kaiken-query-builder": {
      "url": "http://tu-servidor.com:8000/mcp/sse",
      "transport": "sse"
    }
  }
}
```

Reemplaza `tu-servidor.com:8000` con la URL real de tu servidor Django.

---

## 🧪 Probar el Servidor

### 1. Iniciar el servidor Django

```bash
python manage.py runserver 0.0.0.0:8000
```

### 2. Probar el endpoint

```bash
curl http://localhost:8000/mcp/sse
```

Deberías recibir eventos SSE.

### 3. Usar desde Claude Code

Con el MCP configurado, Claude Code podrá ejecutar queries directamente:

```
Claude: Ejecuta SELECT COUNT(*) FROM client
```

---

## 🔒 Seguridad

### Implementar Autenticación

Agrega autenticación al endpoint MCP:

```python
from django.contrib.auth.decorators import login_required
from rest_framework.authentication import TokenAuthentication

@csrf_exempt
@login_required  # O tu método de auth preferido
async def mcp_sse_endpoint(request):
    # ... código del endpoint
```

### Variables de Entorno

Usa variables de entorno para credenciales:

```python
# settings.py
import os
from dotenv import load_dotenv

load_dotenv()

DATABASES = {
    'default': {
        'PASSWORD': os.environ.get('DB_PASSWORD'),
        # ...
    }
}
```

### Rate Limiting

Implementa rate limiting para evitar abuso:

```python
from django.views.decorators.cache import cache_page
from django.core.cache import cache

def rate_limit(max_requests=100, window=60):
    def decorator(view_func):
        def wrapper(request, *args, **kwargs):
            # Implementar lógica de rate limiting
            key = f"ratelimit:{request.user.id}"
            # ...
            return view_func(request, *args, **kwargs)
        return wrapper
    return decorator

@rate_limit(max_requests=100, window=60)
async def mcp_sse_endpoint(request):
    # ...
```

---

## 📊 Herramientas Disponibles

Una vez configurado, Claude tendrá acceso a:

| Herramienta | Descripción | Ejemplo |
|-------------|-------------|---------|
| `execute_sql` | Ejecuta queries SQL | `SELECT * FROM client LIMIT 10` |
| `get_table_info` | Info de tabla | `get_table_info("client")` |
| `list_tables` | Lista todas las tablas | `list_tables()` |

---

## 🐛 Troubleshooting

### Error: "Connection refused"

**Causa:** El servidor Django no está corriendo o no es accesible.

**Solución:**
1. Verifica que Django esté corriendo: `python manage.py runserver`
2. Verifica el firewall/puerto
3. Confirma la URL en `mcp_config.json`

### Error: "Access denied"

**Causa:** Credenciales de base de datos incorrectas.

**Solución:**
1. Verifica `settings.py` DATABASES
2. Confirma variables de entorno
3. Prueba conexión directa a MySQL

### Error: "SSE connection closed"

**Causa:** Timeout o configuración de proxy.

**Solución:**
1. Aumenta timeout en nginx/proxy
2. Verifica headers SSE en response
3. Revisa logs de Django

---

## 📚 Recursos

- [MCP SDK Documentation](https://github.com/anthropics/anthropic-mcp)
- [Django Async Views](https://docs.djangoproject.com/en/stable/topics/async/)
- [Server-Sent Events](https://developer.mozilla.org/en-US/docs/Web/API/Server-sent_events)

---

*Última actualización: 2025-12-12*
