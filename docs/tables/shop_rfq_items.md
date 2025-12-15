# shop_rfq_items

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
| `product_description` | varchar(500) | NO |  | `-` |  | - |
| `quantity` | int | NO |  | `-` |  | - |
| `unit_of_measure` | varchar(20) | YES |  | `-` |  | - |
| `specifications` | longtext | YES |  | `-` |  | - |
| `notes` | longtext | YES |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `product_id` | char(32) | YES | 🔗 FK | `-` |  | - |
| `rfq_id` | char(32) | NO | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `product_id` | [shop_products](shop_products.md) | `id` | shop_rfq_items_product_id_744836cb_fk_shop_products_id |
| `rfq_id` | [shop_rfqs](shop_rfqs.md) | `id` | shop_rfq_items_rfq_id_17193645_fk_shop_rfqs_id |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [shop_quote_items](shop_quote_items.md) | `rfq_item_id` | shop_quote_items_rfq_item_id_6ca94cb4_fk_shop_rfq_items_id |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| shop_rfq_items_product_id_744836cb_fk_shop_products_id | INDEX | `product_id` |
| shop_rfq_items_rfq_id_line_number_05d62b6a_uniq | UNIQUE | `rfq_id,line_number` |

## Notas


---

[← Volver al índice de tablas](../tables.md)
