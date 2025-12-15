# deliveryNoteDetail

> **Tipo:** Tabla

## Descripción

Notas de entrega

## Estadísticas

- **Filas aproximadas:** 160,317
- **Columnas:** 5

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idDeliveryNoteHead` | int | NO | 🔗 FK | `-` |  | - |
| `idProduct` | int | NO |  | `-` |  | - |
| `quantity` | int | NO |  | `-` |  | - |
| `priceGuide` | int | YES |  | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idDeliveryNoteHead` | [deliveryNoteHead](deliveryNoteHead.md) | `id` | deliveryNoteDetail_ibfk_1 |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| idDeliveryNoteHead | INDEX | `idDeliveryNoteHead` |

## Notas

- **Auto-increment:** `id`

---

[← Volver al índice de tablas](../tables.md)
