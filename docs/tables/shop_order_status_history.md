# shop_order_status_history

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
| `previous_status` | varchar(30) | YES |  | `-` |  | - |
| `new_status` | varchar(30) | NO |  | `-` |  | - |
| `notes` | longtext | YES |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `changed_by_id` | char(32) | YES | 🔗 FK | `-` |  | - |
| `order_id` | char(32) | NO | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `order_id` | [shop_orders](shop_orders.md) | `id` | shop_order_status_history_order_id_060e942f_fk_shop_orders_id |
| `changed_by_id` | [shop_user_profiles](shop_user_profiles.md) | `id` | shop_order_status_hi_changed_by_id_d56f6219_fk_shop_user |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| shop_order_status_hi_changed_by_id_d56f6219_fk_shop_user | INDEX | `changed_by_id` |
| shop_order_status_history_order_id_060e942f_fk_shop_orders_id | INDEX | `order_id` |

## Notas


---

[← Volver al índice de tablas](../tables.md)
