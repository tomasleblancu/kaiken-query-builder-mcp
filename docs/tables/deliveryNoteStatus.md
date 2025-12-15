# deliveryNoteStatus

> **Tipo:** Tabla

## Descripción

Notas de entrega

## Estadísticas

- **Filas aproximadas:** 2
- **Columnas:** 2

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idDeliveryNoteStatus` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `deliveryNoteStatus` | varchar(50) | YES |  | `-` |  | - |

### Clave Primaria

- `idDeliveryNoteStatus`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [deliveryNoteHead](deliveryNoteHead.md) | `idDeliveryNoteStatus` | fk_deliveryNoteHead_deliveryNoteStatus |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|

## Notas

- **Auto-increment:** `idDeliveryNoteStatus`

---

[← Volver al índice de tablas](../tables.md)
