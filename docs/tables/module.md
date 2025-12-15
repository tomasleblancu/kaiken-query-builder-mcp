# module

> **Tipo:** Tabla

## Descripción

Tabla de datos del sistema

## Estadísticas

- **Filas aproximadas:** 61
- **Columnas:** 13

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idModule` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `name` | varchar(100) | NO |  | `-` |  | - |
| `category` | varchar(100) | NO |  | `-` |  | - |
| `icon` | varchar(100) | NO |  | `-` |  | - |
| `iconCategory` | varchar(100) | NO |  | `-` |  | - |
| `route` | varchar(100) | NO |  | `-` |  | - |
| `routeCategory` | varchar(100) | YES |  | `-` |  | - |
| `position` | int | NO |  | `-` |  | - |
| `positionCategory` | int | NO |  | `-` |  | - |
| `component` | varchar(100) | YES |  | `-` |  | - |
| `dashboard` | text | YES |  | `-` |  | - |
| `type` | varchar(255) | YES |  | `-` |  | - |
| `isMobile` | int | YES |  | `-` |  | - |

### Clave Primaria

- `idModule`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [action](action.md) | `idModule` | fk_action_module |
| [actionExternal](actionExternal.md) | `idModule` | actionExternal_ibfk_1 |
| [moduleElements](moduleElements.md) | `idModule` | idModule |
| [presavedFilter](presavedFilter.md) | `idModule` | FK idModule |
| [presavedFilterTable](presavedFilterTable.md) | `idModule` | presavedFilterTable_ibfk_1 |
| [profileModule](profileModule.md) | `idModule` | fk_profileModule_module |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|

## Notas

- **Auto-increment:** `idModule`

---

[← Volver al índice de tablas](../tables.md)
