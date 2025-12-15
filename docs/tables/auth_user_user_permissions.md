# auth_user_user_permissions

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
| `user_id` | int | NO | 🔗 FK | `-` |  | - |
| `permission_id` | int | NO | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `user_id` | [auth_user](auth_user.md) | `id` | auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id |
| `permission_id` | [auth_permission](auth_permission.md) | `id` | auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm | INDEX | `permission_id` |
| auth_user_user_permissions_user_id_permission_id_14a6b632_uniq | UNIQUE | `user_id,permission_id` |

## Notas

- **Auto-increment:** `id`

---

[← Volver al índice de tablas](../tables.md)
