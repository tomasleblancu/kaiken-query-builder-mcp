# invoiceHead

> **Tipo:** Tabla

## Descripción

Facturación

## Estadísticas

- **Filas aproximadas:** 11,444
- **Columnas:** 20

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idInvoiceHead` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `bsaleId` | int | YES |  | `-` |  | - |
| `href` | varchar(2000) | YES |  | `-` |  | - |
| `dateEmission` | datetime | YES |  | `-` |  | - |
| `documentNumber` | varchar(100) | YES |  | `-` |  | - |
| `totalAmount` | bigint | YES |  | `-` |  | - |
| `netAmount` | bigint | YES |  | `-` |  | - |
| `taxAmount` | bigint | YES |  | `-` |  | - |
| `address` | varchar(2000) | YES |  | `-` |  | - |
| `municipality` | varchar(2000) | YES |  | `-` |  | - |
| `city` | varchar(2000) | YES |  | `-` |  | - |
| `originalPdfUrl` | varchar(2000) | YES |  | `-` |  | - |
| `xmlUrl` | varchar(2000) | YES |  | `-` |  | - |
| `idClient` | int | YES | 🔗 FK | `-` |  | - |
| `oc` | varchar(200) | YES |  | `-` |  | - |
| `idSociety` | int | YES | 🔗 FK | `-` |  | - |
| `projectCode` | varchar(200) | YES |  | `-` |  | - |
| `idUser` | int | YES | 🔗 FK | `-` |  | - |
| `informedSii` | int | YES |  | `-` |  | - |
| `isExternal` | int | YES | 🔗 FK | `0` |  | 0 = Interna, 1 = Externa |

### Clave Primaria

- `idInvoiceHead`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idUser` | [users](users.md) | `idUser` | fk_1_isUser |
| `idClient` | [client](client.md) | `idClient` | idClientInvoice |
| `idSociety` | [society](society.md) | `idSociety` | idSociety |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [devolutionCreditNote](devolutionCreditNote.md) | `idInvoiceHead` | FK_devolutionCreditNote_invoiceHead |
| [invoiceDeliveryNotes](invoiceDeliveryNotes.md) | `idInvoiceHead` | idInvoiceHead |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| fk_1_isUser | INDEX | `idUser` |
| idClientInvoice | INDEX | `idClient` |
| idSociety | INDEX | `idSociety` |
| idx_invoiceHead_isExternal | INDEX | `isExternal` |

## Notas

- **Auto-increment:** `idInvoiceHead`
- **Columnas de tiempo:** `dateEmission`

---

[← Volver al índice de tablas](../tables.md)
