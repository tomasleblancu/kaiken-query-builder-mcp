# shop_rfqs

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
| `rfq_number` | varchar(50) | NO | ✨ UNIQUE | `-` |  | - |
| `title` | varchar(255) | NO |  | `-` |  | - |
| `description` | longtext | YES |  | `-` |  | - |
| `project_id` | char(32) | YES |  | `-` |  | - |
| `status` | varchar(20) | NO |  | `-` |  | - |
| `requested_delivery_date` | date | YES |  | `-` |  | - |
| `terms_and_conditions` | longtext | YES |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `updated_at` | datetime(6) | NO |  | `-` |  | - |
| `cost_center_id` | char(32) | YES | 🔗 FK | `-` |  | - |
| `organization_id` | char(32) | NO | 🔗 FK | `-` |  | - |
| `requester_id` | char(32) | YES | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `cost_center_id` | [shop_cost_centers](shop_cost_centers.md) | `id` | shop_rfqs_cost_center_id_81ed9e0c_fk_shop_cost_centers_id |
| `organization_id` | [shop_organizations](shop_organizations.md) | `id` | shop_rfqs_organization_id_083c1a2a_fk_shop_organizations_id |
| `requester_id` | [shop_user_profiles](shop_user_profiles.md) | `id` | shop_rfqs_requester_id_8b6eceab_fk_shop_user_profiles_id |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [shop_documents](shop_documents.md) | `rfq_id` | shop_documents_rfq_id_1f29f77b_fk_shop_rfqs_id |
| [shop_quotes](shop_quotes.md) | `rfq_id` | shop_quotes_rfq_id_e166d4e0_fk_shop_rfqs_id |
| [shop_rfq_items](shop_rfq_items.md) | `rfq_id` | shop_rfq_items_rfq_id_17193645_fk_shop_rfqs_id |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| rfq_number | UNIQUE | `rfq_number` |
| shop_rfqs_cost_center_id_81ed9e0c_fk_shop_cost_centers_id | INDEX | `cost_center_id` |
| shop_rfqs_organiz_6ee9a3_idx | INDEX | `organization_id,status` |
| shop_rfqs_requester_id_8b6eceab_fk_shop_user_profiles_id | INDEX | `requester_id` |
| shop_rfqs_rfq_num_2470d4_idx | INDEX | `rfq_number` |

## Notas

- **Columnas de tiempo:** `requested_delivery_date`, `updated_at`

---

[← Volver al índice de tablas](../tables.md)
