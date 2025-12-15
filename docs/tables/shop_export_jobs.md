# shop_export_jobs

> **Tipo:** Tabla

## Descripción

Módulo de e-commerce/tienda online

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 9

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | char(32) | NO | 🔑 PK | `-` |  | - |
| `job_type` | varchar(100) | NO |  | `-` |  | - |
| `filters` | json | YES |  | `-` |  | - |
| `status` | varchar(20) | NO |  | `-` |  | - |
| `total_records` | int | YES |  | `-` |  | - |
| `file_path` | varchar(500) | YES |  | `-` |  | - |
| `completed_at` | datetime(6) | YES |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `user_id` | char(32) | NO | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `user_id` | [shop_user_profiles](shop_user_profiles.md) | `id` | shop_export_jobs_user_id_fb730f0b_fk_shop_user_profiles_id |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| shop_export_jobs_user_id_fb730f0b_fk_shop_user_profiles_id | INDEX | `user_id` |

## Notas


---

[← Volver al índice de tablas](../tables.md)
