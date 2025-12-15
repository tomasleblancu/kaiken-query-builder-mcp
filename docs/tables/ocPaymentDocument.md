# ocPaymentDocument

> **Tipo:** Tabla

## Descripción

Órdenes de compra

## Estadísticas

- **Filas aproximadas:** 34,059
- **Columnas:** 13

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idOcPaymentDocument` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idOcHeader` | int | NO | 🔗 FK | `-` |  | - |
| `idPaymentMethod` | int | YES | 🔗 FK | `-` |  | - |
| `idCreateUser` | int | YES | 🔗 FK | `-` |  | - |
| `idProvider` | int | YES | 🔗 FK | `-` |  | - |
| `ammountPaid` | bigint | YES |  | `-` |  | - |
| `numberPaymentDocument` | int | YES | 🔗 FK | `-` |  | - |
| `dateCreate` | date | YES |  | `-` |  | - |
| `idOcPaymentDocumentLinked` | int | YES | 🔗 FK | `-` |  | - |
| `idOcPaymentDocumentTransfer` | int | YES | 🔗 FK | `-` |  | - |
| `idOcPaymentDocumentAdjust` | int | YES | 🔗 FK | `-` |  | - |
| `adjust` | int | YES |  | `-` |  | - |
| `adjustComment` | varchar(4000) | YES |  | `-` |  | - |

### Clave Primaria

- `idOcPaymentDocument`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idOcPaymentDocumentAdjust` | [ocPaymentDocument](ocPaymentDocument.md) | `idOcPaymentDocument` | idOcPaymentDocumentAdjust |
| `idOcPaymentDocumentLinked` | [ocPaymentDocument](ocPaymentDocument.md) | `idOcPaymentDocument` | idOcPaymentDocumentLinked |
| `idOcPaymentDocumentTransfer` | [ocPaymentDocument](ocPaymentDocument.md) | `idOcPaymentDocument` | idOcPaymentDocumentTransfer |
| `idOcHeader` | [ocHeader](ocHeader.md) | `idOcHeader` | ocPaymentDocument_ibfk_1 |
| `idPaymentMethod` | [paymentMethod](paymentMethod.md) | `idPaymentMethod` | ocPaymentDocument_ibfk_2 |
| `idCreateUser` | [users](users.md) | `idUser` | ocPaymentDocument_ibfk_3 |
| `idProvider` | [provider](provider.md) | `idProvider` | ocPaymentDocument_ibfk_4 |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [adjustmentHead](adjustmentHead.md) | `idOcPaymentDocument` | fk_idOcPaymentDocument_1 |
| [ocHeaderBalance](ocHeaderBalance.md) | `idOcPaymentDocument` | FK_idOcPaymentDocument2 |
| [ocHeaderPayment](ocHeaderPayment.md) | `idOcPaymentDocument` | fk_idOcPaymentDocument |
| [ocPaymentDocument](ocPaymentDocument.md) | `idOcPaymentDocumentAdjust` | idOcPaymentDocumentAdjust |
| [ocPaymentDocument](ocPaymentDocument.md) | `idOcPaymentDocumentLinked` | idOcPaymentDocumentLinked |
| [ocPaymentDocument](ocPaymentDocument.md) | `idOcPaymentDocumentTransfer` | idOcPaymentDocumentTransfer |
| [ocPaymentDocumentPayDate](ocPaymentDocumentPayDate.md) | `idOcPaymentDocument` | ocPaymentDocumentPayDate_ibfk_1 |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| idCreateUser | INDEX | `idCreateUser` |
| idOcHeader | INDEX | `idOcHeader` |
| idOcPaymentDocument | INDEX | `idOcPaymentDocument` |
| idOcPaymentDocumentAdjust | INDEX | `idOcPaymentDocumentAdjust` |
| idOcPaymentDocumentLinked | INDEX | `idOcPaymentDocumentLinked` |
| idOcPaymentDocumentTransfer | INDEX | `idOcPaymentDocumentTransfer` |
| idPaymentMethod | INDEX | `idPaymentMethod` |
| idProvider | INDEX | `idProvider` |
| idx_payment_doc_number | INDEX | `idOcHeader,numberPaymentDocument` |
| numberPaymentDocument | INDEX | `numberPaymentDocument` |

## Notas

- **Auto-increment:** `idOcPaymentDocument`
- **Columnas de tiempo:** `dateCreate`

---

[← Volver al índice de tablas](../tables.md)
