# ocDetailDefaultProduct_ocPackageMix

> **Tipo:** Tabla

## Descripción

Órdenes de compra

## Estadísticas

- **Filas aproximadas:** 2
- **Columnas:** 4

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idOcDetailDefaultProduct_ocPackageMix` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idOcPackageMix` | int | YES | 🔗 FK | `-` |  | - |
| `idOcDetailDefaultProduct` | int | YES | 🔗 FK | `-` |  | - |
| `quantity` | int | YES |  | `-` |  | - |

### Clave Primaria

- `idOcDetailDefaultProduct_ocPackageMix`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idOcDetailDefaultProduct` | [ocDetailDefaultProduct](ocDetailDefaultProduct.md) | `idOcDetailDefaultProduct` | ocDetailDefaultProduct_ocPackageMix_ocDetailDefaultProduct |
| `idOcPackageMix` | [ocPackageMix](ocPackageMix.md) | `idOcPackageMix` | ocDetailDefaultProduct_ocPackageMix_ocPackageMix_FK |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| ocDetailDefaultProduct_ocPackageMix_ocDetailDefaultProduct_idx | INDEX | `idOcDetailDefaultProduct` |
| ocDetailDefaultProduct_ocPackageMix_ocPackageMix_FK_idx | INDEX | `idOcPackageMix` |

## Notas

- **Auto-increment:** `idOcDetailDefaultProduct_ocPackageMix`

---

[← Volver al índice de tablas](../tables.md)
