# billingData

> **Tipo:** Tabla

## Descripción

Facturación

## Estadísticas

- **Filas aproximadas:** 4,421
- **Columnas:** 23

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idBillingData` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `entryDate` | datetime | YES |  | `-` |  | - |
| `code` | varchar(255) | YES | ✨ UNIQUE | `-` |  | - |
| `plaintiff` | text | YES |  | `-` |  | - |
| `projectManager` | varchar(500) | YES |  | `-` |  | - |
| `operationStatus` | varchar(500) | YES |  | `-` |  | - |
| `amountGGDD` | decimal(64,0) | NO |  | `0` |  | - |
| `GGDD` | text | YES |  | `-` |  | - |
| `grossSale` | bigint | NO |  | `0` |  | - |
| `amountOC` | varchar(500) | NO |  | `-` |  | - |
| `OC` | text | YES |  | `-` |  | - |
| `amountInvoice` | decimal(64,0) | NO |  | `0` |  | - |
| `invoice` | text | YES |  | `-` |  | - |
| `ammountNc` | decimal(64,0) | NO |  | `0` |  | - |
| `nc` | text | YES |  | `-` |  | - |
| `updateDate` | datetime | YES |  | `-` |  | - |
| `society` | varchar(255) | YES |  | `-` |  | - |
| `idBillingStatus` | int | YES | 🔗 FK | `-` |  | - |
| `dateUpdate` | datetime | YES |  | `-` |  | - |
| `comment` | text | YES |  | `-` |  | - |
| `type` | varchar(10) | YES |  | `-` |  | - |
| `revision` | varchar(100) | YES |  | `-` |  | - |
| `dateRevision` | date | YES |  | `-` |  | - |

### Clave Primaria

- `idBillingData`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idBillingStatus` | [billingStatus](billingStatus.md) | `idBillingStatus` | idBillingStatus |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| idBillingStatus | INDEX | `idBillingStatus` |
| uniq_code | UNIQUE | `code` |

## Notas

- **Auto-increment:** `idBillingData`
- **Columnas de tiempo:** `entryDate`, `updateDate`, `dateUpdate`, `dateRevision`

---

[← Volver al índice de tablas](../tables.md)
