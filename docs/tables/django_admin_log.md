# django_admin_log

> **Tipo:** Tabla

## Descripción

Tabla del framework Django

## Estadísticas

- **Filas aproximadas:** 171
- **Columnas:** 8

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `action_time` | datetime(6) | NO |  | `-` |  | - |
| `object_id` | longtext | YES |  | `-` |  | - |
| `object_repr` | varchar(200) | NO |  | `-` |  | - |
| `action_flag` | smallint unsigned | NO |  | `-` |  | - |
| `change_message` | longtext | NO |  | `-` |  | - |
| `content_type_id` | int | YES | 🔗 FK | `-` |  | - |
| `user_id` | int | NO | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `content_type_id` | [django_content_type](django_content_type.md) | `id` | django_admin_log_content_type_id_c4bce8eb_fk_django_co |
| `user_id` | [auth_user](auth_user.md) | `id` | django_admin_log_user_id_c564eba6_fk_auth_user_id |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| django_admin_log_content_type_id_c4bce8eb_fk_django_co | INDEX | `content_type_id` |
| django_admin_log_user_id_c564eba6_fk_auth_user_id | INDEX | `user_id` |

## Notas

- **Auto-increment:** `id`

---

[← Volver al índice de tablas](../tables.md)
