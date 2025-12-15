# selectedTenderOrder_client_detail

> **Tipo:** Tabla

## Descripción

Licitaciones seleccionadas

## Estadísticas

- **Filas aproximadas:** 884,273
- **Columnas:** 16

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idSelectedTenderOrder_client_detail` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idSelectedTenderOrder_client` | int | YES | 🔗 FK | `-` |  | - |
| `idSelectedTenderProduct` | int | YES | 🔗 FK | `-` |  | - |
| `productOrder` | int | YES |  | `-` |  | - |
| `quantity` | int | YES |  | `-` |  | - |
| `priceNetSale` | int | YES |  | `-` |  | - |
| `priceNetOrder` | int | YES |  | `-` |  | - |
| `totalNetSale` | int | YES |  | `-` |  | - |
| `quantityReceived` | int | YES |  | `-` |  | - |
| `comment` | text | YES |  | `-` |  | - |
| `photoUrl` | text | YES |  | `-` |  | - |
| `isEdited` | int | YES |  | `-` |  | 0 = dato confirmado, 1 = pendiente de guardar (temporal) |
| `idUserLastEdit` | int | YES |  | `-` |  | - |
| `dateLastEdit` | datetime | YES |  | `-` |  | - |
| `idSelectedTenderOrderPickingReceived` | int | YES |  | `-` |  | - |
| `sendedQuantity` | int | YES |  | `-` |  | - |

### Clave Primaria

- `idSelectedTenderOrder_client_detail`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idSelectedTenderOrder_client` | [selectedTenderOrder_client](selectedTenderOrder_client.md) | `idSelectedTenderOrder_client` | fkSelectedTenderOrder_client_selectedTenderOrder_client_detail |
| `idSelectedTenderProduct` | [selectedTenderProduct](selectedTenderProduct.md) | `idSelectedTenderProduct` | fkSelectedTenderProduct |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [selectedTenderOrderPickingReceived](selectedTenderOrderPickingReceived.md) | `idSelectedTenderOrder_client_detail` | fkSelectedTenderOrderPickingReceivedDetail |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| fkSelectedTenderOrder_client_selectedTenderOrder_client_det_idx | INDEX | `idSelectedTenderOrder_client` |
| fkSelectedTenderProduct_idx | INDEX | `idSelectedTenderProduct` |
| idx_stocd_client | INDEX | `idSelectedTenderOrder_client` |

## Notas

- **Auto-increment:** `idSelectedTenderOrder_client_detail`
- **Columnas de tiempo:** `dateLastEdit`

---

[← Volver al índice de tablas](../tables.md)
