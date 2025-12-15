# banking_cuenta

> **Tipo:** Tabla

## Descripción

Módulo de gestión bancaria

## Estadísticas

- **Filas aproximadas:** 9
- **Columnas:** 11

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | bigint | NO | 🔑 PK | `-` | auto_increment | - |
| `banco` | varchar(255) | NO |  | `-` |  | - |
| `numero` | varchar(50) | NO | ✨ UNIQUE | `-` |  | - |
| `moneda` | varchar(10) | NO |  | `-` |  | - |
| `sociedad` | varchar(255) | NO |  | `-` |  | - |
| `tipo` | varchar(255) | NO |  | `-` |  | - |
| `last_update` | datetime(6) | NO |  | `-` |  | - |
| `last_error` | longtext | YES |  | `-` |  | - |
| `nickname` | varchar(255) | YES |  | `-` |  | - |
| `balance` | decimal(15,2) | NO |  | `-` |  | - |
| `rut_sociedad_id` | int | YES | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `rut_sociedad_id` | [society](society.md) | `idSociety` | banking_cuenta_rut_sociedad_id_b484eee9_fk_society_idSociety |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [banking_movimiento](banking_movimiento.md) | `account_id` | banking_movimiento_account_id_7a06d8e4_fk_banking_cuenta_id |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| banking_cuenta_rut_sociedad_id_b484eee9_fk_society_idSociety | INDEX | `rut_sociedad_id` |
| numero | UNIQUE | `numero` |

## Notas

- **Auto-increment:** `id`
- **Columnas de tiempo:** `last_update`

---

[← Volver al índice de tablas](../tables.md)
