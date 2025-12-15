# ocDetail

> **Tipo:** Tabla

## Descripción

Órdenes de compra

## Estadísticas

- **Filas aproximadas:** 95,383
- **Columnas:** 19

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idOcDetail` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idOcHeader` | int | YES | 🔗 FK | `-` |  | - |
| `idSelectedTenderProduct` | int | YES | 🔗 FK | `-` |  | - |
| `format` | int | YES |  | `-` |  | - |
| `ocQuantity` | int | YES |  | `-` |  | - |
| `ocCost` | int | YES |  | `-` |  | - |
| `difference` | int | YES |  | `-` |  | - |
| `lastPurchase` | int | YES |  | `-` |  | - |
| `ocProvider` | int | YES | 🔗 FK | `-` |  | - |
| `quantityMissing` | int | YES |  | `-` |  | - |
| `quantity` | int | YES |  | `-` |  | - |
| `received` | int | YES |  | `0` |  | - |
| `quantityReceived` | int | YES |  | `-` |  | - |
| `productProvider` | varchar(255) | YES |  | `-` |  | - |
| `codeProvider` | varchar(255) | YES |  | `-` |  | - |
| `limitOC` | int | YES |  | `0` |  | - |
| `qPackages` | int | YES |  | `0` |  | - |
| `fileName` | varchar(500) | YES |  | `-` |  | - |
| `fileType` | varchar(1000) | YES |  | `-` |  | - |

### Clave Primaria

- `idOcDetail`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idOcHeader` | [ocHeader](ocHeader.md) | `idOcHeader` | FKidOcHeader_ocHeader |
| `idSelectedTenderProduct` | [selectedTenderProduct](selectedTenderProduct.md) | `idSelectedTenderProduct` | FKidSelectedProduct_selectedTenderProduct |
| `ocProvider` | [provider](provider.md) | `idProvider` | fk_ocDetail_ocProvider |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [ocDetailDraftProvider](ocDetailDraftProvider.md) | `idOcDetail` | FK_ocDetailDraftProvider_idOcDetail |
| [ocDetail_ocPackageMix](ocDetail_ocPackageMix.md) | `idOcDetail` | ocDetail_idOcDetail_ocPackageMix_IdOcDetail |
| [ocPackage](ocPackage.md) | `idOcDetail` | ocPackage_idOcDetail_ocDetail_idOcDetail |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| FKidOcHeader_ocHeader_idx | INDEX | `idOcHeader` |
| FKidSelectedProduct_selectedTenderProduct | INDEX | `idSelectedTenderProduct` |
| FKocProvider_provider_idx | INDEX | `ocProvider` |

## Notas

- **Auto-increment:** `idOcDetail`

---

[← Volver al índice de tablas](../tables.md)
