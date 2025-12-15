# registeredMissings

> **Tipo:** Tabla

## Descripción

Tabla de datos del sistema

## Estadísticas

- **Filas aproximadas:** 1
- **Columnas:** 14

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idRegisteredMissings` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `projectCode` | varchar(500) | YES |  | `-` |  | - |
| `generatedCode` | varchar(500) | YES |  | `-` |  | - |
| `idDeliveryNoteHead` | int | YES | 🔗 FK | `-` |  | - |
| `idMissingNotificationType` | int | YES | 🔗 FK | `-` |  | - |
| `projectType` | varchar(1) | YES |  | `-` |  | - |
| `idUserCreation` | int | YES | 🔗 FK | `-` |  | - |
| `dateCreation` | datetime | NO |  | `-` | on update CURRENT_TIMESTAMP | - |
| `isAuthorized` | int | YES |  | `0` |  | 0 Pendiente, 1 Autorizado, 2 Rechazado |
| `isSended` | int | YES |  | `0` |  | 0 No enviado, 1 Enviado |
| `idUserAuthorized` | int | YES | 🔗 FK | `-` |  | - |
| `dateAuthorized` | datetime | YES |  | `-` |  | - |
| `idUserSended` | int | YES | 🔗 FK | `-` |  | - |
| `dateSended` | datetime | YES |  | `-` |  | - |

### Clave Primaria

- `idRegisteredMissings`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idDeliveryNoteHead` | [deliveryNoteHead](deliveryNoteHead.md) | `id` | fk_registeredMissings_idDeliveryNoteHead |
| `idMissingNotificationType` | [missingNotificationType](missingNotificationType.md) | `idMissingNotificationType` | fk_registeredMissings_idMissingNotificationType |
| `idUserAuthorized` | [users](users.md) | `idUser` | fk_registeredMissings_idUserAuthorized |
| `idUserCreation` | [users](users.md) | `idUser` | fk_registeredMissings_idUserCreation |
| `idUserSended` | [users](users.md) | `idUser` | fk_registeredMissings_idUserSended |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| fk_registeredMissings_idDeliveryNoteHead | INDEX | `idDeliveryNoteHead` |
| fk_registeredMissings_idMissingNotificationType | INDEX | `idMissingNotificationType` |
| fk_registeredMissings_idUserAuthorized | INDEX | `idUserAuthorized` |
| fk_registeredMissings_idUserCreation | INDEX | `idUserCreation` |
| fk_registeredMissings_idUserSended | INDEX | `idUserSended` |

## Notas

- **Auto-increment:** `idRegisteredMissings`
- **Columnas de tiempo:** `dateCreation`, `dateAuthorized`, `dateSended`

---

[← Volver al índice de tablas](../tables.md)
