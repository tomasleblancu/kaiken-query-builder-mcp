# shop_documents

> **Tipo:** Tabla

## Descripción

Módulo de e-commerce/tienda online

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 10

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | char(32) | NO | 🔑 PK | `-` |  | - |
| `document_type` | varchar(50) | NO |  | `-` |  | - |
| `document_number` | varchar(100) | YES |  | `-` |  | - |
| `file_path` | varchar(500) | YES |  | `-` |  | - |
| `metadata` | json | YES |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `order_id` | char(32) | YES | 🔗 FK | `-` |  | - |
| `organization_id` | char(32) | NO | 🔗 FK | `-` |  | - |
| `quote_id` | char(32) | YES | 🔗 FK | `-` |  | - |
| `rfq_id` | char(32) | YES | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `order_id` | [shop_orders](shop_orders.md) | `id` | shop_documents_order_id_964ea9c0_fk_shop_orders_id |
| `organization_id` | [shop_organizations](shop_organizations.md) | `id` | shop_documents_organization_id_0d23818c_fk_shop_organizations_id |
| `quote_id` | [shop_quotes](shop_quotes.md) | `id` | shop_documents_quote_id_dff444a0_fk_shop_quotes_id |
| `rfq_id` | [shop_rfqs](shop_rfqs.md) | `id` | shop_documents_rfq_id_1f29f77b_fk_shop_rfqs_id |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| shop_docume_organiz_9e8c97_idx | INDEX | `organization_id,document_type` |
| shop_documents_order_id_964ea9c0_fk_shop_orders_id | INDEX | `order_id` |
| shop_documents_quote_id_dff444a0_fk_shop_quotes_id | INDEX | `quote_id` |
| shop_documents_rfq_id_1f29f77b_fk_shop_rfqs_id | INDEX | `rfq_id` |

## Notas


---

[← Volver al índice de tablas](../tables.md)
