# shop_product_variants

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
| `sku` | varchar(100) | NO | ✨ UNIQUE | `-` |  | - |
| `name` | varchar(255) | NO |  | `-` |  | - |
| `attributes` | json | YES |  | `-` |  | - |
| `price_adjustment` | decimal(10,2) | NO |  | `-` |  | - |
| `stock_quantity` | int | NO |  | `-` |  | - |
| `is_active` | tinyint(1) | NO |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `updated_at` | datetime(6) | NO |  | `-` |  | - |
| `product_id` | char(32) | NO | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `product_id` | [shop_products](shop_products.md) | `id` | shop_product_variants_product_id_5b2f12af_fk_shop_products_id |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [shop_cart_items](shop_cart_items.md) | `product_variant_id` | shop_cart_items_product_variant_id_193dac44_fk_shop_prod |
| [shop_order_items](shop_order_items.md) | `product_variant_id` | shop_order_items_product_variant_id_561bf9d7_fk_shop_prod |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| shop_product_variants_product_id_5b2f12af_fk_shop_products_id | INDEX | `product_id` |
| sku | UNIQUE | `sku` |

## Notas

- **Columnas de tiempo:** `updated_at`

---

[← Volver al índice de tablas](../tables.md)
