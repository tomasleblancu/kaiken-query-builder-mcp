# shop_quotes

> **Tipo:** Tabla

## Descripción

Módulo de e-commerce/tienda online

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 12

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | char(32) | NO | 🔑 PK | `-` |  | - |
| `quote_number` | varchar(50) | NO | ✨ UNIQUE | `-` |  | - |
| `status` | varchar(20) | NO |  | `-` |  | - |
| `subtotal` | decimal(12,2) | NO |  | `-` |  | - |
| `tax_amount` | decimal(12,2) | YES |  | `-` |  | - |
| `total_amount` | decimal(12,2) | NO |  | `-` |  | - |
| `valid_until` | date | YES |  | `-` |  | - |
| `terms_and_conditions` | longtext | YES |  | `-` |  | - |
| `notes` | longtext | YES |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `updated_at` | datetime(6) | NO |  | `-` |  | - |
| `rfq_id` | char(32) | NO | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `rfq_id` | [shop_rfqs](shop_rfqs.md) | `id` | shop_quotes_rfq_id_e166d4e0_fk_shop_rfqs_id |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [shop_documents](shop_documents.md) | `quote_id` | shop_documents_quote_id_dff444a0_fk_shop_quotes_id |
| [shop_orders](shop_orders.md) | `quote_id` | shop_orders_quote_id_d7bbd54a_fk_shop_quotes_id |
| [shop_quote_items](shop_quote_items.md) | `quote_id` | shop_quote_items_quote_id_2df3f880_fk_shop_quotes_id |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| quote_number | UNIQUE | `quote_number` |
| shop_quotes_quote_n_ad3122_idx | INDEX | `quote_number` |
| shop_quotes_rfq_id_70cd91_idx | INDEX | `rfq_id,status` |

## Notas

- **Columnas de tiempo:** `updated_at`

---

[← Volver al índice de tablas](../tables.md)
