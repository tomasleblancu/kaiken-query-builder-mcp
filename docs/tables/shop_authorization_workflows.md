# shop_authorization_workflows

> **Tipo:** Tabla

## Descripción

Módulo de e-commerce/tienda online

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 10

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | char(32) | NO | 🔑 PK | `-` |  | - |
| `name` | varchar(255) | NO |  | `-` |  | - |
| `description` | longtext | YES |  | `-` |  | - |
| `min_amount` | decimal(12,2) | YES |  | `-` |  | - |
| `max_amount` | decimal(12,2) | YES |  | `-` |  | - |
| `approver_roles` | json | NO |  | `-` |  | - |
| `is_active` | tinyint(1) | NO |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `updated_at` | datetime(6) | NO |  | `-` |  | - |
| `organization_id` | char(32) | NO | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `organization_id` | [shop_organizations](shop_organizations.md) | `id` | shop_authorization_w_organization_id_531efffe_fk_shop_orga |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [shop_authorization_tasks](shop_authorization_tasks.md) | `workflow_id` | shop_authorization_t_workflow_id_f064053c_fk_shop_auth |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| shop_authorization_w_organization_id_531efffe_fk_shop_orga | INDEX | `organization_id` |

## Notas

- **Columnas de tiempo:** `updated_at`

---

[← Volver al índice de tablas](../tables.md)
