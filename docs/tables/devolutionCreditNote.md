# devolutionCreditNote

> **Tipo:** Tabla

## Descripción

Tabla de datos del sistema

## Estadísticas

- **Filas aproximadas:** 51
- **Columnas:** 10

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idDevolutionCreditNote` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `bsaleId` | int | YES |  | `-` |  | - |
| `motive` | text | YES |  | `-` |  | - |
| `bsaleIdCreditNote` | int | YES |  | `-` |  | - |
| `bsaleHrefCreditNote` | varchar(500) | YES |  | `-` |  | - |
| `amount` | int | YES |  | `-` |  | - |
| `devolutionDate` | datetime | YES |  | `-` |  | - |
| `idInvoiceHead` | int | YES | 🔗 FK | `-` |  | - |
| `urlPdfOriginal` | varchar(500) | YES |  | `-` |  | - |
| `number` | varchar(255) | YES |  | `-` |  | - |

### Clave Primaria

- `idDevolutionCreditNote`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idInvoiceHead` | [invoiceHead](invoiceHead.md) | `idInvoiceHead` | FK_devolutionCreditNote_invoiceHead |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| FK_devolutionCreditNote_invoiceHead | INDEX | `idInvoiceHead` |

## Notas

- **Auto-increment:** `idDevolutionCreditNote`
- **Columnas de tiempo:** `devolutionDate`

---

[← Volver al índice de tablas](../tables.md)
