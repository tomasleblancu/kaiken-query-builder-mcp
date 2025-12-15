# kaiken_lab_preguntasprevias

> **Tipo:** Tabla

## Descripción

Módulo de IA/Machine Learning

## Estadísticas

- **Filas aproximadas:** 4
- **Columnas:** 8

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | bigint | NO | 🔑 PK | `-` | auto_increment | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `key` | varchar(255) | NO |  | `-` |  | - |
| `question` | longtext | NO |  | `-` |  | - |
| `value_type` | varchar(255) | NO |  | `-` |  | - |
| `updated_at` | datetime(6) | NO |  | `-` |  | - |
| `etapa` | varchar(255) | YES |  | `-` |  | - |
| `tipos_licitacion` | varchar(255) | YES |  | `-` |  | - |

### Clave Primaria

- `id`

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|

## Notas

- **Auto-increment:** `id`
- **Columnas de tiempo:** `updated_at`

---

[← Volver al índice de tablas](../tables.md)
