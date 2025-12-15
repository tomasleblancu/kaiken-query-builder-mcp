# shop_help_contents

> **Tipo:** Tabla

## Descripción

Módulo de e-commerce/tienda online

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 9

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | char(32) | NO | 🔑 PK | `-` |  | - |
| `title` | varchar(255) | NO |  | `-` |  | - |
| `content` | longtext | NO |  | `-` |  | - |
| `category` | varchar(100) | YES |  | `-` |  | - |
| `tags` | json | NO |  | `-` |  | - |
| `sort_order` | int | NO |  | `-` |  | - |
| `is_published` | tinyint(1) | NO |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `updated_at` | datetime(6) | NO |  | `-` |  | - |

### Clave Primaria

- `id`

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|

## Notas

- **Columnas de tiempo:** `updated_at`

---

[← Volver al índice de tablas](../tables.md)
