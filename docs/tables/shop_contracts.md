# shop_contracts

> **Tipo:** Tabla

## Descripción

Módulo de e-commerce/tienda online

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 13

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | char(32) | NO | 🔑 PK | `-` |  | - |
| `contract_number` | varchar(50) | NO | ✨ UNIQUE | `-` |  | - |
| `name` | varchar(255) | NO |  | `-` |  | - |
| `description` | longtext | YES |  | `-` |  | - |
| `start_date` | date | NO | 🔗 FK | `-` |  | - |
| `end_date` | date | NO |  | `-` |  | - |
| `status` | varchar(20) | NO |  | `-` |  | - |
| `terms_and_conditions` | longtext | YES |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `updated_at` | datetime(6) | NO |  | `-` |  | - |
| `organization_id` | char(32) | NO | 🔗 FK | `-` |  | - |
| `tender_id` | int | YES | 🔗 FK | `-` |  | - |
| `total_budget` | decimal(15,2) | NO |  | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `organization_id` | [shop_organizations](shop_organizations.md) | `id` | shop_contracts_organization_id_7fb8fd60_fk_shop_organizations_id |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [shop_contract_cost_centers](shop_contract_cost_centers.md) | `contract_id` | shop_contract_cost_c_contract_id_7ddd9734_fk_shop_cont |
| [shop_contract_products](shop_contract_products.md) | `contract_id` | shop_contract_products_contract_id_f70309df_fk_shop_contracts_id |
| [shop_contract_users](shop_contract_users.md) | `contract_id` | shop_contract_users_contract_id_a0837bdf_fk_shop_contracts_id |
| [shop_cost_center_custom_field_configs](shop_cost_center_custom_field_configs.md) | `contract_id` | shop_cost_center_cus_contract_id_87ea9af9_fk_shop_cont |
| [shop_cost_centers](shop_cost_centers.md) | `contract_id` | shop_cost_centers_contract_id_9f07fc5a_fk_shop_contracts_id |
| [shop_custom_field_configs](shop_custom_field_configs.md) | `contract_id` | shop_custom_field_co_contract_id_710319b2_fk_shop_cont |
| [shop_products](shop_products.md) | `contract_id` | shop_products_contract_id_c232a050_fk_shop_contracts_id |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| contract_number | UNIQUE | `contract_number` |
| shop_contra_organiz_012b99_idx | INDEX | `organization_id,status` |
| shop_contra_start_d_6542ed_idx | INDEX | `start_date,end_date` |
| shop_contracts_tender_id_787c4697_fk_kaiken_lab_rawlicitacion_id | INDEX | `tender_id` |

## Notas

- **Columnas de tiempo:** `start_date`, `end_date`, `updated_at`

---

[← Volver al índice de tablas](../tables.md)
