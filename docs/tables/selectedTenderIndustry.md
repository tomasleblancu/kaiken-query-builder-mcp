# selectedTenderIndustry

> **Tipo:** Tabla

## Descripción

Licitaciones seleccionadas

## Estadísticas

- **Filas aproximadas:** 33
- **Columnas:** 4

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idSelectedTenderIndustry` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `industry` | varchar(100) | YES |  | `-` |  | - |
| `grouping` | varchar(100) | YES |  | `-` |  | - |
| `kam` | int | YES |  | `-` |  | - |

### Clave Primaria

- `idSelectedTenderIndustry`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [selectedTenders](selectedTenders.md) | `idSelectedTenderIndustry` | FK idSelectedTenderIndustry |
| [selectedTendersBak](selectedTendersBak.md) | `idSelectedTenderIndustry` | selectedTendersBak_ibfk_6 |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|

## Notas

- **Auto-increment:** `idSelectedTenderIndustry`

---

[← Volver al índice de tablas](../tables.md)
