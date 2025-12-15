# shop_contract_users

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
| `role` | varchar(20) | NO |  | `-` |  | - |
| `is_active` | tinyint(1) | NO |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `updated_at` | datetime(6) | NO |  | `-` |  | - |
| `contract_id` | char(32) | NO | 🔗 FK | `-` |  | - |
| `user_id` | char(32) | NO | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `contract_id` | [shop_contracts](shop_contracts.md) | `id` | shop_contract_users_contract_id_a0837bdf_fk_shop_contracts_id |
| `user_id` | [shop_user_profiles](shop_user_profiles.md) | `id` | shop_contract_users_user_id_e27da490_fk_shop_user_profiles_id |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| shop_contra_contrac_115003_idx | INDEX | `contract_id,is_active` |
| shop_contra_user_id_fa3d7a_idx | INDEX | `user_id,is_active` |
| shop_contract_users_contract_id_user_id_0a068c16_uniq | UNIQUE | `contract_id,user_id` |

## Notas

- **Columnas de tiempo:** `updated_at`

---

[← Volver al índice de tablas](../tables.md)
