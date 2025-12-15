# notification

> **Tipo:** Tabla

## Descripción

Sistema de notificaciones

## Estadísticas

- **Filas aproximadas:** 75
- **Columnas:** 11

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idNotification` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `statusNotification` | int | YES |  | `0` |  | 0 = Sin Resolver, 1 = Resuelto |
| `module` | varchar(100) | YES |  | `-` |  | - |
| `detail` | varchar(255) | YES |  | `-` |  | - |
| `actionUrl` | varchar(255) | YES |  | `-` |  | - |
| `comment` | text | YES |  | `-` |  | - |
| `dateCreate` | datetime | YES |  | `-` |  | - |
| `dateUpdate` | datetime | YES |  | `-` |  | - |
| `idUserUpdate` | int | YES | 🔗 FK | `-` |  | - |
| `table` | varchar(50) | YES |  | `-` |  | - |
| `data` | varchar(200) | YES |  | `-` |  | - |

### Clave Primaria

- `idNotification`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idUserUpdate` | [users](users.md) | `idUser` | fk_user_1 |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [listNotification_user](listNotification_user.md) | `idNotification` | fk_idNotification_1 |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| fk_user_1 | INDEX | `idUserUpdate` |

## Notas

- **Auto-increment:** `idNotification`
- **Columnas de tiempo:** `dateCreate`, `dateUpdate`, `idUserUpdate`

---

[← Volver al índice de tablas](../tables.md)
