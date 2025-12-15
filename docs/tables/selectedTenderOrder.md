# selectedTenderOrder

> **Tipo:** Tabla

## Descripción

Licitaciones seleccionadas

## Estadísticas

- **Filas aproximadas:** 4,408
- **Columnas:** 39

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idSelectedTenderOrder` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idSelectedTenders` | int | YES | 🔗 FK | `-` |  | - |
| `dateAdmission` | date | YES | 🔗 FK | `-` |  | - |
| `dateDeadline` | date | YES |  | `-` |  | - |
| `idUserProjectManager` | int | YES | 🔗 FK | `-` |  | - |
| `idOperationStatus` | int | YES | 🔗 FK | `-` |  | - |
| `reference` | varchar(500) | YES |  | `-` |  | - |
| `oc` | varchar(50) | YES | 🔗 FK | `-` |  | - |
| `orderNumber` | int | YES | 🔗 FK | `-` |  | - |
| `editedDateDeadline` | int | YES |  | `0` |  | - |
| `idSelectedTenderOrderPack` | int | YES | 🔗 FK | `-` |  | - |
| `dateCreationOC` | varchar(100) | YES |  | `-` |  | - |
| `dateAcceptanceOC` | varchar(100) | YES |  | `-` |  | - |
| `priceNetSale` | int | YES |  | `-` |  | - |
| `priceNetTotal` | int | YES |  | `-` |  | - |
| `codeOrder` | varchar(255) | YES | 🔗 FK | `-` |  | - |
| `priceCost` | int | YES |  | `-` |  | - |
| `dateCreation` | datetime | YES |  | `CURRENT_TIMESTAMP` | DEFAULT_GENERATED | - |
| `idUserCreation` | int | YES | 🔗 FK | `-` |  | - |
| `isClosed` | int | YES |  | `0` |  | - |
| `dateUpdate` | datetime | YES |  | `-` |  | - |
| `closeProjectComment` | text | YES |  | `-` |  | - |
| `dateInternalClose` | date | YES |  | `-` |  | - |
| `idSelectedTenderOrderRequest` | int | YES | 🔗 FK | `-` |  | - |
| `isMatrix` | int | YES |  | `0` |  | 0 = Pedido Normal, 1 = Pedido Matriz |
| `costPercent` | decimal(10,3) | YES |  | `-` |  | - |
| `idUserSupervisor` | int | YES |  | `-` |  | - |
| `idPickingStatus` | int | YES | 🔗 FK | `1` |  | - |
| `shop_order_id` | char(36) | YES | 🔗 FK | `-` |  | Referencia a shop_orders (UUID) |
| `datePickingLimit` | date | YES |  | `-` |  | - |
| `commentPicking` | text | YES |  | `-` |  | - |
| `isMatrixPack` | int | YES |  | `-` |  | 0 = Pedido Normal, 1 = Pedido Matriz de Pack |
| `idOpeAdminStatus` | int | YES | 🔗 FK | `-` |  | - |
| `dateProceedState` | datetime | YES |  | `-` |  | - |
| `dateTakenState` | datetime | YES |  | `-` |  | - |
| `dateDeletedState` | datetime | YES |  | `-` |  | - |
| `datePausedState` | datetime | YES |  | `-` |  | - |
| `dateSentState` | datetime | YES |  | `-` |  | - |
| `dateDeliveredState` | datetime | YES |  | `-` |  | - |

### Clave Primaria

- `idSelectedTenderOrder`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idPickingStatus` | [pickingStatus](pickingStatus.md) | `idPickingStatus` | FK idPickingStatus order |
| `idOperationStatus` | [selectedTenderOperationStatus](selectedTenderOperationStatus.md) | `idSelectedTenderOperationsStatus` | FK order idOperationStatus |
| `idSelectedTenders` | [selectedTenders](selectedTenders.md) | `idSelectedTenders` | FK order idSelectedTenders |
| `idUserProjectManager` | [users](users.md) | `idUser` | FK order idUserProjectManager |
| `idSelectedTenderOrderPack` | [selectedTenderOrderPack](selectedTenderOrderPack.md) | `idSelectedTenderOrderPack` | FK orderIdSelectedTenderOrderPack |
| `idSelectedTenderOrderRequest` | [selectedTenderOrderRequest](selectedTenderOrderRequest.md) | `idSelectedTenderOrderRequest` | FK orderIdSelectedTenderOrderRequest |
| `idUserCreation` | [users](users.md) | `idUser` | FK orderIdUserCreation |
| `idOpeAdminStatus` | [opeAdminStatus](opeAdminStatus.md) | `idOpeAdminStatus` | FK selectedTenderOrder_opeAdminStatus |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [documents_document](documents_document.md) | `order_obj_id` | documents_document_order_obj_id_e0eb0625_fk_selectedT |
| [project_metrics](project_metrics.md) | `idSelectedTenderOrder` | project_metrics_idSelectedTenderOrde_ef33494e_fk_selectedT |
| [selectedTenderOrderProduct](selectedTenderOrderProduct.md) | `idSelectedTenderOrder` | idOrder |
| [selectedTenderOrder_client](selectedTenderOrder_client.md) | `idSelectedTenderOrder` | fkSelectedTenderOrder_selectedTenderOrder_client |
| [suministro_analysis](suministro_analysis.md) | `idLastOrder` | suministro_analysis_idLastOrder_b6666206_fk_selectedT |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| codeOrder | INDEX | `codeOrder` |
| dateAdmission | INDEX | `dateAdmission` |
| FK idPickingStatus order | INDEX | `idPickingStatus` |
| FK order idOperationStatus_idx | INDEX | `idOperationStatus` |
| FK order idSelectedTenders_idx | INDEX | `idSelectedTenders` |
| FK order idUserProjectManager_idx | INDEX | `idUserProjectManager` |
| FK orderIdSelectedTenderOrderPack_idx | INDEX | `idSelectedTenderOrderPack` |
| FK orderIdSelectedTenderOrderRequest_idx | INDEX | `idSelectedTenderOrderRequest` |
| FK orderIdUserCreation_idx | INDEX | `idUserCreation` |
| FK selectedTenderOrder_opeAdminStatus | INDEX | `idOpeAdminStatus` |
| idSelectedTenderOrder | INDEX | `idSelectedTenderOrder` |
| idx_shop_order_id | INDEX | `shop_order_id` |
| ix_codeOrder_orderNumber | INDEX | `codeOrder,orderNumber` |
| oc | INDEX | `oc` |
| orderNumber | INDEX | `orderNumber` |

## Notas

- **Auto-increment:** `idSelectedTenderOrder`
- **Columnas de tiempo:** `dateAdmission`, `dateDeadline`, `editedDateDeadline`, `dateCreationOC`, `dateAcceptanceOC`, `dateCreation`, `dateUpdate`, `dateInternalClose`, `datePickingLimit`, `dateProceedState`, `dateTakenState`, `dateDeletedState`, `datePausedState`, `dateSentState`, `dateDeliveredState`

---

[← Volver al índice de tablas](../tables.md)
