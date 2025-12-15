# shop_cost_centers

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
| `code` | varchar(50) | NO |  | `-` |  | - |
| `name` | varchar(255) | NO |  | `-` |  | - |
| `description` | longtext | YES |  | `-` |  | - |
| `is_active` | tinyint(1) | NO |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `updated_at` | datetime(6) | NO |  | `-` |  | - |
| `organization_id` | char(32) | NO | 🔗 FK | `-` |  | - |
| `contract_id` | char(32) | NO | 🔗 FK | `-` |  | - |
| `budget_amount` | decimal(12,2) | NO |  | `-` |  | - |
| `spent_amount` | decimal(12,2) | NO |  | `-` |  | - |
| `custom_field_1` | varchar(255) | YES |  | `-` |  | - |
| `custom_field_2` | varchar(255) | YES |  | `-` |  | - |
| `custom_field_3` | varchar(255) | YES |  | `-` |  | - |
| `custom_field_4` | longtext | YES |  | `-` |  | - |
| `custom_field_5` | longtext | YES |  | `-` |  | - |
| `budget_is_cumulative` | tinyint(1) | NO |  | `-` |  | - |
| `budget_period` | varchar(20) | NO |  | `-` |  | - |
| `program` | varchar(255) | YES |  | `-` |  | - |
| `purchase_order_reference` | varchar(100) | YES |  | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `contract_id` | [shop_contracts](shop_contracts.md) | `id` | shop_cost_centers_contract_id_9f07fc5a_fk_shop_contracts_id |
| `organization_id` | [shop_organizations](shop_organizations.md) | `id` | shop_cost_centers_organization_id_ff4ffef6_fk_shop_orga |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [shop_budgets](shop_budgets.md) | `cost_center_id` | shop_budgets_cost_center_id_0ea75b1a_fk_shop_cost_centers_id |
| [shop_contract_cost_centers](shop_contract_cost_centers.md) | `cost_center_id` | shop_contract_cost_c_cost_center_id_29b98978_fk_shop_cost |
| [shop_orders](shop_orders.md) | `cost_center_id` | shop_orders_cost_center_id_e150ac43_fk_shop_cost_centers_id |
| [shop_rfqs](shop_rfqs.md) | `cost_center_id` | shop_rfqs_cost_center_id_81ed9e0c_fk_shop_cost_centers_id |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| shop_cost_centers_contract_id_9f07fc5a_fk_shop_contracts_id | INDEX | `contract_id` |
| shop_cost_centers_organization_id_contract_id_code_49c8bcf5_uniq | UNIQUE | `organization_id,contract_id,code` |
| shop_cost_centers_organization_id_ff4ffef6 | INDEX | `organization_id` |

## Notas

- **Columnas de tiempo:** `updated_at`

---

[← Volver al índice de tablas](../tables.md)
