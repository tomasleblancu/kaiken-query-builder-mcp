# django_celery_beat_solarschedule

> **Tipo:** Tabla

## Descripción

Tabla del framework Django

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 4

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `event` | varchar(24) | NO | 🔗 FK | `-` |  | - |
| `latitude` | decimal(9,6) | NO |  | `-` |  | - |
| `longitude` | decimal(9,6) | NO |  | `-` |  | - |

### Clave Primaria

- `id`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [django_celery_beat_periodictask](django_celery_beat_periodictask.md) | `solar_id` | django_celery_beat_p_solar_id_a87ce72c_fk_django_ce |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| django_celery_beat_solar_event_latitude_longitude_ba64999a_uniq | UNIQUE | `event,latitude,longitude` |

## Notas

- **Auto-increment:** `id`

---

[← Volver al índice de tablas](../tables.md)
