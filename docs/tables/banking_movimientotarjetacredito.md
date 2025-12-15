# banking_movimientotarjetacredito

> **Tipo:** Tabla

## Descripción

Módulo de gestión bancaria

## Estadísticas

- **Filas aproximadas:** 984
- **Columnas:** 22

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | bigint | NO | 🔑 PK | `-` | auto_increment | - |
| `external_id` | varchar(100) | NO | ✨ UNIQUE | `-` |  | - |
| `fecha_movimiento` | date | NO | 🔗 FK | `-` |  | - |
| `fecha_cargo` | date | NO | 🔗 FK | `-` |  | - |
| `descripcion` | longtext | NO |  | `-` |  | - |
| `tipo` | varchar(50) | NO | 🔗 FK | `-` |  | - |
| `monto` | decimal(15,2) | NO |  | `-` |  | - |
| `lugar` | varchar(255) | NO |  | `-` |  | - |
| `moneda` | varchar(10) | NO |  | `-` |  | - |
| `cuotas` | int | YES |  | `-` |  | - |
| `cuota_numero` | int | YES |  | `-` |  | - |
| `rut_proveedor` | varchar(50) | YES |  | `-` |  | - |
| `categoria` | varchar(255) | YES |  | `-` |  | - |
| `estado_conciliacion` | varchar(50) | NO | 🔗 FK | `-` |  | - |
| `monto_conciliado` | decimal(15,2) | NO |  | `-` |  | - |
| `saldo_por_conciliar` | decimal(15,2) | NO |  | `-` |  | - |
| `observaciones` | longtext | YES |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `last_update` | datetime(6) | NO |  | `-` |  | - |
| `tarjeta_id` | bigint | NO | 🔗 FK | `-` |  | - |
| `cartola_importada_id` | bigint | YES | 🔗 FK | `-` |  | - |
| `sugerencia_documento_id` | int | YES |  | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `cartola_importada_id` | [banking_cartolaimportada](banking_cartolaimportada.md) | `id` | banking_movimientota_cartola_importada_id_1d28b6b5_fk_banking_c |
| `tarjeta_id` | [banking_tarjetacredito](banking_tarjetacredito.md) | `id` | banking_movimientota_tarjeta_id_53fffce6_fk_banking_t |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [banking_conciliacionmovimientotarjeta](banking_conciliacionmovimientotarjeta.md) | `movimiento_tarjeta_id` | banking_conciliacion_movimiento_tarjeta_i_ef484ac0_fk_banking_m |
| [banking_grupopagotarjeta](banking_grupopagotarjeta.md) | `movimiento_abono_id` | banking_grupopagotar_movimiento_abono_id_01a4b291_fk_banking_m |
| [banking_grupopagotarjeta_movimientos](banking_grupopagotarjeta_movimientos.md) | `movimientotarjetacredito_id` | banking_grupopagotar_movimientotarjetacre_be1206b8_fk_banking_m |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| banking_mov_estado__9fd7cb_idx | INDEX | `estado_conciliacion` |
| banking_mov_externa_8ab97e_idx | INDEX | `external_id` |
| banking_mov_fecha_c_3d2023_idx | INDEX | `fecha_cargo` |
| banking_mov_fecha_m_211c19_idx | INDEX | `fecha_movimiento` |
| banking_mov_tarjeta_91c7c9_idx | INDEX | `tarjeta_id` |
| banking_mov_tipo_a9cbf1_idx | INDEX | `tipo` |
| banking_movimientota_cartola_importada_id_1d28b6b5_fk_banking_c | INDEX | `cartola_importada_id` |
| external_id | UNIQUE | `external_id` |

## Notas

- **Auto-increment:** `id`
- **Columnas de tiempo:** `last_update`

---

[← Volver al índice de tablas](../tables.md)
