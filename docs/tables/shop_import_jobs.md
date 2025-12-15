# shop_import_jobs

> **Tipo:** Tabla

## Descripción

Módulo de e-commerce/tienda online

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 12

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | char(32) | NO | 🔑 PK | `-` |  | - |
| `job_type` | varchar(100) | NO |  | `-` |  | - |
| `file_name` | varchar(255) | NO |  | `-` |  | - |
| `file_path` | varchar(500) | NO |  | `-` |  | - |
| `status` | varchar(20) | NO |  | `-` |  | - |
| `total_records` | int | YES |  | `-` |  | - |
| `processed_records` | int | NO |  | `-` |  | - |
| `error_records` | int | NO |  | `-` |  | - |
| `errors` | json | YES |  | `-` |  | - |
| `completed_at` | datetime(6) | YES |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `user_id` | char(32) | NO | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `user_id` | [shop_user_profiles](shop_user_profiles.md) | `id` | shop_import_jobs_user_id_343e16ad_fk_shop_user_profiles_id |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| shop_import_jobs_user_id_343e16ad_fk_shop_user_profiles_id | INDEX | `user_id` |

## Notas


---

[← Volver al índice de tablas](../tables.md)
