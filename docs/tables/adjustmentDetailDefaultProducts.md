# adjustmentDetailDefaultProducts

> **Tipo:** Tabla

## Descripción

Gestión de productos

## Estadísticas

- **Filas aproximadas:** 55
- **Columnas:** 14

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idAdjustmentDetailDefaultProducts` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idAdjustmentHead` | int | YES |  | `-` |  | - |
| `idOcDetailDefaultProduct` | int | YES |  | `-` |  | - |
| `idDefaultProduct` | int | YES |  | `-` |  | - |
| `productOrder` | varchar(255) | YES |  | `-` |  | - |
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

- `idAdjustmentDetailDefaultProducts`

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|

## Notas

- **Auto-increment:** `idAdjustmentDetailDefaultProducts`

---

[← Volver al índice de tablas](../tables.md)
