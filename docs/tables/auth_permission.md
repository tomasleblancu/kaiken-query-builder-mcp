# auth_permission

> **Tipo:** Tabla

## Descripción

Autenticación y permisos (Django)

## Estadísticas

- **Filas aproximadas:** 647
- **Columnas:** 4

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `name` | varchar(255) | NO |  | `-` |  | - |
| `content_type_id` | int | NO | 🔗 FK | `-` |  | - |
| `codename` | varchar(100) | NO |  | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `content_type_id` | [django_content_type](django_content_type.md) | `id` | auth_permission_content_type_id_2f476e4b_fk_django_co |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [auth_group_permissions](auth_group_permissions.md) | `permission_id` | auth_group_permissio_permission_id_84c5c92e_fk_auth_perm |
| [auth_user_user_permissions](auth_user_user_permissions.md) | `permission_id` | auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| auth_permission_content_type_id_codename_01ab375a_uniq | UNIQUE | `content_type_id,codename` |

## Notas

- **Auto-increment:** `id`

---

[← Volver al índice de tablas](../tables.md)
