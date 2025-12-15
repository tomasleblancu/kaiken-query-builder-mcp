# shop_product_attributes

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
| `name` | varchar(100) | NO | ✨ UNIQUE | `-` |  | - |
| `code` | varchar(50) | NO | ✨ UNIQUE | `-` |  | - |
| `data_type` | varchar(20) | NO |  | `-` |  | - |
| `is_filterable` | tinyint(1) | NO |  | `-` |  | - |
| `is_required` | tinyint(1) | NO |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `updated_at` | datetime(6) | NO |  | `-` |  | - |

### Clave Primaria

- `id`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [shop_product_attribute_values](shop_product_attribute_values.md) | `attribute_id` | shop_product_attribu_attribute_id_939f39bf_fk_shop_prod |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| code | UNIQUE | `code` |
| name | UNIQUE | `name` |

## Notas

- **Columnas de tiempo:** `updated_at`

---

[← Volver al índice de tablas](../tables.md)
