# adjustmentDetail

> **Tipo:** Tabla

## Descripción

Tabla de datos del sistema

## Estadísticas

- **Filas aproximadas:** 2,785
- **Columnas:** 14

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idAdjustmentDetail` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idAdjustmentHead` | int | YES |  | `-` |  | - |
| `idOcDetail` | int | YES |  | `-` |  | - |
| `idSelectedTenderProduct` | int | YES |  | `-` |  | - |
| `productOrder` | int | YES |  | `-` |  | - |
| `product` | varchar(500) | YES |  | `-` |  | - |
| `isReceived` | int | YES |  | `-` |  | 0 = No recibido, 1 = Recibido |
| `format` | int | YES |  | `-` |  | - |
| `unitCost` | int | YES |  | `-` |  | - |
| `totalCost` | int | YES |  | `-` |  | - |
| `ocQuantity` | int | YES |  | `-` |  | - |
| `receivedQuantity` | int | YES |  | `-` |  | - |
| `adjustedQuantity` | int | YES |  | `-` |  | - |
| `totalAdjustedCost` | int | YES |  | `-` |  | - |

### Clave Primaria

- `idAdjustmentDetail`

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|

## Notas

- **Auto-increment:** `idAdjustmentDetail`

---

[← Volver al índice de tablas](../tables.md)
