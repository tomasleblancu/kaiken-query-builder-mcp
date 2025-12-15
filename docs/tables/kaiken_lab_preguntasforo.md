# kaiken_lab_preguntasforo

> **Tipo:** Tabla

## Descripción

Módulo de IA/Machine Learning

## Estadísticas

- **Filas aproximadas:** 1,137
- **Columnas:** 10

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | bigint | NO | 🔑 PK | `-` | auto_increment | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `question` | longtext | NO |  | `-` |  | - |
| `question_date` | datetime(6) | NO |  | `-` |  | - |
| `supplier` | varchar(255) | NO |  | `-` |  | - |
| `answer` | longtext | YES |  | `-` |  | - |
| `answer_date` | datetime(6) | YES |  | `-` |  | - |
| `updated_at` | datetime(6) | NO |  | `-` |  | - |
| `raw_licita_id` | bigint | YES | 🔗 FK | `-` |  | - |
| `email_sent` | tinyint(1) | NO |  | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `raw_licita_id` | [kaiken_lab_rawlicitacion](kaiken_lab_rawlicitacion.md) | `id` | kaiken_lab_preguntas_raw_licita_id_10222612_fk_kaiken_la |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| kaiken_lab_preguntas_raw_licita_id_10222612_fk_kaiken_la | INDEX | `raw_licita_id` |

## Notas

- **Auto-increment:** `id`
- **Columnas de tiempo:** `question_date`, `answer_date`, `updated_at`

---

[← Volver al índice de tablas](../tables.md)
