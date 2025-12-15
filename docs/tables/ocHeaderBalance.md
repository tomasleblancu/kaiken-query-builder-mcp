# ocHeaderBalance

> **Tipo:** Tabla

## Descripción

Órdenes de compra

## Estadísticas

- **Filas aproximadas:** 406
- **Columnas:** 10

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idOcHeaderBalance` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idOcHeader` | int | YES |  | `-` |  | - |
| `oc` | varchar(100) | YES |  | `-` |  | - |
| `provider` | varchar(100) | YES |  | `-` |  | - |
| `amount` | int | YES |  | `-` |  | - |
| `type` | int | YES | 🔗 FK | `-` |  | - |
| `dateBalance` | date | YES |  | `-` |  | - |
| `timeBalance` | time | YES |  | `-` |  | - |
| `idOcPaymentDocument` | int | YES | 🔗 FK | `-` |  | - |
| `typeText` | varchar(100) | YES |  | `-` |  | - |

### Clave Primaria

- `idOcHeaderBalance`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idOcPaymentDocument` | [ocPaymentDocument](ocPaymentDocument.md) | `idOcPaymentDocument` | FK_idOcPaymentDocument2 |
| `type` | [paymentDocumentProviderType](paymentDocumentProviderType.md) | `idPaymentDocumentProviderType` | FK_Type |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| FK_idOcPaymentDocument2 | INDEX | `idOcPaymentDocument` |
| FK_Type | INDEX | `type` |

## Notas

- **Auto-increment:** `idOcHeaderBalance`
- **Columnas de tiempo:** `dateBalance`

---

[← Volver al índice de tablas](../tables.md)
