# kaiken_lab_licitacionvector

> **Tipo:** Tabla

## Descripción

Módulo de IA/Machine Learning

## Estadísticas

- **Filas aproximadas:** 46,459
- **Columnas:** 7

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | bigint | NO | 🔑 PK | `-` | auto_increment | - |
| `vector_name` | varchar(255) | NO |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `updated_at` | datetime(6) | NO |  | `-` |  | - |
| `vector_content` | json | YES |  | `-` |  | - |
| `vector_id` | varchar(255) | YES |  | `-` |  | - |
| `licitacion_id` | bigint | NO | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `licitacion_id` | [kaiken_lab_rawlicitacion](kaiken_lab_rawlicitacion.md) | `id` | kaiken_lab_licitacio_licitacion_id_d7b478c0_fk_kaiken_la |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| kaiken_lab_licitacio_licitacion_id_d7b478c0_fk_kaiken_la | INDEX | `licitacion_id` |

## Notas

- **Auto-increment:** `id`
- **Columnas de tiempo:** `updated_at`

---

[← Volver al índice de tablas](../tables.md)
