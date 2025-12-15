# query_builder_model_context

> **Tipo:** Tabla

## Descripción

Tabla de datos del sistema

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 12

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | bigint | NO | 🔑 PK | `-` | auto_increment | - |
| `version` | varchar(50) | NO | ✨ UNIQUE | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `updated_at` | datetime(6) | NO |  | `-` |  | - |
| `is_active` | tinyint(1) | NO |  | `-` |  | - |
| `metadata` | json | NO |  | `-` |  | - |
| `apps_data` | json | NO |  | `-` |  | - |
| `total_apps` | int | NO |  | `-` |  | - |
| `total_models` | int | NO |  | `-` |  | - |
| `total_fields` | int | NO |  | `-` |  | - |
| `model_names` | longtext | NO |  | `-` |  | - |
| `field_names` | longtext | NO |  | `-` |  | - |

### Clave Primaria

- `id`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [query_builder_query_history](query_builder_query_history.md) | `context_version_id` | query_builder_query__context_version_id_25fcc467_fk_query_bui |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| version | UNIQUE | `version` |

## Notas

- **Auto-increment:** `id`
- **Columnas de tiempo:** `updated_at`

---

[← Volver al índice de tablas](../tables.md)
