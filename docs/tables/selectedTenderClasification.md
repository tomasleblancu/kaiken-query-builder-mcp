# selectedTenderClasification

> **Tipo:** Tabla

## Descripción

Licitaciones seleccionadas

## Estadísticas

- **Filas aproximadas:** 10
- **Columnas:** 4

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idSelectedTenderClasification` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `clasification` | varchar(100) | YES |  | `-` |  | - |
| `color` | varchar(100) | YES |  | `-` |  | - |
| `orden` | int | YES |  | `-` |  | - |

### Clave Primaria

- `idSelectedTenderClasification`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [selectedTenders](selectedTenders.md) | `idSelectedTenderClasification` | FK idSelectedTenderClasification |
| [selectedTendersBak](selectedTendersBak.md) | `idSelectedTenderClasification` | selectedTendersBak_ibfk_1 |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|

## Notas

- **Auto-increment:** `idSelectedTenderClasification`

---

[← Volver al índice de tablas](../tables.md)
