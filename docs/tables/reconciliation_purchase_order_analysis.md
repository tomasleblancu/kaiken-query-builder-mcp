# reconciliation_purchase_order_analysis

> **Tipo:** Tabla

## Descripción

Módulo de conciliación

## Estadísticas

- **Filas aproximadas:** 1,354
- **Columnas:** 8

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | bigint | NO | 🔑 PK | `-` | auto_increment | - |
| `status` | varchar(20) | NO | 🔗 FK | `-` |  | - |
| `comments` | longtext | YES |  | `-` |  | - |
| `created_at` | datetime(6) | NO | 🔗 FK | `-` |  | - |
| `updated_at` | datetime(6) | NO | 🔗 FK | `-` |  | - |
| `created_by_id` | int | YES | 🔗 FK | `-` |  | - |
| `purchase_order_id` | int | NO | ✨ UNIQUE | `-` |  | - |
| `updated_by_id` | int | YES | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `created_by_id` | [auth_user](auth_user.md) | `id` | reconciliation_purch_created_by_id_d3e7a714_fk_auth_user |
| `purchase_order_id` | [ocHeader](ocHeader.md) | `idOcHeader` | reconciliation_purch_purchase_order_id_507091b9_fk_ocHeader_ |
| `updated_by_id` | [auth_user](auth_user.md) | `id` | reconciliation_purch_updated_by_id_e921c805_fk_auth_user |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| purchase_order_id | UNIQUE | `purchase_order_id` |
| reconciliat_created_b26c63_idx | INDEX | `created_at` |
| reconciliat_status_f1b3ef_idx | INDEX | `status` |
| reconciliat_updated_480ae3_idx | INDEX | `updated_at` |
| reconciliation_purch_created_by_id_d3e7a714_fk_auth_user | INDEX | `created_by_id` |
| reconciliation_purch_updated_by_id_e921c805_fk_auth_user | INDEX | `updated_by_id` |

## Notas

- **Auto-increment:** `id`
- **Columnas de tiempo:** `updated_at`, `updated_by_id`

---

[← Volver al índice de tablas](../tables.md)
