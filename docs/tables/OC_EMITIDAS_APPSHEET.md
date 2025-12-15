# OC_EMITIDAS_APPSHEET

> **Tipo:** Vista (VIEW)

## Descripción

Órdenes de compra

**Comentario:** VIEW

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 18

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `oc` | varchar(267) | NO |  | `-` |  | - |
| `codeProject` | varchar(200) | NO |  | `-` |  | - |
| `codeProjectClean` | varchar(200) | NO |  | `-` |  | - |
| `netTotal` | decimal(22,4) | YES |  | `-` |  | - |
| `grossTotal` | decimal(21,3) | NO |  | `0.000` |  | - |
| `paymentMethod` | text | NO |  | `-` |  | - |
| `dateCreation` | varchar(10) | NO |  | `-` |  | - |
| `idUserCreation` | varchar(11) | NO |  | `-` |  | - |
| `paymentStatus` | varchar(100) | NO |  | `-` |  | - |
| `provider` | varchar(11) | NO |  | `-` |  | - |
| `invoiceNumber` | text | NO |  | `-` |  | - |
| `bank` | varchar(200) | NO |  | `-` |  | - |
| `sequentialNumber` | varchar(400) | NO |  | `-` |  | - |
| `paymentDate` | varchar(10) | NO |  | `-` |  | - |
| `isGasto` | int | NO |  | `0` |  | - |
| `isIntercompany` | int | NO |  | `0` |  | - |
| `isTCEmpleado` | int | NO |  | `0` |  | - |
| `isTCEmpresa` | int | NO |  | `0` |  | - |

## Notas

- **Columnas de tiempo:** `dateCreation`, `paymentDate`

---

[← Volver al índice de tablas](../tables.md)
