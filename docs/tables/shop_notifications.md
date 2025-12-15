# shop_notifications

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
| `type` | varchar(20) | NO | 🔗 FK | `-` |  | - |
| `title` | varchar(255) | NO |  | `-` |  | - |
| `message` | longtext | NO |  | `-` |  | - |
| `action_url` | varchar(500) | YES |  | `-` |  | - |
| `metadata` | json | YES |  | `-` |  | - |
| `read_at` | datetime(6) | YES |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `user_id` | char(32) | NO | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `user_id` | [shop_user_profiles](shop_user_profiles.md) | `id` | shop_notifications_user_id_6cef0527_fk_shop_user_profiles_id |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| shop_notifi_type_1734f5_idx | INDEX | `type,created_at` |
| shop_notifi_user_id_8d95c8_idx | INDEX | `user_id,read_at` |

## Notas


---

[← Volver al índice de tablas](../tables.md)
