# auth_user_groups

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
| `group_id` | int | NO | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `group_id` | [auth_group](auth_group.md) | `id` | auth_user_groups_group_id_97559544_fk_auth_group_id |
| `user_id` | [auth_user](auth_user.md) | `id` | auth_user_groups_user_id_6a12ed8b_fk_auth_user_id |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| auth_user_groups_group_id_97559544_fk_auth_group_id | INDEX | `group_id` |
| auth_user_groups_user_id_group_id_94350c0c_uniq | UNIQUE | `user_id,group_id` |

## Notas

- **Auto-increment:** `id`

---

[← Volver al índice de tablas](../tables.md)
