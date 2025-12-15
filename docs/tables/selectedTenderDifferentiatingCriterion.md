# selectedTenderDifferentiatingCriterion

> **Tipo:** Tabla

## Descripción

Licitaciones seleccionadas

## Estadísticas

- **Filas aproximadas:** 11
- **Columnas:** 2

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idSelectedTenderDifferentiatingCriterion` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `differentiatingCriterion` | varchar(50) | YES |  | `-` |  | - |

### Clave Primaria

- `idSelectedTenderDifferentiatingCriterion`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [selectedTenders](selectedTenders.md) | `idSelectedTenderDifferentiatingCriterion` | FK idSelectedTenderDifferentiatingCriterion |
| [selectedTendersBak](selectedTendersBak.md) | `idSelectedTenderDifferentiatingCriterion` | selectedTendersBak_ibfk_3 |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|

## Notas

- **Auto-increment:** `idSelectedTenderDifferentiatingCriterion`

---

[← Volver al índice de tablas](../tables.md)
