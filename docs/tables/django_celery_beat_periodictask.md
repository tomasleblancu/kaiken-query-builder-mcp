# django_celery_beat_periodictask

> **Tipo:** Tabla

## Descripción

Tabla del framework Django

## Estadísticas

- **Filas aproximadas:** 24
- **Columnas:** 23

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `name` | varchar(200) | NO | ✨ UNIQUE | `-` |  | - |
| `task` | varchar(200) | NO |  | `-` |  | - |
| `args` | longtext | NO |  | `-` |  | - |
| `kwargs` | longtext | NO |  | `-` |  | - |
| `queue` | varchar(200) | YES |  | `-` |  | - |
| `exchange` | varchar(200) | YES |  | `-` |  | - |
| `routing_key` | varchar(200) | YES |  | `-` |  | - |
| `expires` | datetime(6) | YES |  | `-` |  | - |
| `enabled` | tinyint(1) | NO |  | `-` |  | - |
| `last_run_at` | datetime(6) | YES |  | `-` |  | - |
| `total_run_count` | int unsigned | NO |  | `-` |  | - |
| `date_changed` | datetime(6) | NO |  | `-` |  | - |
| `description` | longtext | NO |  | `-` |  | - |
| `crontab_id` | int | YES | 🔗 FK | `-` |  | - |
| `interval_id` | int | YES | 🔗 FK | `-` |  | - |
| `solar_id` | int | YES | 🔗 FK | `-` |  | - |
| `one_off` | tinyint(1) | NO |  | `-` |  | - |
| `start_time` | datetime(6) | YES |  | `-` |  | - |
| `priority` | int unsigned | YES |  | `-` |  | - |
| `headers` | longtext | NO |  | `_utf8mb3\'{}\'` | DEFAULT_GENERATED | - |
| `clocked_id` | int | YES | 🔗 FK | `-` |  | - |
| `expire_seconds` | int unsigned | YES |  | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `clocked_id` | [django_celery_beat_clockedschedule](django_celery_beat_clockedschedule.md) | `id` | django_celery_beat_p_clocked_id_47a69f82_fk_django_ce |
| `crontab_id` | [django_celery_beat_crontabschedule](django_celery_beat_crontabschedule.md) | `id` | django_celery_beat_p_crontab_id_d3cba168_fk_django_ce |
| `interval_id` | [django_celery_beat_intervalschedule](django_celery_beat_intervalschedule.md) | `id` | django_celery_beat_p_interval_id_a8ca27da_fk_django_ce |
| `solar_id` | [django_celery_beat_solarschedule](django_celery_beat_solarschedule.md) | `id` | django_celery_beat_p_solar_id_a87ce72c_fk_django_ce |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| django_celery_beat_p_clocked_id_47a69f82_fk_django_ce | INDEX | `clocked_id` |
| django_celery_beat_p_crontab_id_d3cba168_fk_django_ce | INDEX | `crontab_id` |
| django_celery_beat_p_interval_id_a8ca27da_fk_django_ce | INDEX | `interval_id` |
| django_celery_beat_p_solar_id_a87ce72c_fk_django_ce | INDEX | `solar_id` |
| name | UNIQUE | `name` |

## Notas

- **Auto-increment:** `id`
- **Columnas de tiempo:** `date_changed`

---

[← Volver al índice de tablas](../tables.md)
