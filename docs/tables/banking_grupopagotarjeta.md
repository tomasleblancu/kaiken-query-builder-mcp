# banking_grupopagotarjeta

> **Tipo:** Tabla

## Descripción

Módulo de gestión bancaria

## Estadísticas

- **Filas aproximadas:** 16
- **Columnas:** 13

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | bigint | NO | 🔑 PK | `-` | auto_increment | - |
| `monto_total` | decimal(15,2) | NO |  | `-` |  | - |
| `fecha_creacion` | datetime(6) | NO | 🔗 FK | `-` |  | - |
| `fecha_pago` | date | YES | 🔗 FK | `-` |  | - |
| `usuario_creacion` | varchar(255) | YES |  | `-` |  | - |
| `estado` | varchar(20) | NO | 🔗 FK | `-` |  | - |
| `observaciones` | longtext | YES |  | `-` |  | - |
| `comprobante_pago` | varchar(255) | YES |  | `-` |  | - |
| `tarjeta_id` | bigint | NO | 🔗 FK | `-` |  | - |
| `estado_abono` | varchar(20) | NO | 🔗 FK | `-` |  | - |
| `fecha_abono` | date | YES |  | `-` |  | - |
| `movimiento_abono_id` | bigint | YES | 🔗 FK | `-` |  | - |
| `considerado_en_balance` | tinyint(1) | NO |  | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `movimiento_abono_id` | [banking_movimientotarjetacredito](banking_movimientotarjetacredito.md) | `id` | banking_grupopagotar_movimiento_abono_id_01a4b291_fk_banking_m |
| `tarjeta_id` | [banking_tarjetacredito](banking_tarjetacredito.md) | `id` | banking_grupopagotar_tarjeta_id_69a47680_fk_banking_t |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [banking_grupopagotarjeta_movimientos](banking_grupopagotarjeta_movimientos.md) | `grupopagotarjeta_id` | banking_grupopagotar_grupopagotarjeta_id_3dc70e6f_fk_banking_g |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| banking_gru_estado_1f9b1f_idx | INDEX | `estado` |
| banking_gru_estado__187592_idx | INDEX | `estado_abono` |
| banking_gru_fecha_c_417c01_idx | INDEX | `fecha_creacion` |
| banking_gru_fecha_p_db530a_idx | INDEX | `fecha_pago` |
| banking_gru_movimie_8b2a33_idx | INDEX | `movimiento_abono_id` |
| banking_gru_tarjeta_733ed5_idx | INDEX | `tarjeta_id` |

## Notas

- **Auto-increment:** `id`

---

[← Volver al índice de tablas](../tables.md)
