# catalog_searcher_google_shopping_result

> **Tipo:** Tabla

## Descripción

Tabla de datos del sistema

## Estadísticas

- **Filas aproximadas:** 1,007
- **Columnas:** 14

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | bigint | NO | 🔑 PK | `-` | auto_increment | - |
| `title` | varchar(500) | NO |  | `-` |  | - |
| `link` | varchar(1000) | YES |  | `-` |  | - |
| `source` | varchar(200) | YES |  | `-` |  | - |
| `image_url` | varchar(1000) | YES |  | `-` |  | - |
| `embedding` | json | YES |  | `-` |  | - |
| `similarity_score` | double | YES |  | `-` |  | - |
| `position` | int | NO |  | `-` |  | - |
| `raw_data` | json | YES |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `updated_at` | datetime(6) | NO |  | `-` |  | - |
| `product_id` | bigint | NO | 🔗 FK | `-` |  | - |
| `price_raw` | varchar(100) | YES |  | `-` |  | Precio original como string (ej: $12.990 CLP) |
| `price` | double | YES |  | `-` |  | Precio del producto (valor numérico) |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `product_id` | [catalog_searcher_product](catalog_searcher_product.md) | `id` | catalog_searcher_goo_product_id_ab6fbd6e_fk_catalog_s |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| catalog_sea_product_0eebb9_idx | INDEX | `product_id,position` |
| catalog_sea_product_360f6b_idx | INDEX | `product_id,similarity_score` |

## Notas

- **Auto-increment:** `id`
- **Columnas de tiempo:** `updated_at`

---

[← Volver al índice de tablas](../tables.md)
