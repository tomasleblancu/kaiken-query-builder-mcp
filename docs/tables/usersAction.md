# usersAction

> **Tipo:** Tabla

## Descripción

Gestión de usuarios

## Estadísticas

- **Filas aproximadas:** 4,918
- **Columnas:** 4

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idUsersAction` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idUser` | int | YES | 🔗 FK | `-` |  | - |
| `idAction` | int | YES | 🔗 FK | `-` |  | - |
| `active` | int | YES |  | `-` |  | - |

### Clave Primaria

- `idUsersAction`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idAction` | [action](action.md) | `idAction` | fk_accesss_action |
| `idUser` | [users](users.md) | `idUser` | fk_accesss_user |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| ix_access_idAccess | INDEX | `idUsersAction` |
| ix_access_idModule | INDEX | `idAction` |
| ix_access_idUser | INDEX | `idUser` |

## Notas

- **Auto-increment:** `idUsersAction`

---

[← Volver al índice de tablas](../tables.md)
