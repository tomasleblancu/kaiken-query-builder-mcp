# shop_product_attribute_values

> **Tipo:** Tabla

## Descripción

Módulo de e-commerce/tienda online

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 5

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | char(32) | NO | 🔑 PK | `-` |  | - |
| `value` | longtext | NO |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `attribute_id` | char(32) | NO | 🔗 FK | `-` |  | - |
| `product_id` | char(32) | NO | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `attribute_id` | [shop_product_attributes](shop_product_attributes.md) | `id` | shop_product_attribu_attribute_id_939f39bf_fk_shop_prod |
| `product_id` | [shop_products](shop_products.md) | `id` | shop_product_attribu_product_id_bd673098_fk_shop_prod |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| shop_product_attribu_attribute_id_939f39bf_fk_shop_prod | INDEX | `attribute_id` |
| shop_product_attribute_v_product_id_attribute_id_37f56a29_uniq | UNIQUE | `product_id,attribute_id` |

## Notas


---

[← Volver al índice de tablas](../tables.md)
