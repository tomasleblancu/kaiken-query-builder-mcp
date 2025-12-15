# shop_quote_items

> **Tipo:** Tabla

## Descripción

Módulo de e-commerce/tienda online

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 12

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | char(32) | NO | 🔑 PK | `-` |  | - |
| `line_number` | int | NO |  | `-` |  | - |
| `product_description` | varchar(500) | NO |  | `-` |  | - |
| `quantity` | int | NO |  | `-` |  | - |
| `unit_price` | decimal(10,2) | NO |  | `-` |  | - |
| `line_total` | decimal(12,2) | NO |  | `-` |  | - |
| `delivery_time_days` | int | YES |  | `-` |  | - |
| `notes` | longtext | YES |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `product_id` | char(32) | YES | 🔗 FK | `-` |  | - |
| `quote_id` | char(32) | NO | 🔗 FK | `-` |  | - |
| `rfq_item_id` | char(32) | YES | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `product_id` | [shop_products](shop_products.md) | `id` | shop_quote_items_product_id_5866a46b_fk_shop_products_id |
| `quote_id` | [shop_quotes](shop_quotes.md) | `id` | shop_quote_items_quote_id_2df3f880_fk_shop_quotes_id |
| `rfq_item_id` | [shop_rfq_items](shop_rfq_items.md) | `id` | shop_quote_items_rfq_item_id_6ca94cb4_fk_shop_rfq_items_id |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| shop_quote_items_product_id_5866a46b_fk_shop_products_id | INDEX | `product_id` |
| shop_quote_items_quote_id_line_number_475e235f_uniq | UNIQUE | `quote_id,line_number` |
| shop_quote_items_rfq_item_id_6ca94cb4_fk_shop_rfq_items_id | INDEX | `rfq_item_id` |

## Notas


---

[← Volver al índice de tablas](../tables.md)
