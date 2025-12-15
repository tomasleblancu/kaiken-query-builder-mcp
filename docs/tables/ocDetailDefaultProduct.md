# ocDetailDefaultProduct

> **Tipo:** Tabla

## Descripción

Órdenes de compra

## Estadísticas

- **Filas aproximadas:** 27,088
- **Columnas:** 19

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idOcDetailDefaultProduct` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idOcHeader` | int | YES | 🔗 FK | `-` |  | - |
| `idDefaultProduct` | int | YES | 🔗 FK | `-` |  | - |
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

- `idOcDetailDefaultProduct`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idDefaultProduct` | [defaultProduct](defaultProduct.md) | `idDefaultProduct` | FK_ocDetailDefaultProduct_defaultProduct |
| `idOcHeader` | [ocHeader](ocHeader.md) | `idOcHeader` | FK_ocDetailDefaultProduct_ocHeader |
| `ocProvider` | [provider](provider.md) | `idProvider` | FK_ocDetailDefaultProduct_provider |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [ocDetailDefaultProduct_ocPackageMix](ocDetailDefaultProduct_ocPackageMix.md) | `idOcDetailDefaultProduct` | ocDetailDefaultProduct_ocPackageMix_ocDetailDefaultProduct |
| [ocPackageDefaultProduct](ocPackageDefaultProduct.md) | `idOcDetailDefaultProduct` | ocPackageDefaultProduct_ocDetailDefaultProduct_FK |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| FK_ocDetailDefaultProduct_defaultProduct_idx | INDEX | `idDefaultProduct` |
| FK_ocDetailDefaultProduct_ocHeader_idx | INDEX | `idOcHeader` |
| FK_ocDetailDefaultProduct_provider_idx | INDEX | `ocProvider` |

## Notas

- **Auto-increment:** `idOcDetailDefaultProduct`

---

[← Volver al índice de tablas](../tables.md)
