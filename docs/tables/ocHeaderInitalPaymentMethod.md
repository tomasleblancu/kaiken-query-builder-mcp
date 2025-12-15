# ocHeaderInitalPaymentMethod

> **Tipo:** Tabla

## Descripción

Órdenes de compra

## Estadísticas

- **Filas aproximadas:** 11,656
- **Columnas:** 4

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idOcHeaderInitalPaymentMethod` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idOcHeader` | int | YES | 🔗 FK | `-` |  | - |
| `paymentMethodId` | int | YES | 🔗 FK | `-` |  | - |
| `amount` | int | YES |  | `-` |  | - |

### Clave Primaria

- `idOcHeaderInitalPaymentMethod`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idOcHeader` | [ocHeader](ocHeader.md) | `idOcHeader` | idOcHeader |
| `paymentMethodId` | [paymentMethod](paymentMethod.md) | `idPaymentMethod` | paymentMethodId |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| idOcHeader | INDEX | `idOcHeader` |
| paymentMethodId | INDEX | `paymentMethodId` |

## Notas

- **Auto-increment:** `idOcHeaderInitalPaymentMethod`

---

[← Volver al índice de tablas](../tables.md)
