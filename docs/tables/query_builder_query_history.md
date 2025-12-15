# query_builder_query_history

> **Tipo:** Tabla

## Descripción

Tabla de datos del sistema

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 11

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | bigint | NO | 🔑 PK | `-` | auto_increment | - |
| `user_query` | longtext | NO |  | `-` |  | - |
| `generated_sql` | longtext | NO |  | `-` |  | - |
| `executed_successfully` | tinyint(1) | NO |  | `-` |  | - |
| `execution_time` | double | YES |  | `-` |  | - |
| `result_count` | int | YES |  | `-` |  | - |
| `models_used` | json | NO |  | `-` |  | - |
| `user_feedback` | varchar(20) | YES |  | `-` |  | - |
| `feedback_notes` | longtext | NO |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `context_version_id` | bigint | YES | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `context_version_id` | [query_builder_model_context](query_builder_model_context.md) | `id` | query_builder_query__context_version_id_25fcc467_fk_query_bui |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| query_builder_query__context_version_id_25fcc467_fk_query_bui | INDEX | `context_version_id` |

## Notas

- **Auto-increment:** `id`

---

[← Volver al índice de tablas](../tables.md)
