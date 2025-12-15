# catalog_searcher_search_session

> **Tipo:** Tabla

## Descripción

Gestión de estados/status

## Estadísticas

- **Filas aproximadas:** 3
- **Columnas:** 10

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | bigint | NO | 🔑 PK | `-` | auto_increment | - |
| `name` | varchar(200) | YES |  | `-` |  | - |
| `total_products` | int | NO |  | `-` |  | - |
| `completed_products` | int | NO |  | `-` |  | - |
| `failed_products` | int | NO |  | `-` |  | - |
| `status` | varchar(50) | NO |  | `-` |  | - |
| `started_at` | datetime(6) | YES |  | `-` |  | - |
| `completed_at` | datetime(6) | YES |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `updated_at` | datetime(6) | NO |  | `-` |  | - |

### Clave Primaria

- `id`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [catalog_searcher_search_session_products](catalog_searcher_search_session_products.md) | `searchsession_id` | catalog_searcher_sea_searchsession_id_6093aaef_fk_catalog_s |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|

## Notas

- **Auto-increment:** `id`
- **Columnas de tiempo:** `updated_at`

---

[← Volver al índice de tablas](../tables.md)
