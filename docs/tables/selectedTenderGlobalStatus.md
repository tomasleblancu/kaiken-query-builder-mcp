# selectedTenderGlobalStatus

> **Tipo:** Tabla

## Descripción

Licitaciones seleccionadas

## Estadísticas

- **Filas aproximadas:** 9
- **Columnas:** 4

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idSelectedTenderGlobalStatus` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `globalStatus` | varchar(100) | YES |  | `-` |  | - |
| `icon` | varchar(45) | YES |  | `-` |  | - |
| `color` | varchar(10) | YES |  | `-` |  | - |

### Clave Primaria

- `idSelectedTenderGlobalStatus`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [selectedTenders](selectedTenders.md) | `idSelectedTenderGlobalStatus` | FK idSelectedTenderGlobalStatus |
| [selectedTendersBak](selectedTendersBak.md) | `idSelectedTenderGlobalStatus` | selectedTendersBak_ibfk_5 |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|

## Notas

- **Auto-increment:** `idSelectedTenderGlobalStatus`

---

[← Volver al índice de tablas](../tables.md)
