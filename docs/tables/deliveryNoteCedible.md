# deliveryNoteCedible

> **Tipo:** Tabla

## Descripción

Notas de entrega

## Estadísticas

- **Filas aproximadas:** 10,198
- **Columnas:** 4

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idDeliveryNoteCedible` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idSociety` | int | YES | 🔗 FK | `-` |  | - |
| `guideNumber` | int | YES |  | `-` |  | - |
| `fileName` | varchar(500) | YES |  | `-` |  | - |

### Clave Primaria

- `idDeliveryNoteCedible`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idSociety` | [society](society.md) | `idSociety` | FK_deliveryNoteCedible_society |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| idx_guideNumber_idSociety | INDEX | `idSociety,guideNumber` |

## Notas

- **Auto-increment:** `idDeliveryNoteCedible`

---

[← Volver al índice de tablas](../tables.md)
