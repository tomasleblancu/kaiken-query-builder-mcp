# django_celery_beat_intervalschedule

> **Tipo:** Tabla

## Descripción

Tabla del framework Django

## Estadísticas

- **Filas aproximadas:** 2
- **Columnas:** 3

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `every` | int | NO |  | `-` |  | - |
| `period` | varchar(24) | NO |  | `-` |  | - |

### Clave Primaria

- `id`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [django_celery_beat_periodictask](django_celery_beat_periodictask.md) | `interval_id` | django_celery_beat_p_interval_id_a8ca27da_fk_django_ce |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|

## Notas

- **Auto-increment:** `id`

---

[← Volver al índice de tablas](../tables.md)
