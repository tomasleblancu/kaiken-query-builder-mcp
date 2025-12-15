# ocDetailDraftProvider

> **Tipo:** Tabla

## Descripción

Órdenes de compra

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 7

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idOcDetailDraftProvider` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idOcDetail` | int | YES | 🔗 FK | `-` |  | - |
| `idProvider` | int | YES | 🔗 FK | `-` |  | - |
| `format` | int | YES |  | `-` |  | - |
| `ocQuantity` | int | YES |  | `-` |  | - |
| `ocCost` | int | YES |  | `-` |  | - |
| `difference` | int | YES |  | `-` |  | - |

### Clave Primaria

- `idOcDetailDraftProvider`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idOcDetail` | [ocDetail](ocDetail.md) | `idOcDetail` | FK_ocDetailDraftProvider_idOcDetail |
| `idProvider` | [provider](provider.md) | `idProvider` | FK_ocDetailDraftProvider_idProvider |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| FK_ocDetailDraftProvider_idOcDetail_idx | INDEX | `idOcDetail` |
| FK_ocDetailDraftProvider_idProvider_idx | INDEX | `idProvider` |

## Notas

- **Auto-increment:** `idOcDetailDraftProvider`

---

[← Volver al índice de tablas](../tables.md)
