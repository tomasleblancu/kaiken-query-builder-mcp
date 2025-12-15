# ocDetail_ocPackageMix

> **Tipo:** Tabla

## Descripción

Órdenes de compra

## Estadísticas

- **Filas aproximadas:** 37
- **Columnas:** 4

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idOcPackageMix_ocDetail` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idOcPackageMix` | int | NO | 🔗 FK | `-` |  | - |
| `idOcDetail` | int | NO | 🔗 FK | `-` |  | - |
| `quantity` | int | YES |  | `-` |  | - |

### Clave Primaria

- `idOcPackageMix_ocDetail`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idOcDetail` | [ocDetail](ocDetail.md) | `idOcDetail` | ocDetail_idOcDetail_ocPackageMix_IdOcDetail |
| `idOcPackageMix` | [ocPackageMix](ocPackageMix.md) | `idOcPackageMix` | ocDetail_ocPackageMix_idOcPackageMix_ocPackageMix_idOcPackageMix |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| ocDetail_idOcDetail_ocPackageMix_IdOcDetail | INDEX | `idOcDetail` |
| ocDetail_ocPackageMix_idOcPackageMix_ocPackageMix_idOcPackageMix | INDEX | `idOcPackageMix` |

## Notas

- **Auto-increment:** `idOcPackageMix_ocDetail`

---

[← Volver al índice de tablas](../tables.md)
