# ocPackageDefaultProduct

> **Tipo:** Tabla

## Descripción

Órdenes de compra

## Estadísticas

- **Filas aproximadas:** 12
- **Columnas:** 6

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idOcPackageDefaultProduct` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idOcDetailDefaultProduct` | int | YES | 🔗 FK | `-` |  | - |
| `idOcPackagePalletDefaultProduct` | int | YES | 🔗 FK | `-` |  | - |
| `ocPackageDefaultProductCode` | text | YES |  | `-` |  | - |
| `quantity` | int | YES |  | `-` |  | - |
| `ocPackageDefaultProductDateCreation` | datetime | YES |  | `CURRENT_TIMESTAMP` | DEFAULT_GENERATED | - |

### Clave Primaria

- `idOcPackageDefaultProduct`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idOcDetailDefaultProduct` | [ocDetailDefaultProduct](ocDetailDefaultProduct.md) | `idOcDetailDefaultProduct` | ocPackageDefaultProduct_ocDetailDefaultProduct_FK |
| `idOcPackagePalletDefaultProduct` | [ocPackagePalletDefaultProduct](ocPackagePalletDefaultProduct.md) | `idOcPackagePalletDefaultProduct` | ocPackageDefaultProduct_ocPackagePalletDefaultProduct_FK |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| ocPackageDefaultProduct_ocDetailDefaultProduct_FK_idx | INDEX | `idOcDetailDefaultProduct` |
| ocPackageDefaultProduct_ocPackagePalletDefaultProduct_idx | INDEX | `idOcPackagePalletDefaultProduct` |

## Notas

- **Auto-increment:** `idOcPackageDefaultProduct`
- **Columnas de tiempo:** `ocPackageDefaultProductDateCreation`

---

[← Volver al índice de tablas](../tables.md)
