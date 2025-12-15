# shop_contract_cost_center_users

> **Tipo:** Tabla

## Descripción

Módulo de e-commerce/tienda online

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 6

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | char(32) | NO | 🔑 PK | `-` |  | - |
| `can_approve` | tinyint(1) | NO |  | `-` |  | - |
| `is_active` | tinyint(1) | NO |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `contract_cost_center_id` | char(32) | NO | 🔗 FK | `-` |  | - |
| `user_id` | char(32) | NO | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `contract_cost_center_id` | [shop_contract_cost_centers](shop_contract_cost_centers.md) | `id` | shop_contract_cost_c_contract_cost_center_09030b74_fk_shop_cont |
| `user_id` | [shop_user_profiles](shop_user_profiles.md) | `id` | shop_contract_cost_c_user_id_ab8a8098_fk_shop_user |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| shop_contract_cost_c_user_id_ab8a8098_fk_shop_user | INDEX | `user_id` |
| shop_contract_cost_cente_contract_cost_center_id__da06ef77_uniq | UNIQUE | `contract_cost_center_id,user_id` |

## Notas


---

[← Volver al índice de tablas](../tables.md)
