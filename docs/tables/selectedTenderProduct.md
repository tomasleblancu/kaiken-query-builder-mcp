# selectedTenderProduct

> **Tipo:** Tabla

## Descripción

Licitaciones seleccionadas

## Estadísticas

- **Filas aproximadas:** 133,346
- **Columnas:** 25

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idSelectedTenderProduct` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idSelectedTenders` | int | YES | 🔗 FK | `-` |  | - |
| `productOrder` | int | YES |  | `-` |  | - |
| `requestedProduct` | varchar(1000) | YES |  | `-` |  | - |
| `idProduct` | int | YES | 🔗 FK | `-` |  | - |
| `quantity` | int | YES |  | `-` |  | - |
| `netCost` | int | YES |  | `-` |  | - |
| `netTotalCost` | int | YES |  | `-` |  | - |
| `idUnitMeasurement` | int | YES | 🔗 FK | `-` |  | - |
| `idProvider` | int | YES | 🔗 FK | `-` |  | - |
| `priceWithoutShipping` | int | YES |  | `-` |  | - |
| `priceCostPercent` | decimal(10,2) | YES |  | `-` |  | - |
| `priceNetSale` | int | YES |  | `-` |  | - |
| `priceNetTotal` | int | YES |  | `-` |  | - |
| `priceIVA` | int | YES |  | `-` |  | - |
| `priceTotalIVA` | int | YES |  | `-` |  | - |
| `referenceProduct` | text | YES |  | `-` |  | - |
| `realUnitCost` | int | YES |  | `-` |  | - |
| `finalProvider` | text | YES |  | `-` |  | - |
| `moduleCategory` | varchar(100) | YES |  | `-` |  | - |
| `ANALISTA_PROVISORIO` | varchar(255) | YES |  | `-` |  | - |
| `codeProvider` | varchar(255) | YES |  | `-` |  | - |
| `clientBlocked` | int | YES |  | `0` |  | Disponible = 0, Bloqueado = 1, Cotizando = 2 |
| `clientSpecification` | text | YES |  | `-` |  | - |
| `img` | longtext | YES |  | `-` |  | - |

### Clave Primaria

- `idSelectedTenderProduct`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idProduct` | [product](product.md) | `idProduct` | FK idProduct |
| `idProvider` | [provider](provider.md) | `idProvider` | FK idProvider |
| `idSelectedTenders` | [selectedTenders](selectedTenders.md) | `idSelectedTenders` | FK idSelectedTenders |
| `idUnitMeasurement` | [unitMeasurement](unitMeasurement.md) | `idUnitMeasurement` | FK idUnitMeasurement |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [licitacion_client_detail](licitacion_client_detail.md) | `idSelectedTenderProduct` | fkLicitacion_client_detail_selectedTenderProduct |
| [ocDetail](ocDetail.md) | `idSelectedTenderProduct` | FKidSelectedProduct_selectedTenderProduct |
| [selectedTenderOrderRequestProduct](selectedTenderOrderRequestProduct.md) | `idSelectedTenderProduct` | fk_selectedTenderProduct |
| [selectedTenderOrder_client_detail](selectedTenderOrder_client_detail.md) | `idSelectedTenderProduct` | fkSelectedTenderProduct |
| [shop_products](shop_products.md) | `selected_tender_product_id` | shop_products_selected_tender_prod_1d6f2a0b_fk_selectedT |
| [stockProducts](stockProducts.md) | `idSelectedTenderProduct` | fk_stockProducts_idSelectedTenderProduct |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| FK idProduct_idx | INDEX | `idProduct` |
| FK idProvider_idx | INDEX | `idProvider` |
| FK idSelectedTenders_idx | INDEX | `idSelectedTenders` |
| FK idUnitMeasurement_idx | INDEX | `idUnitMeasurement` |
| idSelectedTenderProduct | INDEX | `idSelectedTenderProduct` |

## Notas

- **Auto-increment:** `idSelectedTenderProduct`

---

[← Volver al índice de tablas](../tables.md)
