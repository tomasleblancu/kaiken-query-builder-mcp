# banking_grupopagotarjeta_movimientos

> **Tipo:** Tabla

## Descripción

Módulo de gestión bancaria

## Estadísticas

- **Filas aproximadas:** 724
- **Columnas:** 3

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | bigint | NO | 🔑 PK | `-` | auto_increment | - |
| `grupopagotarjeta_id` | bigint | NO | 🔗 FK | `-` |  | - |
| `movimientotarjetacredito_id` | bigint | NO | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `grupopagotarjeta_id` | [banking_grupopagotarjeta](banking_grupopagotarjeta.md) | `id` | banking_grupopagotar_grupopagotarjeta_id_3dc70e6f_fk_banking_g |
| `movimientotarjetacredito_id` | [banking_movimientotarjetacredito](banking_movimientotarjetacredito.md) | `id` | banking_grupopagotar_movimientotarjetacre_be1206b8_fk_banking_m |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| banking_grupopagotar_movimientotarjetacre_be1206b8_fk_banking_m | INDEX | `movimientotarjetacredito_id` |
| banking_grupopagotarjeta_grupopagotarjeta_id_movi_7a902787_uniq | UNIQUE | `grupopagotarjeta_id,movimientotarjetacredito_id` |

## Notas

- **Auto-increment:** `id`

---

[← Volver al índice de tablas](../tables.md)
