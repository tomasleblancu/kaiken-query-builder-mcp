# shop_contract_cost_centers

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
| `budget_amount` | decimal(12,2) | NO |  | `-` |  | - |
| `spent_amount` | decimal(12,2) | NO |  | `-` |  | - |
| `notes` | longtext | YES |  | `-` |  | - |
| `is_active` | tinyint(1) | NO |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `updated_at` | datetime(6) | NO |  | `-` |  | - |
| `contract_id` | char(32) | NO | 🔗 FK | `-` |  | - |
| `cost_center_id` | char(32) | NO | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `contract_id` | [shop_contracts](shop_contracts.md) | `id` | shop_contract_cost_c_contract_id_7ddd9734_fk_shop_cont |
| `cost_center_id` | [shop_cost_centers](shop_cost_centers.md) | `id` | shop_contract_cost_c_cost_center_id_29b98978_fk_shop_cost |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [shop_contract_cost_center_users](shop_contract_cost_center_users.md) | `contract_cost_center_id` | shop_contract_cost_c_contract_cost_center_09030b74_fk_shop_cont |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| shop_contract_cost_c_cost_center_id_29b98978_fk_shop_cost | INDEX | `cost_center_id` |
| shop_contract_cost_cente_contract_id_cost_center__c324f5c8_uniq | UNIQUE | `contract_id,cost_center_id` |

## Notas

- **Columnas de tiempo:** `updated_at`

---

[← Volver al índice de tablas](../tables.md)
