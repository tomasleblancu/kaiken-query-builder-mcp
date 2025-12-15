# ocHeaderPayment

> **Tipo:** Tabla

## Descripción

Órdenes de compra

## Estadísticas

- **Filas aproximadas:** 20,163
- **Columnas:** 15

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idOcHeaderPayment` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `oc` | varchar(100) | YES | 🔗 FK | `-` |  | - |
| `paymentPayroll` | varchar(400) | YES | 🔗 FK | `-` |  | - |
| `rutN` | varchar(100) | YES |  | `-` |  | - |
| `name` | varchar(400) | YES |  | `-` |  | - |
| `mail` | varchar(1000) | YES |  | `-` |  | - |
| `codeBank` | varchar(20) | YES | 🔗 FK | `-` |  | - |
| `typeAccount` | varchar(255) | YES | 🔗 FK | `-` |  | - |
| `acount` | varchar(255) | YES |  | `-` |  | - |
| `glosa` | text | YES |  | `-` |  | - |
| `netToalOC` | int | YES |  | `-` |  | - |
| `grossTotalOC` | int | YES | 🔗 FK | `-` |  | - |
| `statusLinePayment` | int | YES | 🔗 FK | `-` |  | - |
| `idOcHeader` | int | YES | 🔗 FK | `-` |  | - |
| `idOcPaymentDocument` | int | YES | 🔗 FK | `-` |  | - |

### Clave Primaria

- `idOcHeaderPayment`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idOcPaymentDocument` | [ocPaymentDocument](ocPaymentDocument.md) | `idOcPaymentDocument` | fk_idOcPaymentDocument |
| `codeBank` | [bank](bank.md) | `code` | fk_ocHeaderPayment_codeBank |
| `idOcHeader` | [ocHeader](ocHeader.md) | `idOcHeader` | fk_ocHeaderPayment_oc |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| codeBank | INDEX | `codeBank` |
| fk_idOcPaymentDocument | INDEX | `idOcPaymentDocument` |
| fk_ocHeaderPayment_oc | INDEX | `idOcHeader` |
| grossTotalOC | INDEX | `grossTotalOC` |
| idOcHeaderPayment | INDEX | `idOcHeaderPayment` |
| idx_oc | INDEX | `oc` |
| paymentPayroll | INDEX | `paymentPayroll` |
| statusLinePayment | INDEX | `statusLinePayment` |
| typeAccount | INDEX | `typeAccount` |

## Notas

- **Auto-increment:** `idOcHeaderPayment`

---

[← Volver al índice de tablas](../tables.md)
