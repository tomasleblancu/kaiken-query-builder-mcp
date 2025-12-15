# Configuración del MCP Server

Este documento explica cómo configurar y usar el MCP (Model Context Protocol) Server para ejecutar queries SQL directamente desde Claude.

---

## 🎯 ¿Qué es el MCP Server?

El MCP Server permite que Claude ejecute queries SQL contra KAIKEN_APP de forma directa, sin necesidad de:
- ❌ Copiar/pegar comandos en la terminal
- ❌ Configurar Python manualmente
- ❌ Activar entornos virtuales cada vez

Con el MCP configurado:
- ✅ Claude ejecuta queries directamente
- ✅ Sin configuración manual cada sesión
- ✅ Interfaz más fluida y natural

---

## 🏗️ Arquitectura

```
┌─────────────────┐         ┌──────────────────┐         ┌─────────────┐
│  Claude Code    │  stdio  │  MCP Server      │  HTTP   │  Django API │
│                 │◄────────│  (Este repo)     │◄────────│  (KAIKEN)   │
└─────────────────┘         └──────────────────┘         └─────────────┘
                                     │                           │
                                     │                           ▼
                                     │                    ┌─────────────┐
                                     ▼                    │ KAIKEN_APP  │
                              queries/*.sql               │  Database   │
                                                          └─────────────┘
```

---

## ⚙️ Configuración

### Paso 1: Instalar Dependencias

```bash
# Activar entorno virtual (solo primera vez)
source venv/bin/activate

# Instalar dependencias del MCP
pip install -r requirements.txt
```

### Paso 2: Configurar Variables de Entorno

Copia el archivo de ejemplo:

```bash
cp config/.env.example .env
```

Edita `.env` y configura:

```bash
# URL de tu API Django
DJANGO_API_URL=http://localhost:8000/api/query-builder

# Token de autenticación (obtener de Django)
DJANGO_API_TOKEN=tu-token-aqui
```

### Paso 3: Obtener Token de Django

En tu aplicación Django, ejecuta:

```bash
python manage.py shell
```

```python
from django.contrib.auth.models import User
from rest_framework.authtoken.models import Token

user, created = User.objects.get_or_create(username='mcp_server')
token, created = Token.objects.get_or_create(user=user)
print(f"Token: {token.key}")
```

Copia el token y agrégalo a tu `.env`:

```bash
DJANGO_API_TOKEN=el-token-que-copiaste
```

### Paso 4: Implementar Endpoints en Django

Sigue la guía completa en [DJANGO_API_ENDPOINTS.md](DJANGO_API_ENDPOINTS.md) para implementar los endpoints REST necesarios en tu app Django.

Los endpoints requeridos son:
- `POST /api/query-builder/execute` - Ejecutar queries
- `POST /api/query-builder/table-info` - Info de tablas
- `GET /api/query-builder/list-tables` - Listar tablas

### Paso 5: Configurar Claude Code

El archivo de configuración ya está listo en `.claude/mcp_config.json`:

```json
{
  "mcpServers": {
    "kaiken-query-builder": {
      "command": "python",
      "args": ["${workspaceFolder}/mcp_server.py"]
    }
  }
}
```

**Nota:** `${workspaceFolder}` se resolverá automáticamente al directorio del repo, sin importar dónde lo clones.

### Paso 6: Probar la Configuración

1. **Asegúrate que Django esté corriendo:**
   ```bash
   # En tu proyecto Django
   python manage.py runserver
   ```

2. **Prueba el MCP Server manualmente:**
   ```bash
   source venv/bin/activate
   python mcp_server.py
   ```

   Deberías ver:
   ```
   🚀 MCP Server iniciado
   📡 Django API: http://localhost:8000/api/query-builder
   🔐 Token: ✅ Configurado
   📂 Directorio queries: /ruta/al/repo/queries
   ```

3. **Usa Claude Code:**
   Ahora puedes pedir a Claude que ejecute queries:

   ```
   Ejecuta: SELECT COUNT(*) FROM client
   ```

   O usar los reportes:

   ```
   Lista los reportes disponibles
   Ejecuta el reporte de facturas de venta
   ```

---

## 🛠️ Herramientas Disponibles

Una vez configurado, Claude tendrá acceso a estas herramientas:

### 1. execute_sql
Ejecuta queries SQL de solo lectura.

**Ejemplo:**
```
Claude: Ejecuta SELECT * FROM client WHERE status = 1 LIMIT 10
```

### 2. execute_query_file
Ejecuta queries desde archivos .sql

**Ejemplo:**
```
Claude: Ejecuta el archivo queries/Reportes Contables/04_facturas_venta_completo.sql
```

### 3. list_query_files
Lista archivos SQL disponibles

**Ejemplo:**
```
Claude: Lista los archivos de queries en "Reportes Contables"
```

### 4. get_table_info
Obtiene información detallada de una tabla

**Ejemplo:**
```
Claude: Dame información de la tabla client
```

### 5. list_tables
Lista todas las tablas de la base de datos

**Ejemplo:**
```
Claude: Lista todas las tablas que empiecen con "shop_"
```

### 6. get_available_reports
Lista los reportes contables disponibles

**Ejemplo:**
```
Claude: Qué reportes contables hay disponibles?
```

---

## 🔧 Configuración Avanzada

### Usar Diferentes Ambientes

Puedes tener múltiples configuraciones:

```bash
# Desarrollo
.env.development

# Producción
.env.production

# Testing
.env.test
```

Y cambiar según necesites:

```bash
cp .env.production .env
```

### Configurar Timeout

Si tus queries son muy lentas, ajusta el timeout en `mcp_server.py`:

```python
async with httpx.AsyncClient(timeout=60.0) as client:  # 60 segundos
```

### Logs y Debugging

El MCP Server imprime información al iniciar. Para debug más detallado, edita `mcp_server.py` y agrega:

```python
import logging
logging.basicConfig(level=logging.DEBUG)
```

---

## 🐛 Troubleshooting

### Error: "DJANGO_API_URL no configurada"

**Causa:** No se encontró el archivo `.env` o falta la variable.

**Solución:**
```bash
cp config/.env.example .env
nano .env  # Agregar DJANGO_API_URL
```

### Error: "Error llamando a Django API: Connection refused"

**Causa:** Django no está corriendo o la URL es incorrecta.

**Solución:**
1. Verifica que Django esté corriendo: `python manage.py runserver`
2. Confirma la URL en `.env`
3. Intenta acceder manualmente: `curl http://localhost:8000/api/query-builder/list-tables`

### Error: "Invalid token"

**Causa:** Token incorrecto o no configurado.

**Solución:**
1. Verifica el token en `.env`
2. Regenera el token en Django (ver Paso 3)
3. Confirma que el usuario `mcp_server` existe

### Claude no puede ejecutar queries

**Causa:** Claude Code no detecta el MCP Server.

**Solución:**
1. Verifica que `.claude/mcp_config.json` existe
2. Reinicia Claude Code
3. Verifica que el entorno virtual está activado
4. Prueba ejecutar `python mcp_server.py` manualmente

### Queries muy lentas

**Causa:** Queries complejas o tablas grandes.

**Solución:**
1. Usa `LIMIT` en tus queries
2. Aumenta el timeout en `mcp_server.py`
3. Optimiza las queries con índices

---

## 📊 Limitaciones

### Queries de Solo Lectura

El MCP Server **solo permite** queries de lectura:
- ✅ SELECT
- ✅ SHOW
- ✅ DESCRIBE
- ✅ EXPLAIN

Queries de escritura son **bloqueadas**:
- ❌ INSERT
- ❌ UPDATE
- ❌ DELETE
- ❌ DROP
- ❌ ALTER

Esto es por seguridad, para evitar modificaciones accidentales a la base de datos.

### Resultados Limitados

Para evitar saturar la interfaz, los resultados se limitan a las primeras 100 filas. Si tu query retorna más, solo verás las primeras 100.

Si necesitas todos los resultados, usa `execute_query_file` y exporta a JSON.

---

## 📚 Recursos

- [Documentación de endpoints Django](DJANGO_API_ENDPOINTS.md)
- [MCP SDK Documentation](https://github.com/anthropics/anthropic-mcp)
- [Reportes Contables](../queries/Reportes%20Contables/)

---

## 🔄 Actualizar Configuración

Si clonas el repo en otra ubicación:

1. **No necesitas cambiar nada** - `${workspaceFolder}` se ajusta automáticamente
2. Solo asegúrate de tener tu `.env` configurado
3. Instala dependencias: `pip install -r requirements.txt`

---

*Última actualización: 2025-12-12*
