# shop_budgets

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
| `name` | varchar(255) | NO |  | `-` |  | - |
| `amount` | decimal(12,2) | NO |  | `-` |  | - |
| `spent_amount` | decimal(12,2) | NO |  | `-` |  | - |
| `period_start` | date | NO |  | `-` |  | - |
| `period_end` | date | NO |  | `-` |  | - |
| `is_active` | tinyint(1) | NO |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `updated_at` | datetime(6) | NO |  | `-` |  | - |
| `cost_center_id` | char(32) | NO | 🔗 FK | `-` |  | - |
| `is_cumulative` | tinyint(1) | NO |  | `-` |  | - |
| `parent_budget_id` | char(32) | YES | 🔗 FK | `-` |  | - |
| `recurrence_type` | varchar(20) | NO |  | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `cost_center_id` | [shop_cost_centers](shop_cost_centers.md) | `id` | shop_budgets_cost_center_id_0ea75b1a_fk_shop_cost_centers_id |
| `parent_budget_id` | [shop_budgets](shop_budgets.md) | `id` | shop_budgets_parent_budget_id_c0c033e6_fk_shop_budgets_id |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [shop_budgets](shop_budgets.md) | `parent_budget_id` | shop_budgets_parent_budget_id_c0c033e6_fk_shop_budgets_id |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| shop_budget_cost_ce_fbf778_idx | INDEX | `cost_center_id,period_start,period_end` |
| shop_budgets_parent_budget_id_c0c033e6_fk_shop_budgets_id | INDEX | `parent_budget_id` |

## Notas

- **Columnas de tiempo:** `updated_at`

---

[← Volver al índice de tablas](../tables.md)
