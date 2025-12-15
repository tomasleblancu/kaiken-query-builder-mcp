# django_session

> **Tipo:** Tabla

## Descripción

Tabla del framework Django

## Estadísticas

- **Filas aproximadas:** 9
- **Columnas:** 3

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `session_key` | varchar(40) | NO | 🔑 PK | `-` |  | - |
| `session_data` | longtext | NO |  | `-` |  | - |
| `expire_date` | datetime(6) | NO | 🔗 FK | `-` |  | - |

### Clave Primaria

- `session_key`

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| django_session_expire_date_a5c62663 | INDEX | `expire_date` |

## Notas

- **Columnas de tiempo:** `expire_date`

---

[← Volver al índice de tablas](../tables.md)
