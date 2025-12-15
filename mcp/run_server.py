#!/usr/bin/env python3
"""
Script wrapper para ejecutar el MCP server
Asegura que el working directory y las variables de entorno sean correctos
"""
import sys
import os
from pathlib import Path

# Asegurar que estamos en el directorio correcto
script_dir = Path(__file__).parent
project_root = script_dir.parent

# Cambiar al directorio del proyecto para que las rutas relativas funcionen
os.chdir(project_root)

# Agregar el directorio mcp al path de Python
sys.path.insert(0, str(script_dir))

# Verificar que el .env existe
env_path = project_root / '.env'
if not env_path.exists():
    print(f"⚠️ ADVERTENCIA: No se encontró el archivo .env en {env_path}", file=sys.stderr)
    print("   Crea el archivo .env con tu DJANGO_API_TOKEN", file=sys.stderr)

# Importar y ejecutar el servidor
from mcp_server import main

if __name__ == "__main__":
    main()
