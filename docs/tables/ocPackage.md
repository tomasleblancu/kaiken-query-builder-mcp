# ocPackage

> **Tipo:** Tabla

## Descripción

Órdenes de compra

## Estadísticas

- **Filas aproximadas:** 1,296
- **Columnas:** 6

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idOcPackage` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idOcDetail` | int | NO | 🔗 FK | `-` |  | - |
| `idOcPackagePallet` | int | YES | 🔗 FK | `-` |  | - |
| `ocPackageCode` | text | NO |  | `-` |  | - |
| `quantity` | int | YES |  | `-` |  | - |
| `ocPackageDateCreation` | datetime | YES |  | `CURRENT_TIMESTAMP` | DEFAULT_GENERATED | - |

### Clave Primaria

- `idOcPackage`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idOcDetail` | [ocDetail](ocDetail.md) | `idOcDetail` | ocPackage_idOcDetail_ocDetail_idOcDetail |
| `idOcPackagePallet` | [ocPackagePallet](ocPackagePallet.md) | `idOcPackagePallet` | ocPackage_idOCPackagePallet_ocPackagePallet_idOcPackagePallet |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| ocPackage_idOcDetail_ocDetail_idOcDetail | INDEX | `idOcDetail` |
| ocPackage_idOCPackagePallet_ocPackagePallet_idOcPackagePallet | INDEX | `idOcPackagePallet` |

## Notas

- **Auto-increment:** `idOcPackage`
- **Columnas de tiempo:** `ocPackageDateCreation`

---

[← Volver al índice de tablas](../tables.md)
