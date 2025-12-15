# shop_categories

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
| `name` | varchar(255) | NO |  | `-` |  | - |
| `slug` | varchar(255) | NO | ✨ UNIQUE | `-` |  | - |
| `description` | longtext | YES |  | `-` |  | - |
| `is_active` | tinyint(1) | NO |  | `-` |  | - |
| `sort_order` | int | NO |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `updated_at` | datetime(6) | NO |  | `-` |  | - |
| `parent_id` | char(32) | YES | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `parent_id` | [shop_categories](shop_categories.md) | `id` | shop_categories_parent_id_7f222d2a_fk_shop_categories_id |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [shop_categories](shop_categories.md) | `parent_id` | shop_categories_parent_id_7f222d2a_fk_shop_categories_id |
| [shop_products](shop_products.md) | `category_id` | shop_products_category_id_ba6920ae_fk_shop_categories_id |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| shop_categories_parent_id_7f222d2a_fk_shop_categories_id | INDEX | `parent_id` |
| slug | UNIQUE | `slug` |

## Notas

- **Columnas de tiempo:** `updated_at`

---

[← Volver al índice de tablas](../tables.md)
