# banking_tarjetacredito

> **Tipo:** Tabla

## Descripción

Módulo de gestión bancaria

## Estadísticas

- **Filas aproximadas:** 5
- **Columnas:** 14

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | bigint | NO | 🔑 PK | `-` | auto_increment | - |
| `numero` | varchar(50) | NO | ✨ UNIQUE | `-` |  | - |
| `banco` | varchar(255) | NO | 🔗 FK | `-` |  | - |
| `tipo` | varchar(50) | NO |  | `-` |  | - |
| `nickname` | varchar(255) | NO |  | `-` |  | - |
| `titular` | varchar(255) | NO |  | `-` |  | - |
| `sociedad` | varchar(255) | NO |  | `-` |  | - |
| `limite_credito` | decimal(15,2) | YES |  | `-` |  | - |
| `activa` | tinyint(1) | NO | 🔗 FK | `-` |  | - |
| `fecha_vencimiento` | date | YES |  | `-` |  | - |
| `last_update` | datetime(6) | NO |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `rut_sociedad_id` | int | YES | 🔗 FK | `-` |  | - |
| `paymentMethod` | int | YES | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `paymentMethod` | [paymentMethod](paymentMethod.md) | `idPaymentMethod` | banking_tarjetacredi_paymentMethod_4f1231e1_fk_paymentMe |
| `rut_sociedad_id` | [society](society.md) | `idSociety` | banking_tarjetacredi_rut_sociedad_id_992b6a70_fk_society_i |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [banking_cartolaimportada](banking_cartolaimportada.md) | `tarjeta_id` | banking_cartolaimpor_tarjeta_id_6ee57b81_fk_banking_t |
| [banking_grupopagotarjeta](banking_grupopagotarjeta.md) | `tarjeta_id` | banking_grupopagotar_tarjeta_id_69a47680_fk_banking_t |
| [banking_movimientotarjetacredito](banking_movimientotarjetacredito.md) | `tarjeta_id` | banking_movimientota_tarjeta_id_53fffce6_fk_banking_t |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| banking_tar_activa_5eb26c_idx | INDEX | `activa` |
| banking_tar_banco_8fc90e_idx | INDEX | `banco` |
| banking_tar_rut_soc_1c5648_idx | INDEX | `rut_sociedad_id` |
| banking_tarjetacredi_paymentMethod_4f1231e1_fk_paymentMe | INDEX | `paymentMethod` |
| numero | UNIQUE | `numero` |

## Notas

- **Auto-increment:** `id`
- **Columnas de tiempo:** `last_update`

---

[← Volver al índice de tablas](../tables.md)
