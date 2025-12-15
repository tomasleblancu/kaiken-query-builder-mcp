# shop_attachments

> **Tipo:** Tabla

## Descripción

Módulo de e-commerce/tienda online

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 8

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | char(32) | NO | 🔑 PK | `-` |  | - |
| `file_name` | varchar(255) | NO |  | `-` |  | - |
| `file_path` | varchar(500) | NO |  | `-` |  | - |
| `file_size` | int | YES |  | `-` |  | - |
| `mime_type` | varchar(100) | YES |  | `-` |  | - |
| `description` | longtext | YES |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `uploaded_by_id` | char(32) | NO | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `uploaded_by_id` | [shop_user_profiles](shop_user_profiles.md) | `id` | shop_attachments_uploaded_by_id_deb2e03c_fk_shop_user |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| shop_attachments_uploaded_by_id_deb2e03c_fk_shop_user | INDEX | `uploaded_by_id` |

## Notas


---

[← Volver al índice de tablas](../tables.md)
