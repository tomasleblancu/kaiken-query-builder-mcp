# licitacion_client_detail

> **Tipo:** Tabla

## Descripción

Gestión de licitaciones

## Estadísticas

- **Filas aproximadas:** 14,586
- **Columnas:** 14

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idLicitacion_client_detail` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idLicitacion_client` | int | YES | 🔗 FK | `-` |  | - |
| `idSelectedTenderProduct` | int | YES | 🔗 FK | `-` |  | - |
| `quantity` | int | YES |  | `-` |  | - |
| `priceNetSale` | int | YES |  | `-` |  | - |
| `totalNetSale` | int | YES |  | `-` |  | - |
| `quantityReceived` | int | YES |  | `-` |  | - |
| `comment` | text | YES |  | `-` |  | - |
| `photoUrl` | text | YES |  | `-` |  | - |
| `isEdited` | int | YES |  | `-` |  | 0 = dato confirmado, 1 = pendiente de guardar (temporal) |
| `idUserLastEdit` | int | YES |  | `-` |  | - |
| `dateLastEdit` | datetime | YES |  | `-` |  | - |
| `idLicitacionPickingReceived` | int | YES |  | `-` |  | - |
| `sendedQuantity` | int | YES |  | `-` |  | - |

### Clave Primaria

- `idLicitacion_client_detail`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idLicitacion_client` | [licitacion_client](licitacion_client.md) | `idLicitacion_client` | fkLicitacion_client_detail_licitacion_client |
| `idSelectedTenderProduct` | [selectedTenderProduct](selectedTenderProduct.md) | `idSelectedTenderProduct` | fkLicitacion_client_detail_selectedTenderProduct |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [licitacionPickingReceived](licitacionPickingReceived.md) | `idLicitacion_client_detail` | fklicitacionPickingReceivedIdDetail |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| fkLicitacion_client_detail_licitacion_client | INDEX | `idLicitacion_client` |
| fkLicitacion_client_detail_selectedTenderProduct | INDEX | `idSelectedTenderProduct` |
| idx_lcd_client | INDEX | `idLicitacion_client` |

## Notas

- **Auto-increment:** `idLicitacion_client_detail`
- **Columnas de tiempo:** `dateLastEdit`

---

[← Volver al índice de tablas](../tables.md)
