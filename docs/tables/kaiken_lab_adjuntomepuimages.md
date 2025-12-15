# kaiken_lab_adjuntomepuimages

> **Tipo:** Tabla

## Descripción

Módulo de IA/Machine Learning

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 5

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | bigint | NO | 🔑 PK | `-` | auto_increment | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `location` | varchar(1000) | YES |  | `-` |  | - |
| `page_number` | int | NO |  | `-` |  | - |
| `adjunto_id` | bigint | NO | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `adjunto_id` | [kaiken_lab_adjuntomepu](kaiken_lab_adjuntomepu.md) | `id` | kaiken_lab_adjuntome_adjunto_id_7e1f1481_fk_kaiken_la |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| kaiken_lab_adjuntome_adjunto_id_7e1f1481_fk_kaiken_la | INDEX | `adjunto_id` |

## Notas

- **Auto-increment:** `id`

---

[← Volver al índice de tablas](../tables.md)
