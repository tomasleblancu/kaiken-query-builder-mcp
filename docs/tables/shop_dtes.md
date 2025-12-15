# shop_dtes

> **Tipo:** Tabla

## Descripción

Módulo de e-commerce/tienda online

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 13

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | char(32) | NO | 🔑 PK | `-` |  | - |
| `dte_type` | int | NO | 🔗 FK | `-` |  | - |
| `folio` | int | NO |  | `-` |  | - |
| `fecha_emision` | date | NO |  | `-` |  | - |
| `rut_emisor` | varchar(12) | NO | 🔗 FK | `-` |  | - |
| `rut_receptor` | varchar(12) | NO |  | `-` |  | - |
| `monto_total` | decimal(12,2) | NO |  | `-` |  | - |
| `estado` | varchar(50) | YES |  | `-` |  | - |
| `xml_content` | longtext | YES |  | `-` |  | - |
| `pdf_path` | varchar(500) | YES |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `order_id` | char(32) | YES | 🔗 FK | `-` |  | - |
| `organization_id` | char(32) | NO | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `order_id` | [shop_orders](shop_orders.md) | `id` | shop_dtes_order_id_23410c33_fk_shop_orders_id |
| `organization_id` | [shop_organizations](shop_organizations.md) | `id` | shop_dtes_organization_id_977277c7_fk_shop_organizations_id |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| shop_dtes_dte_type_folio_rut_emisor_1cdd5861_uniq | UNIQUE | `dte_type,folio,rut_emisor` |
| shop_dtes_order_id_23410c33_fk_shop_orders_id | INDEX | `order_id` |
| shop_dtes_organiz_b91649_idx | INDEX | `organization_id,fecha_emision` |
| shop_dtes_rut_emi_e38c75_idx | INDEX | `rut_emisor,rut_receptor` |

## Notas


---

[← Volver al índice de tablas](../tables.md)
