# django_celery_beat_crontabschedule

> **Tipo:** Tabla

## Descripción

Tabla del framework Django

## Estadísticas

- **Filas aproximadas:** 9
- **Columnas:** 7

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `minute` | varchar(240) | NO |  | `-` |  | - |
| `hour` | varchar(96) | NO |  | `-` |  | - |
| `day_of_week` | varchar(64) | NO |  | `-` |  | - |
| `day_of_month` | varchar(124) | NO |  | `-` |  | - |
| `month_of_year` | varchar(64) | NO |  | `-` |  | - |
| `timezone` | varchar(63) | NO |  | `-` |  | - |

### Clave Primaria

- `id`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [django_celery_beat_periodictask](django_celery_beat_periodictask.md) | `crontab_id` | django_celery_beat_p_crontab_id_d3cba168_fk_django_ce |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|

## Notas

- **Auto-increment:** `id`

---

[← Volver al índice de tablas](../tables.md)
