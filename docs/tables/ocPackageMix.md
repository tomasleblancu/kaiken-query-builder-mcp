# ocPackageMix

> **Tipo:** Tabla

## Descripción

Órdenes de compra

## Estadísticas

- **Filas aproximadas:** 22
- **Columnas:** 4

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idOcPackageMix` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idOcHeader` | int | NO | 🔗 FK | `-` |  | - |
| `ocPackageMixCode` | text | NO |  | `-` |  | - |
| `ocPackageMixDateCreation` | datetime | YES |  | `CURRENT_TIMESTAMP` | DEFAULT_GENERATED | - |

### Clave Primaria

- `idOcPackageMix`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idOcHeader` | [ocHeader](ocHeader.md) | `idOcHeader` | ocPackageMix_idOcHeader_ocHeader_idOcHeader |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [ocDetailDefaultProduct_ocPackageMix](ocDetailDefaultProduct_ocPackageMix.md) | `idOcPackageMix` | ocDetailDefaultProduct_ocPackageMix_ocPackageMix_FK |
| [ocDetail_ocPackageMix](ocDetail_ocPackageMix.md) | `idOcPackageMix` | ocDetail_ocPackageMix_idOcPackageMix_ocPackageMix_idOcPackageMix |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| ocPackageMix_idOcHeader_ocHeader_idOcHeader_idx | INDEX | `idOcHeader` |

## Notas

- **Auto-increment:** `idOcPackageMix`
- **Columnas de tiempo:** `ocPackageMixDateCreation`

---

[← Volver al índice de tablas](../tables.md)
