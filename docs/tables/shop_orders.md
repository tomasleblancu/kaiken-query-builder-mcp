# shop_orders

> **Tipo:** Tabla

## Descripción

Módulo de e-commerce/tienda online

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 20

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | char(32) | NO | 🔑 PK | `-` |  | - |
| `order_number` | varchar(50) | NO | ✨ UNIQUE | `-` |  | - |
| `project_id` | char(32) | YES |  | `-` |  | - |
| `status` | varchar(30) | NO |  | `-` |  | - |
| `subtotal` | decimal(12,2) | NO |  | `-` |  | - |
| `tax_amount` | decimal(12,2) | YES |  | `-` |  | - |
| `total_amount` | decimal(12,2) | NO |  | `-` |  | - |
| `requested_delivery_date` | date | YES |  | `-` |  | - |
| `approved_at` | datetime(6) | YES |  | `-` |  | - |
| `notes` | longtext | YES |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `updated_at` | datetime(6) | NO |  | `-` |  | - |
| `approved_by_id` | char(32) | YES | 🔗 FK | `-` |  | - |
| `cost_center_id` | char(32) | YES | 🔗 FK | `-` |  | - |
| `organization_id` | char(32) | NO | 🔗 FK | `-` |  | - |
| `quote_id` | char(32) | YES | 🔗 FK | `-` |  | - |
| `requester_id` | char(32) | YES | 🔗 FK | `-` |  | - |
| `is_taken` | tinyint(1) | NO |  | `-` |  | - |
| `taken_at` | datetime(6) | YES |  | `-` |  | - |
| `taken_by_id` | char(32) | YES | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `approved_by_id` | [shop_user_profiles](shop_user_profiles.md) | `id` | shop_orders_approved_by_id_883b1ddd_fk_shop_user_profiles_id |
| `cost_center_id` | [shop_cost_centers](shop_cost_centers.md) | `id` | shop_orders_cost_center_id_e150ac43_fk_shop_cost_centers_id |
| `organization_id` | [shop_organizations](shop_organizations.md) | `id` | shop_orders_organization_id_1dae1d58_fk_shop_organizations_id |
| `quote_id` | [shop_quotes](shop_quotes.md) | `id` | shop_orders_quote_id_d7bbd54a_fk_shop_quotes_id |
| `requester_id` | [shop_user_profiles](shop_user_profiles.md) | `id` | shop_orders_requester_id_a6f68b0c_fk_shop_user_profiles_id |
| `taken_by_id` | [shop_user_profiles](shop_user_profiles.md) | `id` | shop_orders_taken_by_id_df87daf7_fk_shop_user_profiles_id |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [shop_authorization_tasks](shop_authorization_tasks.md) | `order_id` | shop_authorization_tasks_order_id_7de98aff_fk_shop_orders_id |
| [shop_documents](shop_documents.md) | `order_id` | shop_documents_order_id_964ea9c0_fk_shop_orders_id |
| [shop_dtes](shop_dtes.md) | `order_id` | shop_dtes_order_id_23410c33_fk_shop_orders_id |
| [shop_order_items](shop_order_items.md) | `order_id` | shop_order_items_order_id_e4e555d9_fk_shop_orders_id |
| [shop_order_status_history](shop_order_status_history.md) | `order_id` | shop_order_status_history_order_id_060e942f_fk_shop_orders_id |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| order_number | UNIQUE | `order_number` |
| shop_orders_approved_by_id_883b1ddd_fk_shop_user_profiles_id | INDEX | `approved_by_id` |
| shop_orders_cost_center_id_e150ac43_fk_shop_cost_centers_id | INDEX | `cost_center_id` |
| shop_orders_order_n_1f2ccd_idx | INDEX | `order_number` |
| shop_orders_organiz_495039_idx | INDEX | `organization_id,status` |
| shop_orders_quote_id_d7bbd54a_fk_shop_quotes_id | INDEX | `quote_id` |
| shop_orders_request_40be7b_idx | INDEX | `requester_id,status` |
| shop_orders_taken_by_id_df87daf7_fk_shop_user_profiles_id | INDEX | `taken_by_id` |

## Notas

- **Columnas de tiempo:** `requested_delivery_date`, `updated_at`

---

[← Volver al índice de tablas](../tables.md)
