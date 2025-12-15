# OC_EMITIDAS_LOOKER

> **Tipo:** Vista (VIEW)

## Descripción

Órdenes de compra

**Comentario:** VIEW

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 17

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `oc` | varchar(267) | NO |  | `-` |  | - |
| `codeProject` | varchar(200) | NO |  | `-` |  | - |
| `codeProjectClean` | varchar(200) | NO |  | `-` |  | - |
| `netTotal` | decimal(20,3) | NO |  | `0.000` |  | - |
| `grossTotal` | decimal(20,3) | NO |  | `0.000` |  | - |
| `paymentMethod` | text | NO |  | `-` |  | - |
| `dateCreation` | varchar(10) | NO |  | `-` |  | - |
| `idUserCreation` | varchar(11) | NO |  | `-` |  | - |
| `paymentStatus` | varchar(100) | NO |  | `-` |  | - |
| `provider` | varchar(351) | NO |  | `-` |  | - |
| `dueDate` | varchar(10) | NO |  | `-` |  | - |
| `invoiceNumber` | varchar(500) | NO |  | `-` |  | - |
| `bank` | varchar(200) | NO |  | `-` |  | - |
| `paymentPayroll` | varchar(374) | NO |  | `-` |  | - |
| `totalInvoice` | decimal(18,2) | NO |  | `0.00` |  | - |
| `sequentialNumber` | varchar(400) | NO |  | `-` |  | - |
| `paymentDate` | varchar(10) | NO |  | `-` |  | - |

## Notas

- **Columnas de tiempo:** `dateCreation`, `dueDate`, `paymentDate`

---

[← Volver al índice de tablas](../tables.md)
