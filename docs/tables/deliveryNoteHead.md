# deliveryNoteHead

> **Tipo:** Tabla

## Descripción

Notas de entrega

## Estadísticas

- **Filas aproximadas:** 28,514
- **Columnas:** 17

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idUser` | int | NO | 🔗 FK | `-` |  | - |
| `created_at` | datetime | YES |  | `CURRENT_TIMESTAMP` | DEFAULT_GENERATED | - |
| `projectCode` | varchar(100) | YES | 🔗 FK | `-` |  | - |
| `idClient` | int | YES | 🔗 FK | `-` |  | - |
| `netSale` | decimal(10,2) | YES |  | `-` |  | - |
| `grossSale` | decimal(10,2) | YES |  | `-` |  | - |
| `oc` | varchar(100) | YES |  | `-` |  | - |
| `guideNumber` | int | YES | 🔗 FK | `-` |  | - |
| `linkGuide` | varchar(255) | YES |  | `-` |  | - |
| `dateEmission` | date | YES |  | `-` |  | - |
| `linkGuideCedible` | varchar(255) | YES |  | `-` |  | - |
| `idSociety` | int | YES | 🔗 FK | `-` |  | - |
| `idShipping` | int | YES |  | `-` |  | - |
| `type` | varchar(1) | YES |  | `-` |  | L = Licitacion, S = Pedido de (S)uministro |
| `idDeliveryNoteStatus` | int | YES | 🔗 FK | `1` |  | - |
| `isExternal` | int | YES |  | `0` |  | 0 = Generada en sistema, 1 = Generada por fuera |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idDeliveryNoteStatus` | [deliveryNoteStatus](deliveryNoteStatus.md) | `idDeliveryNoteStatus` | fk_deliveryNoteHead_deliveryNoteStatus |
| `idSociety` | [society](society.md) | `idSociety` | fk_deliveryNoteHead_society |
| `idClient` | [client](client.md) | `idClient` | idClient |
| `idUser` | [users](users.md) | `idUser` | idUser |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [deliveryNoteDetail](deliveryNoteDetail.md) | `idDeliveryNoteHead` | deliveryNoteDetail_ibfk_1 |
| [invoiceDeliveryNotes](invoiceDeliveryNotes.md) | `idDeliveryNoteHead` | idDeliveryNoteHead_2 |
| [registeredMissings](registeredMissings.md) | `idDeliveryNoteHead` | fk_registeredMissings_idDeliveryNoteHead |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| fk_deliveryNoteHead_deliveryNoteStatus | INDEX | `idDeliveryNoteStatus` |
| fk_deliveryNoteHead_society | INDEX | `idSociety` |
| idClient | INDEX | `idClient` |
| idUser | INDEX | `idUser` |
| idx_dnh_guide_society | INDEX | `guideNumber,idSociety` |
| idx_projectCode_society | INDEX | `projectCode,idSociety` |

## Notas

- **Auto-increment:** `id`
- **Columnas de tiempo:** `dateEmission`

---

[← Volver al índice de tablas](../tables.md)
