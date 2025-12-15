# paymentDocumentStatus

> **Tipo:** Tabla

## Descripción

Órdenes de compra

## Estadísticas

- **Filas aproximadas:** 4
- **Columnas:** 2

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idPaymentDocumentStatus` | int | NO | 🔑 PK | `-` |  | - |
| `statusPayment` | varchar(100) | YES |  | `-` |  | - |

### Clave Primaria

- `idPaymentDocumentStatus`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [ocPaymentDocumentPayDate](ocPaymentDocumentPayDate.md) | `idPaymentDocumentStatus` | ocPaymentDocumentPayDate_ibfk_4 |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| idPaymentDocumentStatus | INDEX | `idPaymentDocumentStatus` |

## Notas


---

[← Volver al índice de tablas](../tables.md)
