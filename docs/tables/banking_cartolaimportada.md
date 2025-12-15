# banking_cartolaimportada

> **Tipo:** Tabla

## Descripción

Módulo de gestión bancaria

## Estadísticas

- **Filas aproximadas:** 20
- **Columnas:** 7

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | bigint | NO | 🔑 PK | `-` | auto_increment | - |
| `fecha_descarga` | date | NO |  | `-` |  | - |
| `tipo_banco` | varchar(50) | NO |  | `-` |  | - |
| `cantidad_movimientos` | int | NO |  | `-` |  | - |
| `fecha_importacion` | datetime(6) | NO | 🔗 FK | `-` |  | - |
| `usuario_importacion` | varchar(255) | YES |  | `-` |  | - |
| `tarjeta_id` | bigint | NO | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `tarjeta_id` | [banking_tarjetacredito](banking_tarjetacredito.md) | `id` | banking_cartolaimpor_tarjeta_id_6ee57b81_fk_banking_t |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [banking_movimientotarjetacredito](banking_movimientotarjetacredito.md) | `cartola_importada_id` | banking_movimientota_cartola_importada_id_1d28b6b5_fk_banking_c |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| banking_car_fecha_i_41eb7a_idx | INDEX | `fecha_importacion` |
| banking_car_tarjeta_06f791_idx | INDEX | `tarjeta_id,fecha_descarga` |
| banking_cartolaimportada_tarjeta_id_fecha_descarga_fa7c9d88_uniq | UNIQUE | `tarjeta_id,fecha_descarga` |

## Notas

- **Auto-increment:** `id`

---

[← Volver al índice de tablas](../tables.md)
