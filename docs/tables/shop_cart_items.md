# shop_cart_items

> **Tipo:** Tabla

## Descripción

Módulo de e-commerce/tienda online

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 9

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | char(32) | NO | 🔑 PK | `-` |  | - |
| `quantity` | int | NO |  | `-` |  | - |
| `unit_price` | decimal(10,2) | NO |  | `-` |  | - |
| `notes` | longtext | YES |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `updated_at` | datetime(6) | NO |  | `-` |  | - |
| `cart_id` | char(32) | NO | 🔗 FK | `-` |  | - |
| `product_id` | char(32) | NO | 🔗 FK | `-` |  | - |
| `product_variant_id` | char(32) | YES | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `cart_id` | [shop_carts](shop_carts.md) | `id` | shop_cart_items_cart_id_febddc96_fk_shop_carts_id |
| `product_id` | [shop_products](shop_products.md) | `id` | shop_cart_items_product_id_6be6205f_fk_shop_products_id |
| `product_variant_id` | [shop_product_variants](shop_product_variants.md) | `id` | shop_cart_items_product_variant_id_193dac44_fk_shop_prod |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| shop_cart_items_cart_id_product_id_produ_4b68ffdb_uniq | UNIQUE | `cart_id,product_id,product_variant_id` |
| shop_cart_items_product_id_6be6205f_fk_shop_products_id | INDEX | `product_id` |
| shop_cart_items_product_variant_id_193dac44_fk_shop_prod | INDEX | `product_variant_id` |

## Notas

- **Columnas de tiempo:** `updated_at`

---

[← Volver al índice de tablas](../tables.md)
