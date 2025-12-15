# selectedTenderPenaltyType

> **Tipo:** Tabla

## Descripción

Licitaciones seleccionadas

## Estadísticas

- **Filas aproximadas:** 4
- **Columnas:** 2

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idSelectedTenderPenaltyType` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `penaltyType` | varchar(50) | YES |  | `-` |  | - |

### Clave Primaria

- `idSelectedTenderPenaltyType`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [selectedTenders](selectedTenders.md) | `idSelectedTenderPenaltyType` | FK idSelectedTenderPenaltyType |
| [selectedTendersBak](selectedTendersBak.md) | `idSelectedTenderPenaltyType` | selectedTendersBak_ibfk_7 |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|

## Notas

- **Auto-increment:** `idSelectedTenderPenaltyType`

---

[← Volver al índice de tablas](../tables.md)
