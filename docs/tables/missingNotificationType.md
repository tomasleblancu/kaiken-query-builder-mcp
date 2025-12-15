# missingNotificationType

> **Tipo:** Tabla

## Descripción

Sistema de notificaciones

## Estadísticas

- **Filas aproximadas:** 4
- **Columnas:** 2

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idMissingNotificationType` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `missingNotificationType` | varchar(50) | YES |  | `-` |  | - |

### Clave Primaria

- `idMissingNotificationType`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [registeredMissings](registeredMissings.md) | `idMissingNotificationType` | fk_registeredMissings_idMissingNotificationType |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|

## Notas

- **Auto-increment:** `idMissingNotificationType`

---

[← Volver al índice de tablas](../tables.md)
