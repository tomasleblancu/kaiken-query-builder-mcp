# shop_order_items

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
| `line_number` | int | NO |  | `-` |  | - |
| `quantity` | int | NO |  | `-` |  | - |
| `unit_price` | decimal(10,2) | NO |  | `-` |  | - |
| `line_total` | decimal(12,2) | NO |  | `-` |  | - |
| `notes` | longtext | YES |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `order_id` | char(32) | NO | 🔗 FK | `-` |  | - |
| `product_id` | char(32) | NO | 🔗 FK | `-` |  | - |
| `product_variant_id` | char(32) | YES | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `order_id` | [shop_orders](shop_orders.md) | `id` | shop_order_items_order_id_e4e555d9_fk_shop_orders_id |
| `product_id` | [shop_products](shop_products.md) | `id` | shop_order_items_product_id_1e1413c4_fk_shop_products_id |
| `product_variant_id` | [shop_product_variants](shop_product_variants.md) | `id` | shop_order_items_product_variant_id_561bf9d7_fk_shop_prod |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| shop_order_items_order_id_line_number_4c8a79e5_uniq | UNIQUE | `order_id,line_number` |
| shop_order_items_product_id_1e1413c4_fk_shop_products_id | INDEX | `product_id` |
| shop_order_items_product_variant_id_561bf9d7_fk_shop_prod | INDEX | `product_variant_id` |

## Notas


---

[← Volver al índice de tablas](../tables.md)
