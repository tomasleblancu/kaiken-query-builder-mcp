# catalog_searcher_search_session_products

> **Tipo:** Tabla

## Descripción

Gestión de productos

## Estadísticas

- **Filas aproximadas:** 776
- **Columnas:** 3

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | bigint | NO | 🔑 PK | `-` | auto_increment | - |
| `searchsession_id` | bigint | NO | 🔗 FK | `-` |  | - |
| `product_id` | bigint | NO | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `product_id` | [catalog_searcher_product](catalog_searcher_product.md) | `id` | catalog_searcher_sea_product_id_8c0a3f8c_fk_catalog_s |
| `searchsession_id` | [catalog_searcher_search_session](catalog_searcher_search_session.md) | `id` | catalog_searcher_sea_searchsession_id_6093aaef_fk_catalog_s |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| catalog_searcher_sea_product_id_8c0a3f8c_fk_catalog_s | INDEX | `product_id` |
| catalog_searcher_search__searchsession_id_product_91148a95_uniq | UNIQUE | `searchsession_id,product_id` |

## Notas

- **Auto-increment:** `id`

---

[← Volver al índice de tablas](../tables.md)
