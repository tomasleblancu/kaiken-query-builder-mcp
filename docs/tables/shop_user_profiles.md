# shop_user_profiles

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
| `rut` | varchar(12) | YES |  | `-` |  | - |
| `position` | varchar(100) | YES |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `updated_at` | datetime(6) | NO |  | `-` |  | - |
| `organization_id` | char(32) | NO | 🔗 FK | `-` |  | - |
| `app_user_id` | int | YES | ✨ UNIQUE | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `app_user_id` | [users](users.md) | `idUser` | shop_user_profiles_app_user_id_79f9b918_fk_users_idUser |
| `organization_id` | [shop_organizations](shop_organizations.md) | `id` | shop_user_profiles_organization_id_e35f72d1_fk_shop_orga |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [shop_attachments](shop_attachments.md) | `uploaded_by_id` | shop_attachments_uploaded_by_id_deb2e03c_fk_shop_user |
| [shop_carts](shop_carts.md) | `user_id` | shop_carts_user_id_b564f2e5_fk_shop_user_profiles_id |
| [shop_contract_cost_center_users](shop_contract_cost_center_users.md) | `user_id` | shop_contract_cost_c_user_id_ab8a8098_fk_shop_user |
| [shop_contract_users](shop_contract_users.md) | `user_id` | shop_contract_users_user_id_e27da490_fk_shop_user_profiles_id |
| [shop_export_jobs](shop_export_jobs.md) | `user_id` | shop_export_jobs_user_id_fb730f0b_fk_shop_user_profiles_id |
| [shop_import_jobs](shop_import_jobs.md) | `user_id` | shop_import_jobs_user_id_343e16ad_fk_shop_user_profiles_id |
| [shop_notifications](shop_notifications.md) | `user_id` | shop_notifications_user_id_6cef0527_fk_shop_user_profiles_id |
| [shop_order_status_history](shop_order_status_history.md) | `changed_by_id` | shop_order_status_hi_changed_by_id_d56f6219_fk_shop_user |
| [shop_orders](shop_orders.md) | `approved_by_id` | shop_orders_approved_by_id_883b1ddd_fk_shop_user_profiles_id |
| [shop_orders](shop_orders.md) | `requester_id` | shop_orders_requester_id_a6f68b0c_fk_shop_user_profiles_id |
| [shop_orders](shop_orders.md) | `taken_by_id` | shop_orders_taken_by_id_df87daf7_fk_shop_user_profiles_id |
| [shop_push_tokens](shop_push_tokens.md) | `user_id` | shop_push_tokens_user_id_7dc14ef4_fk_shop_user_profiles_id |
| [shop_rfqs](shop_rfqs.md) | `requester_id` | shop_rfqs_requester_id_8b6eceab_fk_shop_user_profiles_id |
| [shop_user_roles](shop_user_roles.md) | `user_id` | shop_user_roles_user_id_2f1e0068_fk_shop_user_profiles_id |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| app_user_id | UNIQUE | `app_user_id` |
| shop_user_profiles_organization_id_e35f72d1_fk_shop_orga | INDEX | `organization_id` |

## Notas

- **Columnas de tiempo:** `updated_at`

---

[← Volver al índice de tablas](../tables.md)
