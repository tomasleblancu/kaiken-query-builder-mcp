# catalog_searcher_product

> **Tipo:** Tabla

## Descripción

Gestión de productos

## Estadísticas

- **Filas aproximadas:** 765
- **Columnas:** 9

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | bigint | NO | 🔑 PK | `-` | auto_increment | - |
| `original_name` | varchar(500) | NO | ✨ UNIQUE | `-` |  | - |
| `standardized_name` | varchar(500) | YES |  | `-` |  | - |
| `embedding` | json | YES |  | `-` |  | - |
| `processed_at` | datetime(6) | YES |  | `-` |  | - |
| `status` | varchar(50) | NO | 🔗 FK | `-` |  | - |
| `error_message` | longtext | YES |  | `-` |  | - |
| `created_at` | datetime(6) | NO | 🔗 FK | `-` |  | - |
| `updated_at` | datetime(6) | NO |  | `-` |  | - |

### Clave Primaria

- `id`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [catalog_searcher_google_shopping_result](catalog_searcher_google_shopping_result.md) | `product_id` | catalog_searcher_goo_product_id_ab6fbd6e_fk_catalog_s |
| [catalog_searcher_search_session_products](catalog_searcher_search_session_products.md) | `product_id` | catalog_searcher_sea_product_id_8c0a3f8c_fk_catalog_s |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| catalog_sea_created_8d0d60_idx | INDEX | `created_at` |
| catalog_sea_status_399b88_idx | INDEX | `status` |
| catalog_searcher_product_original_name_440eaed1_uniq | UNIQUE | `original_name` |
| unique_product_name | UNIQUE | `original_name` |

## Notas

- **Auto-increment:** `id`
- **Columnas de tiempo:** `updated_at`

---

[← Volver al índice de tablas](../tables.md)
