#!/usr/bin/env python3
"""
Script de diagnóstico para verificar la carga del .env
Ejecutar desde la carpeta mcp: python test_env.py
"""
import os
from pathlib import Path
from dotenv import load_dotenv

print("=== Diagnóstico de .env ===\n")

# 1. Verificar ubicación del script
script_path = Path(__file__)
print(f"1. Script ubicado en: {script_path}")
print(f"   Carpeta actual: {script_path.parent}")

# 2. Buscar el archivo .env
project_root = script_path.parent.parent
env_path = project_root / '.env'
print(f"\n2. Buscando .env en: {env_path}")
print(f"   ¿Existe? {env_path.exists()}")

if env_path.exists():
    print(f"   Tamaño: {env_path.stat().st_size} bytes")

    # 3. Intentar leer el contenido (sin mostrar el token completo)
    print("\n3. Contenido del .env (primeros 50 caracteres por línea):")
    try:
        with open(env_path, 'r', encoding='utf-8') as f:
            for i, line in enumerate(f, 1):
                line = line.strip()
                if line and not line.startswith('#'):
                    # Mostrar solo los primeros caracteres del valor
                    if '=' in line:
                        key, value = line.split('=', 1)
                        value_preview = value[:50] + '...' if len(value) > 50 else value
                        print(f"   Línea {i}: {key}={value_preview}")
    except Exception as e:
        print(f"   ❌ Error al leer: {e}")

# 4. Cargar con dotenv
print("\n4. Cargando variables con dotenv...")
load_dotenv(env_path)

# 5. Verificar variables cargadas
token = os.getenv('DJANGO_API_TOKEN', '')
url = os.getenv('DJANGO_API_URL', 'https://lab.kaiken.ai/api/mcp')

print(f"\n5. Variables de entorno cargadas:")
print(f"   DJANGO_API_URL: {url}")
print(f"   DJANGO_API_TOKEN: {'✅ Configurado (' + str(len(token)) + ' caracteres)' if token else '❌ NO configurado o vacío'}")

if token:
    print(f"   Token empieza con: {token[:10]}...")
    print(f"   Token termina con: ...{token[-10:]}")

# 6. Diagnóstico final
print("\n=== Resultado del diagnóstico ===")
if not env_path.exists():
    print("❌ PROBLEMA: El archivo .env no existe")
    print("   Solución: Copia .env.example a .env y agrega tu token")
elif not token:
    print("❌ PROBLEMA: DJANGO_API_TOKEN está vacío")
    print("   Solución: Edita el .env y agrega tu token de API")
else:
    print("✅ Configuración correcta")
    print("   El MCP server debería funcionar")
