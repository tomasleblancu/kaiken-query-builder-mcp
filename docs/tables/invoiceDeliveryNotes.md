# invoiceDeliveryNotes

> **Tipo:** Tabla

## Descripción

Facturación

## Estadísticas

- **Filas aproximadas:** 12,080
- **Columnas:** 4

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idInvoiceDeliveryNotes` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idInvoiceHead` | int | YES | 🔗 FK | `-` |  | - |
| `idDeliveryNoteHead` | int | YES | 🔗 FK | `-` |  | - |
| `referenced` | int | YES |  | `-` |  | - |

### Clave Primaria

- `idInvoiceDeliveryNotes`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idDeliveryNoteHead` | [deliveryNoteHead](deliveryNoteHead.md) | `id` | idDeliveryNoteHead_2 |
| `idInvoiceHead` | [invoiceHead](invoiceHead.md) | `idInvoiceHead` | idInvoiceHead |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| idDeliveryNoteHead_2 | INDEX | `idDeliveryNoteHead` |
| idInvoiceHead | INDEX | `idInvoiceHead` |

## Notas

- **Auto-increment:** `idInvoiceDeliveryNotes`

---

[← Volver al índice de tablas](../tables.md)
