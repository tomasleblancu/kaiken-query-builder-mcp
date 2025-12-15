# paymentAccount

> **Tipo:** Tabla

## Descripción

Gestión de pagos

## Estadísticas

- **Filas aproximadas:** 2
- **Columnas:** 2

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idPaymentAccount` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `paymentAccount` | varchar(100) | YES | 🔗 FK | `-` |  | - |

### Clave Primaria

- `idPaymentAccount`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [ocHeader](ocHeader.md) | `idPaymentAccount` | fk_ocHeader_idPaymentAccount |
| [ocPaymentDocumentPayDate](ocPaymentDocumentPayDate.md) | `idPaymentAccount` | idPaymentAccount |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| idPaymentAccount | INDEX | `idPaymentAccount` |
| paymentAccount | INDEX | `paymentAccount` |

## Notas

- **Auto-increment:** `idPaymentAccount`

---

[← Volver al índice de tablas](../tables.md)
