# listNotification_user

> **Tipo:** Tabla

## Descripción

Gestión de usuarios

## Estadísticas

- **Filas aproximadas:** 719
- **Columnas:** 4

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `IdListNotification_user` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idNotification` | int | YES | 🔗 FK | `-` |  | - |
| `idUser` | int | YES | 🔗 FK | `-` |  | - |
| `statusDisplay` | int | YES |  | `0` |  | 0 = Pendiente, 1 = Visto |

### Clave Primaria

- `IdListNotification_user`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idNotification` | [notification](notification.md) | `idNotification` | fk_idNotification_1 |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| fk_idNotification_1 | INDEX | `idNotification` |
| FK_listNotification_user_user | INDEX | `idUser` |

## Notas

- **Auto-increment:** `IdListNotification_user`

---

[← Volver al índice de tablas](../tables.md)
