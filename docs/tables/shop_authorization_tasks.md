# shop_authorization_tasks

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
| `level` | int | NO |  | `-` |  | - |
| `assigned_to` | char(32) | YES |  | `-` |  | - |
| `status` | varchar(20) | NO |  | `-` |  | - |
| `comments` | longtext | YES |  | `-` |  | - |
| `attachments` | json | YES |  | `-` |  | - |
| `completed_at` | datetime(6) | YES |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `updated_at` | datetime(6) | NO |  | `-` |  | - |
| `order_id` | char(32) | NO | 🔗 FK | `-` |  | - |
| `workflow_id` | char(32) | NO | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `order_id` | [shop_orders](shop_orders.md) | `id` | shop_authorization_tasks_order_id_7de98aff_fk_shop_orders_id |
| `workflow_id` | [shop_authorization_workflows](shop_authorization_workflows.md) | `id` | shop_authorization_t_workflow_id_f064053c_fk_shop_auth |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| shop_authorization_t_workflow_id_f064053c_fk_shop_auth | INDEX | `workflow_id` |
| shop_authorization_tasks_order_id_level_9f78ae97_uniq | UNIQUE | `order_id,level` |

## Notas

- **Columnas de tiempo:** `updated_at`

---

[← Volver al índice de tablas](../tables.md)
