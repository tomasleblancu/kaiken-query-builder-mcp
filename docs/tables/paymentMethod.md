# paymentMethod

> **Tipo:** Tabla

## Descripción

Gestión de pagos

## Estadísticas

- **Filas aproximadas:** 131
- **Columnas:** 11

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idPaymentMethod` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `paymentMethod` | varchar(100) | YES |  | `-` |  | - |
| `paymentPdf` | varchar(255) | YES |  | `-` |  | - |
| `extraDays` | int | YES |  | `-` |  | - |
| `aproxDay` | int | YES |  | `-` |  | - |
| `rutBase` | varchar(100) | YES |  | `-` |  | - |
| `refund` | int | YES |  | `-` |  | - |
| `idBank` | int | YES | 🔗 FK | `-` |  | - |
| `rut` | varchar(20) | YES |  | `-` |  | - |
| `dateUpdate` | datetime | YES |  | `-` |  | - |
| `idProvider` | int | YES |  | `-` |  | - |

### Clave Primaria

- `idPaymentMethod`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idBank` | [bank](bank.md) | `idBank` | fk_idBank |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [banking_tarjetacredito](banking_tarjetacredito.md) | `paymentMethod` | banking_tarjetacredi_paymentMethod_4f1231e1_fk_paymentMe |
| [ocHeader](ocHeader.md) | `idPaymentMethodList` | fk_ocHeader_idPaymentMethodList |
| [ocHeader](ocHeader.md) | `paymentMethod` | FK_ocpaymentMethod_paymentMethod |
| [ocHeaderInitalPaymentMethod](ocHeaderInitalPaymentMethod.md) | `paymentMethodId` | paymentMethodId |
| [ocPaymentDocument](ocPaymentDocument.md) | `idPaymentMethod` | ocPaymentDocument_ibfk_2 |
| [paymentMethodParts](paymentMethodParts.md) | `idPaymentMethod` | fk_paymentMehod |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| fk_idBank | INDEX | `idBank` |

## Notas

- **Auto-increment:** `idPaymentMethod`
- **Columnas de tiempo:** `dateUpdate`

---

[← Volver al índice de tablas](../tables.md)
