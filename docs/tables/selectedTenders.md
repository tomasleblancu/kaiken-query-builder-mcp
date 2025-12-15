# selectedTenders

> **Tipo:** Tabla

## Descripción

Licitaciones seleccionadas

## Estadísticas

- **Filas aproximadas:** 16,659
- **Columnas:** 107

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idSelectedTenders` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `code` | varchar(1000) | YES | 🔗 FK | `-` |  | - |
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
| `dateClose` | datetime | YES | 🔗 FK | `-` |  | - |
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
| `idReason` | int | YES | 🔗 FK | `-` |  | - |
| `winningBid` | int | YES |  | `-` |  | - |
| `secondBid` | int | YES |  | `-` |  | - |
| `ownBid` | int | YES |  | `-` |  | - |
| `gfcAmount` | int | YES |  | `-` |  | - |
| `gfcDeadline` | date | YES |  | `-` |  | - |
| `contractDeadline` | date | YES |  | `-` |  | - |
| `sentOperations` | int | YES |  | `-` |  | 1 = Enviado | 0 = No enviado |
| `idUserAssignmentComment` | int | YES |  | `-` |  | - |
| `dateAssignmentComment` | datetime | YES |  | `-` |  | - |
| `idOperationStatus` | int | YES | 🔗 FK | `-` |  | - |
| `idUserSendOperationStatus` | int | YES |  | `-` |  | - |
| `dateSendOperations` | datetime | YES |  | `-` |  | - |
| `dateDeadline` | date | YES |  | `-` |  | - |
| `editedDateDeadline` | int | YES |  | `0` |  | - |
| `gfcFileName` | varchar(500) | YES |  | `-` |  | - |
| `gfcFileType` | varchar(1000) | YES |  | `-` |  | - |
| `contractFileName` | varchar(500) | YES |  | `-` |  | - |
| `contractFileType` | varchar(1000) | YES |  | `-` |  | - |
| `parentCode` | varchar(100) | YES | 🔗 FK | `-` |  | - |
| `gfcRequired` | int | YES |  | `0` |  | - |
| `contractRequired` | int | YES |  | `0` |  | - |
| `administrativeComment` | text | YES |  | `-` |  | - |
| `available` | int | YES |  | `1` |  | - |
| `isClosed` | int | YES |  | `0` |  | - |
| `savings` | bigint | YES |  | `-` |  | - |
| `money` | varchar(255) | YES |  | `-` |  | - |
| `isWonable` | int | YES |  | `0` |  | - |
| `closeProjectComment` | text | YES |  | `-` |  | - |
| `dateInternalClose` | date | YES |  | `-` |  | - |
| `kamSupply` | varchar(100) | YES |  | `-` |  | - |
| `tiTechnicalInspector` | varchar(100) | YES |  | `-` |  | - |
| `tiPhone` | varchar(45) | YES |  | `-` |  | - |
| `tiMail` | varchar(100) | YES |  | `-` |  | - |
| `rut` | varchar(20) | YES | 🔗 FK | `-` |  | - |
| `idRegion` | tinyint | YES |  | `-` |  | - |
| `messageHome` | varchar(1000) | YES |  | `-` |  | - |
| `logoHome` | varchar(255) | YES |  | `-` |  | - |
| `idUserWinningBid` | int | YES |  | `-` |  | - |
| `idUserOwnBid` | int | YES |  | `-` |  | 0 = Scraping, -1 Trigger, -2 Trigger, >0 User |
| `isReadedLostAmount` | int | YES |  | `-` |  | 1 = Leido en getLostForUpdateAmoun, 0 = no Leido |
| `ocrLabel` | varchar(1000) | YES |  | `-` |  | - |
| `isOcrLabelEdited` | int | YES |  | `0` |  | 0 = No editado, 1 = Editado por usuario |
| `similarProject` | varchar(100) | YES |  | `-` |  | - |
| `isMatrix` | int | YES |  | `-` |  | 0 = No tiene matriz, 1 = Si tiene matriz |
| `idUserPickingSupervisor` | int | YES | 🔗 FK | `-` |  | - |
| `idPickingStatus` | int | YES | 🔗 FK | `1` |  | - |
| `datePickingLimit` | date | YES |  | `-` |  | - |
| `commentPicking` | text | YES |  | `-` |  | - |
| `idOpeAdminStatus` | int | YES | 🔗 FK | `-` |  | - |
| `dateProceedState` | datetime | YES |  | `-` |  | - |
| `dateTakenState` | datetime | YES |  | `-` |  | - |
| `dateDeletedState` | datetime | YES |  | `-` |  | - |
| `datePausedState` | datetime | YES |  | `-` |  | - |
| `dateSentState` | datetime | YES |  | `-` |  | - |
| `dateDeliveredState` | datetime | YES |  | `-` |  | - |

### Clave Primaria

- `idSelectedTenders`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idPickingStatus` | [pickingStatus](pickingStatus.md) | `idPickingStatus` | FK idPickingStatus |
| `idSelectedTenderClasification` | [selectedTenderClasification](selectedTenderClasification.md) | `idSelectedTenderClasification` | FK idSelectedTenderClasification |
| `idSelectedTenderDeliveryTimeType` | [selectedTenderDeliveryTimeType](selectedTenderDeliveryTimeType.md) | `idSelectedTenderDeliveryTimeType` | FK idSelectedTenderDeliveryTimeType |
| `idSelectedTenderDifferentiatingCriterion` | [selectedTenderDifferentiatingCriterion](selectedTenderDifferentiatingCriterion.md) | `idSelectedTenderDifferentiatingCriterion` | FK idSelectedTenderDifferentiatingCriterion |
| `idSelectedTenderEvaluationStatus` | [selectedTenderEvaluationStatus](selectedTenderEvaluationStatus.md) | `idSelectedTenderEvaluationStatus` | FK idSelectedTenderEvaluationStatus |
| `idSelectedTenderGlobalStatus` | [selectedTenderGlobalStatus](selectedTenderGlobalStatus.md) | `idSelectedTenderGlobalStatus` | FK idSelectedTenderGlobalStatus |
| `idSelectedTenderIndustry` | [selectedTenderIndustry](selectedTenderIndustry.md) | `idSelectedTenderIndustry` | FK idSelectedTenderIndustry |
| `idSelectedTenderPenaltyType` | [selectedTenderPenaltyType](selectedTenderPenaltyType.md) | `idSelectedTenderPenaltyType` | FK idSelectedTenderPenaltyType |
| `idSelectedTenderTransport` | [selectedTenderTransport](selectedTenderTransport.md) | `idSelectedTenderTransport` | FK idSelectedTenderTransport |
| `idSelectedTenderType` | [selectedTenderType](selectedTenderType.md) | `idSelectedTenderType` | FK idSelectedTenderType |
| `idSociety` | [society](society.md) | `idSociety` | FK idSociety |
| `idUserAnalyst` | [users](users.md) | `idUser` | FK idUserAnalyst |
| `idUserPickingSupervisor` | [users](users.md) | `idUser` | FK idUserPickingSupervisor |
| `idUserReviewer` | [users](users.md) | `idUser` | FK idUserReviewer |
| `idOpeAdminStatus` | [opeAdminStatus](opeAdminStatus.md) | `idOpeAdminStatus` | FK selectedTenders_opeAdminStatus |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [contacto_selectedTenders](contacto_selectedTenders.md) | `selectedtenders_id` | contacto_selectedTen_selectedtenders_id_40772972_fk_selectedT |
| [documents_document](documents_document.md) | `project_obj_id` | documents_document_project_obj_id_05d3253c_fk_selectedT |
| [historial_tender](historial_tender.md) | `idSelectedTenders` | historial_tender_idSelectedTenders_e551de56_fk_selectedT |
| [internalTransfersProvider](internalTransfersProvider.md) | `idSelectedTenders` | idSelectedTenders |
| [licitacion_client](licitacion_client.md) | `idSelectedTenders` | fkLicitacion_client_selectedTenders |
| [selectedTenderComment](selectedTenderComment.md) | `idSelectedTenders` | FK comment idSelectedTenders |
| [selectedTenderOrder](selectedTenderOrder.md) | `idSelectedTenders` | FK order idSelectedTenders |
| [selectedTenderOrderRequest](selectedTenderOrderRequest.md) | `idSelectedTenders` | fk_selectedTendersRequest |
| [selectedTenderProduct](selectedTenderProduct.md) | `idSelectedTenders` | FK idSelectedTenders |
| [selectedTenders_client](selectedTenders_client.md) | `idSelectedTenders` | selectedTenders_client_selectedTenders |
| [suministro_analysis](suministro_analysis.md) | `idSelectedTenders` | suministro_analysis_idSelectedTenders_71d7db19_fk_selectedT |
| [userProject](userProject.md) | `idSelectedTenders` | fk_selectedTenders |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| code | INDEX | `code` |
| dateClose | INDEX | `dateClose` |
| FK idPickingStatus | INDEX | `idPickingStatus` |
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
| FK idUserPickingSupervisor | INDEX | `idUserPickingSupervisor` |
| FK idUserReviewer | INDEX | `idUserReviewer` |
| FK selectedTenders_opeAdminStatus | INDEX | `idOpeAdminStatus` |
| idReason | INDEX | `idReason` |
| idx_operationStatus | INDEX | `idOperationStatus` |
| parentCode | INDEX | `parentCode` |
| rut | INDEX | `rut` |

## Notas

- **Auto-increment:** `idSelectedTenders`
- **Columnas de tiempo:** `datePublication`, `dateClose`, `dateUpdate`, `dateAdjudication`, `dateSample`, `dateAssignmentComment`, `dateSendOperations`, `dateDeadline`, `editedDateDeadline`, `dateInternalClose`, `datePickingLimit`, `dateProceedState`, `dateTakenState`, `dateDeletedState`, `datePausedState`, `dateSentState`, `dateDeliveredState`

---

[← Volver al índice de tablas](../tables.md)
