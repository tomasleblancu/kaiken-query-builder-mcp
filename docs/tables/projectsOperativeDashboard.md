# projectsOperativeDashboard

> **Tipo:** Tabla

## Descripción

Gestión de proyectos

## Estadísticas

- **Filas aproximadas:** 4,197
- **Columnas:** 11

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idProjectsOperativeDashboard` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `codeDash` | varchar(100) | YES |  | `-` |  | - |
| `daysDeadDash` | int | YES |  | `-` |  | - |
| `dateDeadLineDash` | date | YES |  | `-` |  | - |
| `groupingDash` | varchar(100) | YES |  | `-` |  | - |
| `plaintiffDash` | text | YES |  | `-` |  | - |
| `projectManagerDash` | text | YES |  | `-` |  | - |
| `statusDash` | varchar(100) | YES |  | `-` |  | - |
| `isClosedDash` | int | YES |  | `-` |  | - |
| `projectTypeDash` | varchar(10) | YES |  | `-` |  | - |
| `updateDate` | date | YES |  | `-` |  | - |

### Clave Primaria

- `idProjectsOperativeDashboard`

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|

## Notas

- **Auto-increment:** `idProjectsOperativeDashboard`
- **Columnas de tiempo:** `dateDeadLineDash`, `updateDate`

---

[← Volver al índice de tablas](../tables.md)
