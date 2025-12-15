# project_metrics

> **Tipo:** Tabla

## Descripción

Gestión de proyectos

## Estadísticas

- **Filas aproximadas:** 4,327
- **Columnas:** 22

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `sale_invoices_amount` | decimal(15,2) | NO |  | `-` |  | - |
| `sale_invoices_count` | int | NO |  | `-` |  | - |
| `last_sale_invoice_date` | date | YES |  | `-` |  | - |
| `purchase_orders_amount` | decimal(15,2) | NO |  | `-` |  | - |
| `purchase_orders_count` | int | NO |  | `-` |  | - |
| `paid_amount` | decimal(15,2) | NO |  | `-` |  | - |
| `pending_payment_amount` | decimal(15,2) | NO |  | `-` |  | - |
| `gross_margin` | decimal(15,2) | NO |  | `-` |  | - |
| `margin_percentage` | decimal(6,2) | NO |  | `-` |  | - |
| `last_updated` | datetime(6) | NO |  | `-` |  | - |
| `needs_recalculation` | tinyint(1) | NO |  | `-` |  | - |
| `idSelectedTenderOrder` | int | YES | 🔗 FK | `-` |  | - |
| `idSelectedTenders` | int | NO | 🔗 FK | `-` |  | - |
| `evaluated_cost` | decimal(15,2) | NO |  | `-` |  | - |
| `evaluated_sale` | decimal(15,2) | NO |  | `-` |  | - |
| `purchase_order_conciliated_amount` | decimal(15,2) | NO |  | `-` |  | - |
| `purchase_order_total_paid_amount` | decimal(15,2) | NO |  | `-` |  | - |
| `sale_invoice_amount_paid` | decimal(15,2) | NO |  | `-` |  | - |
| `sale_invoice_conciliated_amount` | decimal(15,2) | NO |  | `-` |  | - |
| `first_sale_invoice_date` | date | YES |  | `-` |  | - |
| `idSelectedTenderOrderPack` | int | YES | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idSelectedTenderOrderPack` | [selectedTenderOrderPack](selectedTenderOrderPack.md) | `idSelectedTenderOrderPack` | project_metrics_idSelectedTenderOrde_cc367472_fk_selectedT |
| `idSelectedTenderOrder` | [selectedTenderOrder](selectedTenderOrder.md) | `idSelectedTenderOrder` | project_metrics_idSelectedTenderOrde_ef33494e_fk_selectedT |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| project_met_idSelec_5a708d_idx | INDEX | `idSelectedTenders,idSelectedTenderOrderPack` |
| project_metrics_idSelectedTenderOrde_cc367472_fk_selectedT | INDEX | `idSelectedTenderOrderPack` |
| project_metrics_idSelectedTenderOrde_ef33494e_fk_selectedT | INDEX | `idSelectedTenderOrder` |

## Notas

- **Auto-increment:** `id`
- **Columnas de tiempo:** `last_sale_invoice_date`, `last_updated`, `first_sale_invoice_date`

---

[← Volver al índice de tablas](../tables.md)
