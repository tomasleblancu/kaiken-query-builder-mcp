# adjustmentHeadDefaultProduct

> **Tipo:** Tabla

## Descripción

Gestión de productos

## Estadísticas

- **Filas aproximadas:** 108
- **Columnas:** 3

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idAdjustmentHeadDefaultProduct` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idAdjustmentHead` | int | YES | 🔗 FK | `-` |  | - |
| `ocCostDefaultProduct` | int | YES |  | `-` |  | - |

### Clave Primaria

- `idAdjustmentHeadDefaultProduct`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idAdjustmentHead` | [adjustmentHead](adjustmentHead.md) | `idAdjustmentHead` | fk_adjustmentHeadDefaultProduct_idAdjustmentHead |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| fk_adjustmentHeadDefaultProduct_idAdjustmentHead | INDEX | `idAdjustmentHead` |

## Notas

- **Auto-increment:** `idAdjustmentHeadDefaultProduct`

---

[← Volver al índice de tablas](../tables.md)
