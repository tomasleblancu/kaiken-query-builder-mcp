# auth_group

> **Tipo:** Tabla

## Descripción

Autenticación y permisos (Django)

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 2

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `name` | varchar(150) | NO | ✨ UNIQUE | `-` |  | - |

### Clave Primaria

- `id`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [auth_group_permissions](auth_group_permissions.md) | `group_id` | auth_group_permissions_group_id_b120cbf9_fk_auth_group_id |
| [auth_user_groups](auth_user_groups.md) | `group_id` | auth_user_groups_group_id_97559544_fk_auth_group_id |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| name | UNIQUE | `name` |

## Notas

- **Auto-increment:** `id`

---

[← Volver al índice de tablas](../tables.md)
