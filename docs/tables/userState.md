# userState

> **Tipo:** Tabla

## Descripción

Gestión de usuarios

## Estadísticas

- **Filas aproximadas:** 2
- **Columnas:** 2

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idUserState` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `state` | varchar(100) | NO |  | `-` |  | - |

### Clave Primaria

- `idUserState`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [users](users.md) | `idUserState` | fk_users_usersState |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|

## Notas

- **Auto-increment:** `idUserState`

---

[← Volver al índice de tablas](../tables.md)
