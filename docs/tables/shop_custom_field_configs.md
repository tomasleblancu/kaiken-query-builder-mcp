# shop_custom_field_configs

> **Tipo:** Tabla

## Descripción

Módulo de e-commerce/tienda online

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 9

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | bigint | NO | 🔑 PK | `-` | auto_increment | - |
| `custom_field_1_name` | varchar(100) | YES |  | `-` |  | - |
| `custom_field_2_name` | varchar(100) | YES |  | `-` |  | - |
| `custom_field_3_name` | varchar(100) | YES |  | `-` |  | - |
| `custom_field_4_name` | varchar(100) | YES |  | `-` |  | - |
| `custom_field_5_name` | varchar(100) | YES |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `updated_at` | datetime(6) | NO |  | `-` |  | - |
| `contract_id` | char(32) | NO | ✨ UNIQUE | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `contract_id` | [shop_contracts](shop_contracts.md) | `id` | shop_custom_field_co_contract_id_710319b2_fk_shop_cont |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| contract_id | UNIQUE | `contract_id` |

## Notas

- **Auto-increment:** `id`
- **Columnas de tiempo:** `updated_at`

---

[← Volver al índice de tablas](../tables.md)
