# paymentMethodParts

> **Tipo:** Tabla

## Descripción

Gestión de pagos

## Estadísticas

- **Filas aproximadas:** 23
- **Columnas:** 7

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idPaymentMethodParts` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idPaymentMethod` | int | YES | 🔗 FK | `-` |  | - |
| `percent` | decimal(10,3) | YES | 🔗 FK | `-` |  | - |
| `part` | int | YES | 🔗 FK | `-` |  | - |
| `type` | varchar(1000) | YES | 🔗 FK | `-` |  | - |
| `days` | int | YES | 🔗 FK | `-` |  | - |
| `idNewPayment` | int | YES |  | `-` |  | - |

### Clave Primaria

- `idPaymentMethodParts`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idPaymentMethod` | [paymentMethod](paymentMethod.md) | `idPaymentMethod` | fk_paymentMehod |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| days | INDEX | `days` |
| fk_paymentMehod | INDEX | `idPaymentMethod` |
| part | INDEX | `part` |
| percent | INDEX | `percent` |
| type | INDEX | `type` |

## Notas

- **Auto-increment:** `idPaymentMethodParts`

---

[← Volver al índice de tablas](../tables.md)
