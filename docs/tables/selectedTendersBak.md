# selectedTendersBak

> **Tipo:** Tabla

## Descripción

Licitaciones seleccionadas

## Estadísticas

- **Filas aproximadas:** 3,545
- **Columnas:** 75

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idSelectedTenders` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `code` | varchar(100) | YES | 🔗 FK | `-` |  | - |
| `idUserAnalyst` | int | YES | 🔗 FK | `-` |  | - |
| `idUserReviewer` | int | YES | 🔗 FK | `-` |  | - |
| `idSelectedTenderType` | int | YES | 🔗 FK | `-` |  | - |
| `idSelectedTenderClasification` | int | YES | 🔗 FK | `-` |  | - |
| `idSelectedTenderIndustry` | int | YES | 🔗 FK | `-` |  | - |
| `idSelectedTenderGlobalStatus` | int | YES | 🔗 FK | `-` |  | - |
| `idSelectedTenderEvaluationStatus` | int | YES | 🔗 FK | `-` |  | - |
| `idSelectedTendersAdjudication` | int | YES |  | `-` |  | - |
| `idSociety` | int | YES | 🔗 FK | `-` |  | - |
| `title` | text | YES |  | `-` |  | - |
| `description` | text | YES |  | `-` |  | - |
| `plaintiff` | varchar(2000) | YES |  | `-` |  | - |
| `datePublication` | date | YES |  | `-` |  | - |
| `dateClose` | datetime | YES |  | `-` |  | - |
| `budget` | bigint | YES |  | `-` |  | - |
| `lines` | int | YES |  | `-` |  | - |
| `budgetClasification` | varchar(100) | YES |  | `-` |  | - |
| `timeDuration` | varchar(100) | YES |  | `-` |  | - |
| `qSKU` | int | YES |  | `-` |  | - |
| `assignmentComment` | text | YES |  | `-` |  | - |
| `dateUpdate` | datetime | YES |  | `-` |  | - |
| `dateAdjudication` | date | YES |  | `-` |  | - |
| `idSelectedTenderReviewStatus` | int | YES |  | `-` |  | - |
| `qProducts` | int | YES |  | `-` |  | - |
| `qRegisteredProducts` | int | YES |  | `-` |  | - |
| `netCost` | int | YES |  | `-` |  | - |
| `globalUtility` | int | YES |  | `-` |  | - |
| `netSale` | int | YES |  | `-` |  | - |
| `IVA` | int | YES |  | `-` |  | - |
| `totalSale` | int | YES |  | `-` |  | - |
| `totalSalePercent` | decimal(5,2) | YES |  | `-` |  | - |
| `availableBudget` | int | YES |  | `-` |  | - |
| `seriousGuarantee` | int | YES |  | `-` |  | - |
| `dateSample` | datetime | YES |  | `-` |  | - |
| `sampleComment` | varchar(100) | YES |  | `-` |  | - |
| `idSelectedTenderPenaltyType` | int | YES | 🔗 FK | `-` |  | - |
| `penaltyPerDay` | decimal(15,2) | YES |  | `-` |  | - |
| `idSelectedTenderDifferentiatingCriterion` | int | YES | 🔗 FK | `-` |  | - |
| `idSelectedTenderDeliveryTimeType` | int | YES | 🔗 FK | `-` |  | - |
| `deliveryTime` | int | YES |  | `-` |  | - |
| `idSelectedTenderTransport` | int | YES | 🔗 FK | `-` |  | - |
| `globalDispatch` | int | YES |  | `-` |  | - |
| `globalMargin` | decimal(5,2) | YES |  | `-` |  | - |
| `possibleRemoved` | int | YES |  | `-` |  | 1 = Si | 
0 = No |
| `analysisComment` | varchar(4000) | YES |  | `-` |  | - |
| `pdfQuotation` | text | YES |  | `-` |  | - |
| `bidComment` | text | YES |  | `-` |  | - |
| `idProjectManager` | int | YES |  | `-` |  | - |
| `comOpComment` | text | YES |  | `-` |  | - |
| `idReason` | int | YES |  | `-` |  | - |
| `winningBid` | int | YES |  | `-` |  | - |
| `secondBid` | int | YES |  | `-` |  | - |
| `ownBid` | int | YES |  | `-` |  | - |
| `gfcAmount` | int | YES |  | `-` |  | - |
| `gfcDeadline` | date | YES |  | `-` |  | - |
| `contractDeadline` | date | YES |  | `-` |  | - |
| `sentOperations` | int | YES |  | `-` |  | 1 = Enviado | 0 = No enviado |
| `idUserAssignmentComment` | int | YES |  | `-` |  | - |
| `dateAssignmentComment` | datetime | YES |  | `-` |  | - |
| `idOperationStatus` | int | YES |  | `-` |  | - |
| `idUserSendOperationStatus` | int | YES |  | `-` |  | - |
| `dateSendOperations` | datetime | YES |  | `-` |  | - |
| `dateDeadline` | date | YES |  | `-` |  | - |
| `editedDateDeadline` | int | YES |  | `0` |  | - |
| `gfcFileName` | varchar(500) | YES |  | `-` |  | - |
| `gfcFileType` | varchar(1000) | YES |  | `-` |  | - |
| `contractFileName` | varchar(500) | YES |  | `-` |  | - |
| `contractFileType` | varchar(1000) | YES |  | `-` |  | - |
| `parentCode` | varchar(100) | YES |  | `-` |  | - |
| `gfcRequired` | int | YES |  | `0` |  | - |
| `contractRequired` | int | YES |  | `0` |  | - |
| `administrativeComment` | text | YES |  | `-` |  | - |
| `available` | int | YES |  | `1` |  | - |

### Clave Primaria

- `idSelectedTenders`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idSelectedTenderClasification` | [selectedTenderClasification](selectedTenderClasification.md) | `idSelectedTenderClasification` | selectedTendersBak_ibfk_1 |
| `idSociety` | [society](society.md) | `idSociety` | selectedTendersBak_ibfk_10 |
| `idUserAnalyst` | [users](users.md) | `idUser` | selectedTendersBak_ibfk_11 |
| `idUserReviewer` | [users](users.md) | `idUser` | selectedTendersBak_ibfk_12 |
| `idSelectedTenderDeliveryTimeType` | [selectedTenderDeliveryTimeType](selectedTenderDeliveryTimeType.md) | `idSelectedTenderDeliveryTimeType` | selectedTendersBak_ibfk_2 |
| `idSelectedTenderDifferentiatingCriterion` | [selectedTenderDifferentiatingCriterion](selectedTenderDifferentiatingCriterion.md) | `idSelectedTenderDifferentiatingCriterion` | selectedTendersBak_ibfk_3 |
| `idSelectedTenderEvaluationStatus` | [selectedTenderEvaluationStatus](selectedTenderEvaluationStatus.md) | `idSelectedTenderEvaluationStatus` | selectedTendersBak_ibfk_4 |
| `idSelectedTenderGlobalStatus` | [selectedTenderGlobalStatus](selectedTenderGlobalStatus.md) | `idSelectedTenderGlobalStatus` | selectedTendersBak_ibfk_5 |
| `idSelectedTenderIndustry` | [selectedTenderIndustry](selectedTenderIndustry.md) | `idSelectedTenderIndustry` | selectedTendersBak_ibfk_6 |
| `idSelectedTenderPenaltyType` | [selectedTenderPenaltyType](selectedTenderPenaltyType.md) | `idSelectedTenderPenaltyType` | selectedTendersBak_ibfk_7 |
| `idSelectedTenderTransport` | [selectedTenderTransport](selectedTenderTransport.md) | `idSelectedTenderTransport` | selectedTendersBak_ibfk_8 |
| `idSelectedTenderType` | [selectedTenderType](selectedTenderType.md) | `idSelectedTenderType` | selectedTendersBak_ibfk_9 |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| code | INDEX | `code` |
| FK idSelectedTenderClasification | INDEX | `idSelectedTenderClasification` |
| FK idSelectedTenderDeliveryTimeType_idx | INDEX | `idSelectedTenderDeliveryTimeType` |
| FK idSelectedTenderDifferentiatingCriterion_idx | INDEX | `idSelectedTenderDifferentiatingCriterion` |
| FK idSelectedTenderEvaluationStatus | INDEX | `idSelectedTenderEvaluationStatus` |
| FK idSelectedTenderGlobalStatus | INDEX | `idSelectedTenderGlobalStatus` |
| FK idSelectedTenderIndustry | INDEX | `idSelectedTenderIndustry` |
| FK idSelectedTenderPenaltyType_idx | INDEX | `idSelectedTenderPenaltyType` |
| FK idSelectedTenderTransport_idx | INDEX | `idSelectedTenderTransport` |
| FK idSelectedTenderType | INDEX | `idSelectedTenderType` |
| FK idSociety | INDEX | `idSociety` |
| FK idUserAnalyst | INDEX | `idUserAnalyst` |
| FK idUserReviewer | INDEX | `idUserReviewer` |

## Notas

- **Auto-increment:** `idSelectedTenders`
- **Columnas de tiempo:** `datePublication`, `dateClose`, `dateUpdate`, `dateAdjudication`, `dateSample`, `dateAssignmentComment`, `dateSendOperations`, `dateDeadline`, `editedDateDeadline`

---

[← Volver al índice de tablas](../tables.md)
