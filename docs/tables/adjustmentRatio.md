# adjustmentRatio

> **Tipo:** Tabla

## Descripción

Tabla de datos del sistema

## Estadísticas

- **Filas aproximadas:** 8
- **Columnas:** 3

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idAdjustmentRatio` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `valueAdjustmentRatio` | varchar(255) | YES |  | `-` |  | - |
| `nameAdjustmentRatio` | varchar(255) | YES |  | `-` |  | - |

### Clave Primaria

- `idAdjustmentRatio`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [adjustmentHead](adjustmentHead.md) | `idAdjustmentRatio` | fk_idAdjustmentRatio_1 |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|

## Notas

- **Auto-increment:** `idAdjustmentRatio`

---

[← Volver al índice de tablas](../tables.md)
