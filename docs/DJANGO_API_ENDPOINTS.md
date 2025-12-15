# Endpoints Django para MCP Server

Este documento describe los endpoints REST que debes implementar en tu aplicación Django para que el MCP Server pueda ejecutar queries.

---

## 📋 Arquitectura

```
┌─────────────────┐         ┌──────────────────┐         ┌─────────────┐
│  Claude Code    │  stdio  │  MCP Server      │  HTTP   │  Django API │
│  (Cliente)      │◄────────│  (Query-builder) │◄────────│  (Backend)  │
└─────────────────┘         └──────────────────┘         └─────────────┘
                                                                 │
                                                                 ▼
                                                          ┌─────────────┐
                                                          │ KAIKEN_APP  │
                                                          │  Database   │
                                                          └─────────────┘
```

**Flujo:**
1. Claude Code se conecta al MCP Server (local, via stdio)
2. MCP Server recibe solicitudes y llama a endpoints Django via HTTP
3. Django ejecuta las queries contra KAIKEN_APP
4. Los resultados regresan al MCP Server
5. MCP Server formatea y devuelve a Claude

---

## 🚀 Implementación en Django

### Paso 1: Crear la App

```bash
python manage.py startapp query_builder_api
```

### Paso 2: Agregar a INSTALLED_APPS

En `settings.py`:

```python
INSTALLED_APPS = [
    # ... tus otras apps
    'rest_framework',
    'rest_framework.authtoken',
    'query_builder_api',
]

# Configuración de REST Framework
REST_FRAMEWORK = {
    'DEFAULT_AUTHENTICATION_CLASSES': [
        'rest_framework.authentication.TokenAuthentication',
    ],
    'DEFAULT_PERMISSION_CLASSES': [
        'rest_framework.permissions.IsAuthenticated',
    ],
}
```

### Paso 3: Instalar Django REST Framework

```bash
pip install djangorestframework
```

### Paso 4: Implementar las Vistas

Crea `query_builder_api/views.py`:

```python
from rest_framework.decorators import api_view, permission_classes
from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response
from rest_framework import status
from django.db import connection
import logging

logger = logging.getLogger(__name__)


def is_read_only_query(sql: str) -> bool:
    """Valida que la query sea de solo lectura"""
    sql_upper = sql.strip().upper()
    allowed_commands = ['SELECT', 'SHOW', 'DESCRIBE', 'DESC', 'EXPLAIN']
    return any(sql_upper.startswith(cmd) for cmd in allowed_commands)


@api_view(['POST'])
@permission_classes([IsAuthenticated])
def execute_query(request):
    """
    Ejecuta una query SQL de solo lectura

    POST /api/query-builder/execute
    Body: {"sql": "SELECT * FROM client LIMIT 10"}
    """
    sql = request.data.get('sql', '').strip()

    if not sql:
        return Response({
            'success': False,
            'error': 'Query SQL requerida'
        }, status=status.HTTP_400_BAD_REQUEST)

    # Validar que sea query de lectura
    if not is_read_only_query(sql):
        return Response({
            'success': False,
            'error': 'Solo se permiten queries de lectura (SELECT, SHOW, DESCRIBE, EXPLAIN)'
        }, status=status.HTTP_403_FORBIDDEN)

    try:
        with connection.cursor() as cursor:
            cursor.execute(sql)

            if cursor.description:
                # Query que retorna resultados
                columns = [col[0] for col in cursor.description]
                rows = []

                for row in cursor.fetchall():
                    row_dict = {}
                    for idx, col_name in enumerate(columns):
                        value = row[idx]
                        # Convertir tipos no serializables
                        if hasattr(value, 'isoformat'):
                            value = value.isoformat()
                        row_dict[col_name] = value
                    rows.append(row_dict)

                return Response({
                    'success': True,
                    'rows': rows,
                    'row_count': len(rows),
                    'columns': columns
                })
            else:
                # Query sin resultados (ej: SHOW, DESCRIBE)
                return Response({
                    'success': True,
                    'message': 'Query ejecutada exitosamente'
                })

    except Exception as e:
        logger.error(f"Error ejecutando query: {str(e)}")
        return Response({
            'success': False,
            'error': str(e)
        }, status=status.HTTP_500_INTERNAL_SERVER_ERROR)


@api_view(['POST'])
@permission_classes([IsAuthenticated])
def get_table_info(request):
    """
    Obtiene información de una tabla

    POST /api/query-builder/table-info
    Body: {"table_name": "client"}
    """
    table_name = request.data.get('table_name', '').strip()

    if not table_name:
        return Response({
            'success': False,
            'error': 'Nombre de tabla requerido'
        }, status=status.HTTP_400_BAD_REQUEST)

    try:
        with connection.cursor() as cursor:
            # Obtener estructura de la tabla
            cursor.execute(f"DESCRIBE {table_name}")
            columns = [col[0] for col in cursor.description]
            structure = [dict(zip(columns, row)) for row in cursor.fetchall()]

            # Obtener índices
            cursor.execute(f"SHOW INDEX FROM {table_name}")
            columns = [col[0] for col in cursor.description]
            indexes = [dict(zip(columns, row)) for row in cursor.fetchall()]

            # Contar registros
            cursor.execute(f"SELECT COUNT(*) FROM {table_name}")
            row_count = cursor.fetchone()[0]

            return Response({
                'success': True,
                'data': {
                    'table_name': table_name,
                    'structure': structure,
                    'indexes': indexes,
                    'row_count': row_count
                }
            })

    except Exception as e:
        logger.error(f"Error obteniendo info de tabla: {str(e)}")
        return Response({
            'success': False,
            'error': str(e)
        }, status=status.HTTP_500_INTERNAL_SERVER_ERROR)


@api_view(['POST', 'GET'])
@permission_classes([IsAuthenticated])
def list_tables(request):
    """
    Lista todas las tablas de la base de datos

    GET /api/query-builder/list-tables
    POST /api/query-builder/list-tables
    Body (opcional): {"pattern": "client%"}
    """
    pattern = None
    if request.method == 'POST':
        pattern = request.data.get('pattern')

    try:
        with connection.cursor() as cursor:
            if pattern:
                cursor.execute(f"SHOW TABLES LIKE '{pattern}'")
            else:
                cursor.execute("SHOW TABLES")

            tables = [row[0] for row in cursor.fetchall()]

            return Response({
                'success': True,
                'tables': tables,
                'count': len(tables)
            })

    except Exception as e:
        logger.error(f"Error listando tablas: {str(e)}")
        return Response({
            'success': False,
            'error': str(e)
        }, status=status.HTTP_500_INTERNAL_SERVER_ERROR)
```

### Paso 5: Configurar URLs

Crea `query_builder_api/urls.py`:

```python
from django.urls import path
from . import views

urlpatterns = [
    path('execute', views.execute_query, name='execute_query'),
    path('table-info', views.get_table_info, name='table_info'),
    path('list-tables', views.list_tables, name='list_tables'),
]
```

En tu `urls.py` principal:

```python
from django.urls import path, include

urlpatterns = [
    # ... tus otras URLs
    path('api/query-builder/', include('query_builder_api.urls')),
]
```

### Paso 6: Crear Token de Autenticación

```bash
python manage.py shell
```

```python
from django.contrib.auth.models import User
from rest_framework.authtoken.models import Token

# Crear o obtener usuario para el MCP
user, created = User.objects.get_or_create(username='mcp_server')
token, created = Token.objects.get_or_create(user=user)
print(f"Token: {token.key}")
```

Guarda este token en tu `.env`:

```bash
DJANGO_API_TOKEN=el-token-generado
```

---

## 📡 Endpoints Disponibles

### 1. Ejecutar Query

**Endpoint:** `POST /api/query-builder/execute`

**Headers:**
```
Authorization: Token tu-token-aqui
Content-Type: application/json
```

**Body:**
```json
{
  "sql": "SELECT * FROM client LIMIT 10"
}
```

**Response:**
```json
{
  "success": true,
  "rows": [...],
  "row_count": 10,
  "columns": ["idClient", "nameClient", "rut", ...]
}
```

### 2. Información de Tabla

**Endpoint:** `POST /api/query-builder/table-info`

**Body:**
```json
{
  "table_name": "client"
}
```

**Response:**
```json
{
  "success": true,
  "data": {
    "table_name": "client",
    "structure": [...],
    "indexes": [...],
    "row_count": 87875
  }
}
```

### 3. Listar Tablas

**Endpoint:** `GET /api/query-builder/list-tables`
**Endpoint:** `POST /api/query-builder/list-tables`

**Body (opcional):**
```json
{
  "pattern": "client%"
}
```

**Response:**
```json
{
  "success": true,
  "tables": ["client", "clientAddress", ...],
  "count": 275
}
```

---

## 🔒 Seguridad

### Rate Limiting

Agrega rate limiting en `settings.py`:

```python
REST_FRAMEWORK = {
    'DEFAULT_THROTTLE_CLASSES': [
        'rest_framework.throttling.UserRateThrottle'
    ],
    'DEFAULT_THROTTLE_RATES': {
        'user': '100/hour'
    }
}
```

### Logging

Configura logging para auditoría:

```python
LOGGING = {
    'version': 1,
    'disable_existing_loggers': False,
    'handlers': {
        'file': {
            'level': 'INFO',
            'class': 'logging.FileHandler',
            'filename': 'query_builder_api.log',
        },
    },
    'loggers': {
        'query_builder_api': {
            'handlers': ['file'],
            'level': 'INFO',
            'propagate': True,
        },
    },
}
```

### Validación Adicional

Agrega validación de queries peligrosas:

```python
def validate_safe_query(sql: str) -> tuple[bool, str]:
    """Valida que la query sea segura"""
    sql_upper = sql.upper()

    # Palabras prohibidas
    forbidden = ['DROP', 'DELETE', 'UPDATE', 'INSERT', 'TRUNCATE',
                 'ALTER', 'CREATE', 'GRANT', 'REVOKE']

    for word in forbidden:
        if word in sql_upper:
            return False, f"Palabra prohibida encontrada: {word}"

    return True, ""
```

---

## 🧪 Probar los Endpoints

### Con cURL

```bash
# Ejecutar query
curl -X POST http://localhost:8000/api/query-builder/execute \
  -H "Authorization: Token tu-token" \
  -H "Content-Type: application/json" \
  -d '{"sql": "SELECT COUNT(*) FROM client"}'

# Listar tablas
curl -X GET http://localhost:8000/api/query-builder/list-tables \
  -H "Authorization: Token tu-token"

# Info de tabla
curl -X POST http://localhost:8000/api/query-builder/table-info \
  -H "Authorization: Token tu-token" \
  -H "Content-Type: application/json" \
  -d '{"table_name": "client"}'
```

### Con Python

```python
import requests

TOKEN = "tu-token"
BASE_URL = "http://localhost:8000/api/query-builder"

headers = {
    "Authorization": f"Token {TOKEN}",
    "Content-Type": "application/json"
}

# Ejecutar query
response = requests.post(
    f"{BASE_URL}/execute",
    headers=headers,
    json={"sql": "SELECT COUNT(*) FROM client"}
)
print(response.json())
```

---

## 🐛 Troubleshooting

### Error: "Invalid token"

**Solución:**
1. Verifica que el token en `.env` sea correcto
2. Confirma que el usuario existe en Django
3. Regenera el token si es necesario

### Error: "Connection refused"

**Solución:**
1. Verifica que Django esté corriendo
2. Confirma la URL en `DJANGO_API_URL`
3. Verifica firewall/red

### Queries muy lentas

**Solución:**
1. Agrega timeout en las vistas Django
2. Implementa paginación para queries grandes
3. Usa LIMIT en las queries

---

*Última actualización: 2025-12-12*
