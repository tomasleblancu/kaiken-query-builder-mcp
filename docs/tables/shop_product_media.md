# shop_product_media

> **Tipo:** Tabla

## Descripción

Módulo de e-commerce/tienda online

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 8

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | char(32) | NO | 🔑 PK | `-` |  | - |
| `file_path` | varchar(500) | NO |  | `-` |  | - |
| `file_type` | varchar(20) | NO |  | `-` |  | - |
| `title` | varchar(255) | YES |  | `-` |  | - |
| `alt_text` | varchar(255) | YES |  | `-` |  | - |
| `sort_order` | int | NO |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `product_id` | char(32) | NO | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `product_id` | [shop_products](shop_products.md) | `id` | shop_product_media_product_id_c7e36014_fk_shop_products_id |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| shop_product_media_product_id_c7e36014_fk_shop_products_id | INDEX | `product_id` |

## Notas


---

[← Volver al índice de tablas](../tables.md)
