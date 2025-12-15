# paymentStatus

> **Tipo:** Tabla

## Descripción

Gestión de pagos

## Estadísticas

- **Filas aproximadas:** 2
- **Columnas:** 2

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idPaymentStatus` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `paymentStatus` | varchar(100) | YES | 🔗 FK | `-` |  | - |

### Clave Primaria

- `idPaymentStatus`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [ocHeader](ocHeader.md) | `idPaymentStatus` | fk_ocHeader_idPaymentStatus |
| [paymentPayroll](paymentPayroll.md) | `statusPaymentPayroll` | fk_paymentPayroll_statusPaymentPayroll |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| idPaymentStatus | INDEX | `idPaymentStatus` |
| paymentStatus | INDEX | `paymentStatus` |

## Notas

- **Auto-increment:** `idPaymentStatus`

---

[← Volver al índice de tablas](../tables.md)
