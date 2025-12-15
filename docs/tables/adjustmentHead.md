# adjustmentHead

> **Tipo:** Tabla

## Descripción

Tabla de datos del sistema

## Estadísticas

- **Filas aproximadas:** 286
- **Columnas:** 17

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idAdjustmentHead` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idOcHeader` | int | YES |  | `-` |  | - |
| `idOcPaymentDocument` | int | YES | 🔗 FK | `-` |  | - |
| `projectCode` | varchar(500) | YES |  | `-` |  | - |
| `idReturnMethod` | int | YES | 🔗 FK | `-` |  | - |
| `idAdjustmentRatio` | int | YES | 🔗 FK | `-` |  | - |
| `plaintiff` | varchar(255) | YES |  | `-` |  | - |
| `oc` | varchar(255) | YES |  | `-` |  | - |
| `dateCreation` | datetime | YES |  | `-` |  | - |
| `isTotal` | int | YES |  | `-` |  | 0 = No es total, 1 = Es total |
| `ocNetAmount` | int | YES |  | `-` |  | - |
| `ocGrossAmount` | int | YES |  | `-` |  | - |
| `adjustmentNetAmount` | int | YES |  | `-` |  | - |
| `adjustmentGrossAmount` | int | YES |  | `-` |  | - |
| `isEditTotal` | int | YES |  | `-` |  | 0 = No se marcó la edición del total, 1 = Se marcó la edicion del total |
| `numberDocument` | int | YES |  | `-` |  | - |
| `idUser` | int | YES | 🔗 FK | `-` |  | - |

### Clave Primaria

- `idAdjustmentHead`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idAdjustmentRatio` | [adjustmentRatio](adjustmentRatio.md) | `idAdjustmentRatio` | fk_idAdjustmentRatio_1 |
| `idOcPaymentDocument` | [ocPaymentDocument](ocPaymentDocument.md) | `idOcPaymentDocument` | fk_idOcPaymentDocument_1 |
| `idReturnMethod` | [returnMethod](returnMethod.md) | `idReturnMethod` | fk_idReturnMethod_1 |
| `idUser` | [users](users.md) | `idUser` | fk_idUser_3 |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [adjustmentHeadDefaultProduct](adjustmentHeadDefaultProduct.md) | `idAdjustmentHead` | fk_adjustmentHeadDefaultProduct_idAdjustmentHead |
| [stockProducts](stockProducts.md) | `idAdjustmentHead` | fk_stockProducts_idAdjustmentHead |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| fk_idAdjustmentRatio_1 | INDEX | `idAdjustmentRatio` |
| fk_idOcPaymentDocument_1 | INDEX | `idOcPaymentDocument` |
| fk_idReturnMethod_1 | INDEX | `idReturnMethod` |
| fk_idUser_3 | INDEX | `idUser` |

## Notas

- **Auto-increment:** `idAdjustmentHead`
- **Columnas de tiempo:** `dateCreation`

---

[← Volver al índice de tablas](../tables.md)
