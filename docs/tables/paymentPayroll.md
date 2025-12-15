# paymentPayroll

> **Tipo:** Tabla

## Descripción

Gestión de pagos

## Estadísticas

- **Filas aproximadas:** 319
- **Columnas:** 6

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idPaymentPayroll` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `payroll` | varchar(1000) | YES | 🔗 FK | `-` |  | - |
| `dateCreate` | date | YES | 🔗 FK | `-` |  | - |
| `sequentialNumber` | int | YES | 🔗 FK | `-` |  | - |
| `format` | varchar(255) | YES | 🔗 FK | `-` |  | - |
| `statusPaymentPayroll` | int | YES | 🔗 FK | `-` |  | - |

### Clave Primaria

- `idPaymentPayroll`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `statusPaymentPayroll` | [paymentStatus](paymentStatus.md) | `idPaymentStatus` | fk_paymentPayroll_statusPaymentPayroll |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| dateCreate | INDEX | `dateCreate` |
| fk_paymentPayroll_statusPaymentPayroll | INDEX | `statusPaymentPayroll` |
| format | INDEX | `format` |
| payroll | INDEX | `payroll` |
| sequentialNumber | INDEX | `sequentialNumber` |

## Notas

- **Auto-increment:** `idPaymentPayroll`
- **Columnas de tiempo:** `dateCreate`

---

[← Volver al índice de tablas](../tables.md)
