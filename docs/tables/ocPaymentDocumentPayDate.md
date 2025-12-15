# ocPaymentDocumentPayDate

> **Tipo:** Tabla

## Descripción

Órdenes de compra

## Estadísticas

- **Filas aproximadas:** 33,908
- **Columnas:** 13

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idOcPaymentDocumentPayDate` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idOcPaymentDocument` | int | NO | 🔗 FK | `-` |  | - |
| `idPayingUser` | int | YES | 🔗 FK | `-` |  | - |
| `idProvider` | int | YES | 🔗 FK | `-` |  | - |
| `payDateCreate` | date | YES |  | `-` |  | - |
| `ammountPaid` | bigint | YES |  | `-` |  | - |
| `idPaymentDocumentStatus` | int | YES | 🔗 FK | `-` |  | - |
| `idPaymentDocumentProviderType` | int | YES | 🔗 FK | `-` |  | - |
| `payDateSuccess` | date | YES |  | `-` |  | - |
| `payDateUpdate` | date | YES |  | `-` |  | - |
| `payDateDue` | date | YES |  | `-` |  | - |
| `idPaymentAccount` | int | YES | 🔗 FK | `-` |  | - |
| `paymentAuthorized` | int | YES |  | `-` |  | - |

### Clave Primaria

- `idOcPaymentDocumentPayDate`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idPaymentAccount` | [paymentAccount](paymentAccount.md) | `idPaymentAccount` | idPaymentAccount |
| `idOcPaymentDocument` | [ocPaymentDocument](ocPaymentDocument.md) | `idOcPaymentDocument` | ocPaymentDocumentPayDate_ibfk_1 |
| `idPayingUser` | [users](users.md) | `idUser` | ocPaymentDocumentPayDate_ibfk_2 |
| `idProvider` | [provider](provider.md) | `idProvider` | ocPaymentDocumentPayDate_ibfk_3 |
| `idPaymentDocumentStatus` | [paymentDocumentStatus](paymentDocumentStatus.md) | `idPaymentDocumentStatus` | ocPaymentDocumentPayDate_ibfk_4 |
| `idPaymentDocumentProviderType` | [paymentDocumentProviderType](paymentDocumentProviderType.md) | `idPaymentDocumentProviderType` | ocPaymentDocumentPayDate_ibfk_5 |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| idOcPaymentDocument | INDEX | `idOcPaymentDocument` |
| idPayingUser | INDEX | `idPayingUser` |
| idPaymentAccount | INDEX | `idPaymentAccount` |
| idPaymentDocumentStatus | INDEX | `idPaymentDocumentStatus` |
| idProvider | INDEX | `idProvider` |
| ocPaymentDocumentPayDate_ibfk_5 | INDEX | `idPaymentDocumentProviderType` |

## Notas

- **Auto-increment:** `idOcPaymentDocumentPayDate`
- **Columnas de tiempo:** `idOcPaymentDocumentPayDate`, `payDateCreate`, `payDateSuccess`, `payDateUpdate`, `payDateDue`

---

[← Volver al índice de tablas](../tables.md)
