# getPaymentListAllView

> **Tipo:** Vista (VIEW)

## Descripción

Gestión de pagos

**Comentario:** VIEW

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 31

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `oc` | varchar(267) | YES |  | `-` |  | - |
| `codeProject` | varchar(200) | YES |  | `-` |  | - |
| `netTotal` | decimal(20,3) | YES |  | `-` |  | - |
| `grossTotal` | decimal(20,3) | YES |  | `-` |  | - |
| `paymentMethod` | text | YES |  | `-` |  | - |
| `idPaymentMethod` | int | YES |  | `0` |  | - |
| `paymentRealMethod` | varchar(100) | YES |  | `-` |  | - |
| `dateCreation` | date | YES |  | `-` |  | - |
| `userCreation` | varchar(100) | YES |  | `-` |  | - |
| `idPaymentStatus` | bigint | YES |  | `-` |  | - |
| `idPaymentAccount` | int | YES |  | `-` |  | - |
| `paymentStatus` | varchar(100) | YES |  | `-` |  | - |
| `paymentAccount` | varchar(100) | YES |  | `-` |  | - |
| `provider` | varchar(351) | YES |  | `-` |  | - |
| `dueDate` | varchar(10) | YES |  | `-` |  | - |
| `invoiceNumber` | varchar(500) | YES |  | `-` |  | - |
| `mail` | text | YES |  | `-` |  | - |
| `codigoBanco` | varchar(255) | YES |  | `-` |  | - |
| `tipoCuenta` | varchar(255) | YES |  | `-` |  | - |
| `cuenta` | varchar(255) | YES |  | `-` |  | - |
| `bank` | varchar(200) | YES |  | `-` |  | - |
| `paymentPayroll` | varchar(374) | YES |  | `-` |  | - |
| `adjust` | decimal(42,0) | YES |  | `-` |  | - |
| `adjustComment` | varchar(255) | YES |  | `-` |  | - |
| `rutTC` | varchar(45) | YES |  | `-` |  | - |
| `mailTC` | text | YES |  | `-` |  | - |
| `codigoBancoTC` | varchar(255) | YES |  | `-` |  | - |
| `tipoCuentaTC` | varchar(255) | YES |  | `-` |  | - |
| `cuentaTC` | varchar(255) | YES |  | `-` |  | - |
| `nameTC` | varchar(100) | YES |  | `-` |  | - |
| `totalInvoice` | decimal(18,2) | YES |  | `-` |  | - |

## Notas

- **Columnas de tiempo:** `dateCreation`, `dueDate`

---

[← Volver al índice de tablas](../tables.md)
