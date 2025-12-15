# kaiken_lab_adjuntomepu

> **Tipo:** Tabla

## Descripción

Módulo de IA/Machine Learning

## Estadísticas

- **Filas aproximadas:** 64,376
- **Columnas:** 9

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | bigint | NO | 🔑 PK | `-` | auto_increment | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `location` | varchar(1000) | YES |  | `-` |  | - |
| `file_type` | varchar(100) | YES |  | `-` |  | - |
| `title` | varchar(100) | YES |  | `-` |  | - |
| `category` | varchar(100) | YES |  | `-` |  | - |
| `considerar` | tinyint(1) | NO |  | `-` |  | - |
| `drive_id` | varchar(100) | YES |  | `-` |  | - |
| `raw_licita_id` | bigint | YES | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `raw_licita_id` | [kaiken_lab_rawlicitacion](kaiken_lab_rawlicitacion.md) | `id` | kaiken_lab_adjuntome_raw_licita_id_f2ee26a6_fk_kaiken_la |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [kaiken_lab_adjuntomepuimages](kaiken_lab_adjuntomepuimages.md) | `adjunto_id` | kaiken_lab_adjuntome_adjunto_id_7e1f1481_fk_kaiken_la |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| kaiken_lab_adjuntome_raw_licita_id_f2ee26a6_fk_kaiken_la | INDEX | `raw_licita_id` |

## Notas

- **Auto-increment:** `id`

---

[← Volver al índice de tablas](../tables.md)
