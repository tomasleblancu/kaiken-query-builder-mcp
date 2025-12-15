# shop_contract_products

> **Tipo:** Tabla

## Descripción

Módulo de e-commerce/tienda online

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 7

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | char(32) | NO | 🔑 PK | `-` |  | - |
| `unit_price` | decimal(10,2) | NO |  | `-` |  | - |
| `notes` | longtext | YES |  | `-` |  | - |
| `is_active` | tinyint(1) | NO |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `contract_id` | char(32) | NO | 🔗 FK | `-` |  | - |
| `product_id` | char(32) | NO | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `contract_id` | [shop_contracts](shop_contracts.md) | `id` | shop_contract_products_contract_id_f70309df_fk_shop_contracts_id |
| `product_id` | [shop_products](shop_products.md) | `id` | shop_contract_products_product_id_7d9f560c_fk_shop_products_id |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| shop_contra_contrac_8d89bf_idx | INDEX | `contract_id,is_active` |
| shop_contract_products_contract_id_product_id_9d2c9094_uniq | UNIQUE | `contract_id,product_id` |
| shop_contract_products_product_id_7d9f560c_fk_shop_products_id | INDEX | `product_id` |

## Notas


---

[← Volver al índice de tablas](../tables.md)
