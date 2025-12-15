# selectedTenderEvaluationStatus

> **Tipo:** Tabla

## Descripción

Licitaciones seleccionadas

## Estadísticas

- **Filas aproximadas:** 6
- **Columnas:** 2

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idSelectedTenderEvaluationStatus` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `evaluationStatus` | varchar(100) | YES |  | `-` |  | - |

### Clave Primaria

- `idSelectedTenderEvaluationStatus`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [selectedTenders](selectedTenders.md) | `idSelectedTenderEvaluationStatus` | FK idSelectedTenderEvaluationStatus |
| [selectedTendersBak](selectedTendersBak.md) | `idSelectedTenderEvaluationStatus` | selectedTendersBak_ibfk_4 |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|

## Notas

- **Auto-increment:** `idSelectedTenderEvaluationStatus`

---

[← Volver al índice de tablas](../tables.md)
