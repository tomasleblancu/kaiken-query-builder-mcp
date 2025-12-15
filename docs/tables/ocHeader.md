# ocHeader

> **Tipo:** Tabla

## Descripción

Órdenes de compra

## Estadísticas

- **Filas aproximadas:** 26,294
- **Columnas:** 35

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idOcHeader` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `codeProject` | varchar(200) | YES | 🔗 FK | `-` |  | - |
| `idUserCreation` | int | YES | 🔗 FK | `-` |  | - |
| `dateCreation` | date | YES | 🔗 FK | `-` |  | - |
| `oc` | varchar(255) | YES | 🔗 FK | `-` |  | - |
| `provider` | int | YES | 🔗 FK | `-` |  | - |
| `netTotal` | int | YES | 🔗 FK | `-` |  | - |
| `netTotalConfirm` | int | YES | 🔗 FK | `-` |  | - |
| `grossTotal` | int | YES |  | `-` |  | - |
| `paymentMethod` | int | YES | 🔗 FK | `-` |  | - |
| `idOcStatusAvailable` | int | YES | 🔗 FK | `1` |  | - |
| `idOcStatusWarehouseReception` | int | YES | 🔗 FK | `1` |  | - |
| `idOcStatusInvoiceConciliation` | int | YES | 🔗 FK | `-` |  | - |
| `idOcStatusPayment` | int | YES | 🔗 FK | `-` |  | - |
| `observation` | varchar(500) | YES |  | `-` |  | - |
| `idOcDeletedReason` | int | YES | 🔗 FK | `-` |  | - |
| `difference` | int | YES |  | `-` |  | - |
| `dateReception` | datetime | YES |  | `-` |  | - |
| `commentReception` | varchar(255) | YES |  | `-` |  | - |
| `idPaymentMethodList` | int | YES | 🔗 FK | `-` |  | - |
| `idPaymentStatus` | int | YES | 🔗 FK | `1` |  | - |
| `idPaymentAccount` | int | YES | 🔗 FK | `-` |  | - |
| `dateUpdate` | date | YES |  | `-` |  | - |
| `invoiceNumber` | varchar(500) | YES | 🔗 FK | `-` |  | - |
| `idUserReception` | int | YES | 🔗 FK | `-` |  | - |
| `dateCompleteReception` | date | YES |  | `-` |  | - |
| `emailIncompleteReception` | int | YES |  | `0` |  | - |
| `paymentPayroll` | varchar(400) | YES |  | `-` |  | - |
| `dateCreationReal` | datetime | YES |  | `CURRENT_TIMESTAMP` | DEFAULT_GENERATED | - |
| `idSelectedTenders` | int | YES | 🔗 FK | `-` |  | - |
| `paymentAuthorized` | int | YES |  | `0` |  | - |
| `dateExpiration` | date | YES |  | `-` |  | - |
| `reconciled_amount` | int | YES |  | `0` |  | - |
| `pending_amount` | int | YES |  | `0` |  | - |
| `idOcConciliationStatus` | int | YES | 🔗 FK | `-` | STORED GENERATED | - |

### Clave Primaria

- `idOcHeader`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idOcDeletedReason` | [ocDeletedReason](ocDeletedReason.md) | `idOcDeletedReason` | FK_idOcDeletedReason_idOcDeletedReason |
| `idOcStatusAvailable` | [ocStatusAvailable](ocStatusAvailable.md) | `idOcStatusAvailable` | FK_idOcStatusAvailable_ocStatusAvailable |
| `idOcStatusInvoiceConciliation` | [ocStatusInvoiceConciliation](ocStatusInvoiceConciliation.md) | `idOcStatusInvoiceConciliation` | FK_idOcStatusInvoiceConciliation_ocStatusInvoiceConciliation |
| `idOcStatusPayment` | [ocStatusPayment](ocStatusPayment.md) | `idOcStatusPayment` | FK_idOcStatusPayment_ocStatusPayment |
| `idOcStatusWarehouseReception` | [ocStatusWarehouseReception](ocStatusWarehouseReception.md) | `idOcStatusWarehouseReception` | FK_idOcStatusWarehouseReception_ocStatusWarehouseReception |
| `idPaymentAccount` | [paymentAccount](paymentAccount.md) | `idPaymentAccount` | fk_ocHeader_idPaymentAccount |
| `idPaymentMethodList` | [paymentMethod](paymentMethod.md) | `idPaymentMethod` | fk_ocHeader_idPaymentMethodList |
| `idPaymentStatus` | [paymentStatus](paymentStatus.md) | `idPaymentStatus` | fk_ocHeader_idPaymentStatus |
| `idUserCreation` | [users](users.md) | `idUser` | FK_ocHeader_idUserCreation_idUser |
| `idUserReception` | [users](users.md) | `idUser` | FK_ocHeader_idUserReception_idUser |
| `idOcConciliationStatus` | [ocConciliationStatus](ocConciliationStatus.md) | `idOcConciliationStatus` | FK_ocHeader_ocConciliationStatus |
| `provider` | [provider](provider.md) | `idProvider` | fk_ocHeader_provider |
| `paymentMethod` | [paymentMethod](paymentMethod.md) | `idPaymentMethod` | FK_ocpaymentMethod_paymentMethod |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [ocDetail](ocDetail.md) | `idOcHeader` | FKidOcHeader_ocHeader |
| [ocDetailDefaultProduct](ocDetailDefaultProduct.md) | `idOcHeader` | FK_ocDetailDefaultProduct_ocHeader |
| [ocHeaderInitalPaymentMethod](ocHeaderInitalPaymentMethod.md) | `idOcHeader` | idOcHeader |
| [ocHeaderPayment](ocHeaderPayment.md) | `idOcHeader` | fk_ocHeaderPayment_oc |
| [ocPackageMix](ocPackageMix.md) | `idOcHeader` | ocPackageMix_idOcHeader_ocHeader_idOcHeader |
| [ocPaymentDocument](ocPaymentDocument.md) | `idOcHeader` | ocPaymentDocument_ibfk_1 |
| [reconciliation_invoicepurchaseorderreconciliation](reconciliation_invoicepurchaseorderreconciliation.md) | `purchase_order_id` | reconciliation_invoi_purchase_order_id_c6c50823_fk_ocHeader_ |
| [reconciliation_purchase_order_analysis](reconciliation_purchase_order_analysis.md) | `purchase_order_id` | reconciliation_purch_purchase_order_id_507091b9_fk_ocHeader_ |
| [stockProducts](stockProducts.md) | `idOcHeader` | fk_stockProducts_idOcHeader |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| codeProject | INDEX | `idOcHeader` |
| dateCreation | INDEX | `dateCreation` |
| FK_idOcDeletedReason_idOcDeletedReason_idx | INDEX | `idOcDeletedReason` |
| FK_idOcStatusAvailable_ocStatusAvailable_idx | INDEX | `idOcStatusAvailable` |
| FK_idOcStatusInvoiceConciliation_idx | INDEX | `idOcStatusInvoiceConciliation` |
| FK_idOcStatusPayment_ocStatusPayment_idx | INDEX | `idOcStatusPayment` |
| FK_idOcStatusWarehouseReception_idx | INDEX | `idOcStatusWarehouseReception` |
| fk_ocHeader_idPaymentMethodList | INDEX | `idPaymentMethodList` |
| FK_ocHeader_idUserCreation_idUser | INDEX | `idUserCreation` |
| FK_ocHeader_idUserReception_idUser | INDEX | `idUserReception` |
| FK_ocHeader_ocConciliationStatus | INDEX | `idOcConciliationStatus` |
| FK_ocpaymentMethod_paymentMethod_idx | INDEX | `paymentMethod` |
| idc_codeProject | INDEX | `codeProject` |
| idOcStatusAvailable | INDEX | `idOcStatusAvailable` |
| idx_code | INDEX | `codeProject` |
| IDX_idPaymentAccount | INDEX | `idPaymentAccount` |
| IDX_idPaymentStatus | INDEX | `idPaymentStatus` |
| idx_idselectedtenders | INDEX | `idSelectedTenders` |
| IDX_invoiceNumber | INDEX | `invoiceNumber` |
| idx_netTotalConfirm | INDEX | `netTotalConfirm` |
| IDX_OC | INDEX | `oc` |
| idx_oc_header_doc | INDEX | `oc,idOcHeader` |
| IDX_provider | INDEX | `provider` |
| netTotal | INDEX | `netTotal` |

## Notas

- **Auto-increment:** `idOcHeader`
- **Columnas de tiempo:** `dateCreation`, `dateReception`, `dateUpdate`, `dateCompleteReception`, `dateCreationReal`, `dateExpiration`

---

[← Volver al índice de tablas](../tables.md)
