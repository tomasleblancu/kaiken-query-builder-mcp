# banking_conciliacionmovimientotarjeta

> **Tipo:** Tabla

## Descripción

Módulo de gestión bancaria

## Estadísticas

- **Filas aproximadas:** 761
- **Columnas:** 10

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | bigint | NO | 🔑 PK | `-` | auto_increment | - |
| `payment_document_id` | int | NO | 🔗 FK | `-` |  | - |
| `monto_conciliado` | decimal(15,2) | NO |  | `-` |  | - |
| `fecha_conciliacion` | datetime(6) | NO | 🔗 FK | `-` |  | - |
| `usuario_conciliacion` | varchar(255) | YES |  | `-` |  | - |
| `observaciones` | longtext | YES |  | `-` |  | - |
| `estado` | varchar(20) | NO | 🔗 FK | `-` |  | - |
| `fecha_anulacion` | datetime(6) | YES |  | `-` |  | - |
| `usuario_anulacion` | varchar(255) | YES |  | `-` |  | - |
| `movimiento_tarjeta_id` | bigint | NO | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `movimiento_tarjeta_id` | [banking_movimientotarjetacredito](banking_movimientotarjetacredito.md) | `id` | banking_conciliacion_movimiento_tarjeta_i_ef484ac0_fk_banking_m |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| banking_con_estado_b42056_idx | INDEX | `estado` |
| banking_con_fecha_c_5e8da8_idx | INDEX | `fecha_conciliacion` |
| banking_con_movimie_8071b7_idx | INDEX | `movimiento_tarjeta_id` |
| banking_con_payment_508de5_idx | INDEX | `payment_document_id` |

## Notas

- **Auto-increment:** `id`

---

[← Volver al índice de tablas](../tables.md)
