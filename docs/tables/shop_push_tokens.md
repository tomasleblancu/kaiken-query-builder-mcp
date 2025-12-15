# shop_push_tokens

> **Tipo:** Tabla

## Descripción

Módulo de e-commerce/tienda online

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 7

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | char(32) | NO | 🔑 PK | `-` |  | - |
| `token` | varchar(255) | NO | ✨ UNIQUE | `-` |  | - |
| `device_type` | varchar(20) | NO |  | `-` |  | - |
| `is_active` | tinyint(1) | NO |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `updated_at` | datetime(6) | NO |  | `-` |  | - |
| `user_id` | char(32) | NO | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `user_id` | [shop_user_profiles](shop_user_profiles.md) | `id` | shop_push_tokens_user_id_7dc14ef4_fk_shop_user_profiles_id |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| shop_push_t_token_4a2e86_idx | INDEX | `token` |
| shop_push_t_user_id_f6c5a0_idx | INDEX | `user_id,is_active` |
| token | UNIQUE | `token` |

## Notas

- **Columnas de tiempo:** `updated_at`

---

[← Volver al índice de tablas](../tables.md)
