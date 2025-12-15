# shop_products

> **Tipo:** Tabla

## Descripción

Módulo de e-commerce/tienda online

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 25

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | char(32) | NO | 🔑 PK | `-` |  | - |
| `sku` | varchar(100) | NO | 🔗 FK | `-` |  | - |
| `name` | varchar(255) | NO |  | `-` |  | - |
| `short_description` | longtext | YES |  | `-` |  | - |
| `description` | longtext | YES |  | `-` |  | - |
| `brand` | varchar(100) | YES |  | `-` |  | - |
| `model` | varchar(100) | YES |  | `-` |  | - |
| `unit_of_measure` | varchar(20) | YES |  | `-` |  | - |
| `unit_price` | decimal(10,2) | YES |  | `-` |  | - |
| `image_url` | varchar(200) | YES |  | `-` |  | - |
| `is_active` | tinyint(1) | NO |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `updated_at` | datetime(6) | NO |  | `-` |  | - |
| `category_id` | char(32) | YES | 🔗 FK | `-` |  | - |
| `contract_id` | char(32) | NO | 🔗 FK | `-` |  | - |
| `quote_notes` | longtext | YES |  | `-` |  | - |
| `quote_status` | varchar(20) | YES |  | `-` |  | - |
| `requested_by` | varchar(255) | YES |  | `-` |  | - |
| `is_quote_product` | tinyint(1) | NO |  | `-` |  | - |
| `custom_field_1` | varchar(255) | YES |  | `-` |  | - |
| `custom_field_2` | varchar(255) | YES |  | `-` |  | - |
| `custom_field_3` | varchar(255) | YES |  | `-` |  | - |
| `custom_field_4` | longtext | YES |  | `-` |  | - |
| `custom_field_5` | longtext | YES |  | `-` |  | - |
| `selected_tender_product_id` | int | YES | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `category_id` | [shop_categories](shop_categories.md) | `id` | shop_products_category_id_ba6920ae_fk_shop_categories_id |
| `contract_id` | [shop_contracts](shop_contracts.md) | `id` | shop_products_contract_id_c232a050_fk_shop_contracts_id |
| `selected_tender_product_id` | [selectedTenderProduct](selectedTenderProduct.md) | `idSelectedTenderProduct` | shop_products_selected_tender_prod_1d6f2a0b_fk_selectedT |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [shop_cart_items](shop_cart_items.md) | `product_id` | shop_cart_items_product_id_6be6205f_fk_shop_products_id |
| [shop_contract_products](shop_contract_products.md) | `product_id` | shop_contract_products_product_id_7d9f560c_fk_shop_products_id |
| [shop_order_items](shop_order_items.md) | `product_id` | shop_order_items_product_id_1e1413c4_fk_shop_products_id |
| [shop_product_attribute_values](shop_product_attribute_values.md) | `product_id` | shop_product_attribu_product_id_bd673098_fk_shop_prod |
| [shop_product_media](shop_product_media.md) | `product_id` | shop_product_media_product_id_c7e36014_fk_shop_products_id |
| [shop_product_variants](shop_product_variants.md) | `product_id` | shop_product_variants_product_id_5b2f12af_fk_shop_products_id |
| [shop_quote_items](shop_quote_items.md) | `product_id` | shop_quote_items_product_id_5866a46b_fk_shop_products_id |
| [shop_rfq_items](shop_rfq_items.md) | `product_id` | shop_rfq_items_product_id_744836cb_fk_shop_products_id |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| shop_produc_categor_fafe44_idx | INDEX | `category_id,is_active` |
| shop_produc_sku_e245b2_idx | INDEX | `sku` |
| shop_products_contract_id_c232a050_fk_shop_contracts_id | INDEX | `contract_id` |
| shop_products_selected_tender_prod_1d6f2a0b_fk_selectedT | INDEX | `selected_tender_product_id` |
| shop_products_sku_contract_id_88c01da4_uniq | UNIQUE | `sku,contract_id` |

## Notas

- **Columnas de tiempo:** `updated_at`

---

[← Volver al índice de tablas](../tables.md)
