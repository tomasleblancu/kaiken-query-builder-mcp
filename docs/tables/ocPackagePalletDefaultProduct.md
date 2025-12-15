# ocPackagePalletDefaultProduct

> **Tipo:** Tabla

## Descripción

Órdenes de compra

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 3

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idOcPackagePalletDefaultProduct` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `ocPackagePalletDefaultProductCode` | text | YES |  | `-` |  | - |
| `ocPackagePalletDateCreation` | datetime | YES |  | `CURRENT_TIMESTAMP` | DEFAULT_GENERATED | - |

### Clave Primaria

- `idOcPackagePalletDefaultProduct`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [ocPackageDefaultProduct](ocPackageDefaultProduct.md) | `idOcPackagePalletDefaultProduct` | ocPackageDefaultProduct_ocPackagePalletDefaultProduct_FK |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|

## Notas

- **Auto-increment:** `idOcPackagePalletDefaultProduct`
- **Columnas de tiempo:** `ocPackagePalletDateCreation`

---

[← Volver al índice de tablas](../tables.md)
