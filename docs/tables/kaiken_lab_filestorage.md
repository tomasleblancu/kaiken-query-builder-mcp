# kaiken_lab_filestorage

> **Tipo:** Tabla

## Descripción

Módulo de IA/Machine Learning

## Estadísticas

- **Filas aproximadas:** 255,943
- **Columnas:** 12

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | bigint | NO | 🔑 PK | `-` | auto_increment | - |
| `external_id` | varchar(255) | YES |  | `-` |  | - |
| `object` | varchar(255) | YES |  | `-` |  | - |
| `bytes` | int | NO |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `filename` | varchar(255) | YES |  | `-` |  | - |
| `purpose` | varchar(255) | YES |  | `-` |  | - |
| `ai_description` | longtext | YES |  | `-` |  | - |
| `ai_title` | varchar(255) | YES |  | `-` |  | - |
| `file_type` | varchar(255) | YES |  | `-` |  | - |
| `suggested_analyst` | varchar(255) | YES |  | `-` |  | - |
| `licita_id` | bigint | NO | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `licita_id` | [kaiken_lab_rawlicitacion](kaiken_lab_rawlicitacion.md) | `id` | kaiken_lab_filestora_licita_id_18342656_fk_kaiken_la |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| kaiken_lab_filestora_licita_id_18342656_fk_kaiken_la | INDEX | `licita_id` |

## Notas

- **Auto-increment:** `id`

---

[← Volver al índice de tablas](../tables.md)
