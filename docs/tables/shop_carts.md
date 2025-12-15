# shop_carts

> **Tipo:** Tabla

## Descripción

Módulo de e-commerce/tienda online

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 5

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | char(32) | NO | 🔑 PK | `-` |  | - |
| `session_id` | varchar(100) | YES |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `updated_at` | datetime(6) | NO |  | `-` |  | - |
| `user_id` | char(32) | NO | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `user_id` | [shop_user_profiles](shop_user_profiles.md) | `id` | shop_carts_user_id_b564f2e5_fk_shop_user_profiles_id |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [shop_cart_items](shop_cart_items.md) | `cart_id` | shop_cart_items_cart_id_febddc96_fk_shop_carts_id |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| shop_carts_user_id_b564f2e5_fk_shop_user_profiles_id | INDEX | `user_id` |

## Notas

- **Columnas de tiempo:** `updated_at`

---

[← Volver al índice de tablas](../tables.md)
