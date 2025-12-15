# shop_audit_logs

> **Tipo:** Tabla

## Descripción

Módulo de e-commerce/tienda online

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 10

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | char(32) | NO | 🔑 PK | `-` |  | - |
| `user` | char(32) | YES | 🔗 FK | `-` |  | - |
| `action` | varchar(20) | NO |  | `-` |  | - |
| `table_name` | varchar(100) | NO | 🔗 FK | `-` |  | - |
| `record_id` | varchar(100) | YES |  | `-` |  | - |
| `old_values` | json | YES |  | `-` |  | - |
| `new_values` | json | YES |  | `-` |  | - |
| `ip_address` | char(39) | YES |  | `-` |  | - |
| `user_agent` | longtext | YES |  | `-` |  | - |
| `created_at` | datetime(6) | NO | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| shop_audit__created_8415af_idx | INDEX | `created_at` |
| shop_audit__table_n_fd7841_idx | INDEX | `table_name,record_id` |
| shop_audit__user_07f5d4_idx | INDEX | `user,action` |

## Notas


---

[← Volver al índice de tablas](../tables.md)
