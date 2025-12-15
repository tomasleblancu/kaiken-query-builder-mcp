# MCP Server

Este directorio contiene el servidor MCP (Model Context Protocol) que permite a Claude ejecutar queries SQL directamente.

## Archivo Principal

**[mcp_server.py](mcp_server.py)** - Servidor MCP que actúa como proxy entre Claude y la API Django.

## Cómo Funciona

1. Claude Code se conecta al MCP Server via stdio
2. MCP Server recibe solicitudes de Claude
3. MCP Server llama a endpoints HTTP de la API Django
4. Django ejecuta las queries contra KAIKEN_APP
5. Los resultados regresan a Claude

## Configuración

El servidor está configurado en `.claude/mcp_config.json`:

```json
{
  "mcpServers": {
    "kaiken-query-builder": {
      "command": "python",
      "args": ["${workspaceFolder}/mcp/mcp_server.py"]
    }
  }
}
```

## Variables de Entorno

El servidor lee configuración de `.env`:

- `DJANGO_API_TOKEN` - Token de autenticación para la API Django (requerido)
- `DJANGO_API_URL` - URL de la API Django (opcional, default: `https://lab.kaiken.ai/api/query-builder`)

## Uso

El MCP Server se inicia automáticamente cuando Claude Code lo necesita. No necesitas ejecutarlo manualmente.

Para probarlo manualmente:

```bash
source venv/bin/activate
python mcp/mcp_server.py
```

## Documentación

- [Configuración completa](../docs/MCP_SETUP.md)
- [Endpoints Django](../docs/DJANGO_API_ENDPOINTS.md)
