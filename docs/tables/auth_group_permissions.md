# auth_group_permissions

> **Tipo:** Tabla

## Descripción

Autenticación y permisos (Django)

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 3

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | bigint | NO | 🔑 PK | `-` | auto_increment | - |
| `group_id` | int | NO | 🔗 FK | `-` |  | - |
| `permission_id` | int | NO | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `group_id` | [auth_group](auth_group.md) | `id` | auth_group_permissions_group_id_b120cbf9_fk_auth_group_id |
| `permission_id` | [auth_permission](auth_permission.md) | `id` | auth_group_permissio_permission_id_84c5c92e_fk_auth_perm |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| auth_group_permissio_permission_id_84c5c92e_fk_auth_perm | INDEX | `permission_id` |
| auth_group_permissions_group_id_permission_id_0cd325b0_uniq | UNIQUE | `group_id,permission_id` |

## Notas

- **Auto-increment:** `id`

---

[← Volver al índice de tablas](../tables.md)
