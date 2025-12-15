# shop_organizations

> **Tipo:** Tabla

## Descripción

Módulo de e-commerce/tienda online

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 11

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | char(32) | NO | 🔑 PK | `-` |  | - |
| `rut` | varchar(12) | NO | ✨ UNIQUE | `-` |  | - |
| `business_name` | varchar(255) | NO |  | `-` |  | - |
| `trade_name` | varchar(255) | YES |  | `-` |  | - |
| `email` | varchar(254) | YES |  | `-` |  | - |
| `phone` | varchar(20) | YES |  | `-` |  | - |
| `website` | varchar(200) | YES |  | `-` |  | - |
| `is_active` | tinyint(1) | NO |  | `-` |  | - |
| `price_display_with_tax` | tinyint(1) | NO |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `updated_at` | datetime(6) | NO |  | `-` |  | - |

### Clave Primaria

- `id`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [shop_addresses](shop_addresses.md) | `organization_id` | shop_addresses_organization_id_dd99bf88_fk_shop_organizations_id |
| [shop_authorization_workflows](shop_authorization_workflows.md) | `organization_id` | shop_authorization_w_organization_id_531efffe_fk_shop_orga |
| [shop_contracts](shop_contracts.md) | `organization_id` | shop_contracts_organization_id_7fb8fd60_fk_shop_organizations_id |
| [shop_cost_centers](shop_cost_centers.md) | `organization_id` | shop_cost_centers_organization_id_ff4ffef6_fk_shop_orga |
| [shop_documents](shop_documents.md) | `organization_id` | shop_documents_organization_id_0d23818c_fk_shop_organizations_id |
| [shop_dtes](shop_dtes.md) | `organization_id` | shop_dtes_organization_id_977277c7_fk_shop_organizations_id |
| [shop_orders](shop_orders.md) | `organization_id` | shop_orders_organization_id_1dae1d58_fk_shop_organizations_id |
| [shop_rfqs](shop_rfqs.md) | `organization_id` | shop_rfqs_organization_id_083c1a2a_fk_shop_organizations_id |
| [shop_user_profiles](shop_user_profiles.md) | `organization_id` | shop_user_profiles_organization_id_e35f72d1_fk_shop_orga |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| rut | UNIQUE | `rut` |

## Notas

- **Columnas de tiempo:** `updated_at`

---

[← Volver al índice de tablas](../tables.md)
