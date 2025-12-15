# stockProducts

> **Tipo:** Tabla

## Descripción

Órdenes de compra

## Estadísticas

- **Filas aproximadas:** 30
- **Columnas:** 8

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idStockProducts` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idSelectedTenderProduct` | int | YES | 🔗 FK | `-` |  | - |
| `idOcHeader` | int | YES | 🔗 FK | `-` |  | - |
| `idAdjustmentHead` | int | YES | 🔗 FK | `-` |  | - |
| `product` | varchar(500) | YES |  | `-` |  | - |
| `quantity` | int | YES |  | `-` |  | - |
| `unitCost` | int | YES |  | `-` |  | - |
| `isUsed` | int | YES |  | `-` |  | 0: No usado, 1: Usado |

### Clave Primaria

- `idStockProducts`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idAdjustmentHead` | [adjustmentHead](adjustmentHead.md) | `idAdjustmentHead` | fk_stockProducts_idAdjustmentHead |
| `idOcHeader` | [ocHeader](ocHeader.md) | `idOcHeader` | fk_stockProducts_idOcHeader |
| `idSelectedTenderProduct` | [selectedTenderProduct](selectedTenderProduct.md) | `idSelectedTenderProduct` | fk_stockProducts_idSelectedTenderProduct |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| fk_stockProducts_idAdjustmentHead | INDEX | `idAdjustmentHead` |
| fk_stockProducts_idOcHeader | INDEX | `idOcHeader` |
| fk_stockProducts_idSelectedTenderProduct | INDEX | `idSelectedTenderProduct` |

## Notas

- **Auto-increment:** `idStockProducts`

---

[← Volver al índice de tablas](../tables.md)
