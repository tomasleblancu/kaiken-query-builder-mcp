# paymentDocumentProviderType

> **Tipo:** Tabla

## Descripción

Órdenes de compra

## Estadísticas

- **Filas aproximadas:** 7
- **Columnas:** 2

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idPaymentDocumentProviderType` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `providerType` | varchar(100) | YES |  | `-` |  | - |

### Clave Primaria

- `idPaymentDocumentProviderType`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [ocHeaderBalance](ocHeaderBalance.md) | `type` | FK_Type |
| [ocPaymentDocumentPayDate](ocPaymentDocumentPayDate.md) | `idPaymentDocumentProviderType` | ocPaymentDocumentPayDate_ibfk_5 |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|

## Notas

- **Auto-increment:** `idPaymentDocumentProviderType`

---

[← Volver al índice de tablas](../tables.md)
