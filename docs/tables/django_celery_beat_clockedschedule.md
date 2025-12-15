# django_celery_beat_clockedschedule

> **Tipo:** Tabla

## Descripción

Tabla del framework Django

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 2

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `clocked_time` | datetime(6) | NO |  | `-` |  | - |

### Clave Primaria

- `id`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [django_celery_beat_periodictask](django_celery_beat_periodictask.md) | `clocked_id` | django_celery_beat_p_clocked_id_47a69f82_fk_django_ce |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|

## Notas

- **Auto-increment:** `id`

---

[← Volver al índice de tablas](../tables.md)
