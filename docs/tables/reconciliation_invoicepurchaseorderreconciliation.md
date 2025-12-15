# reconciliation_invoicepurchaseorderreconciliation

> **Tipo:** Tabla

## Descripción

Módulo de conciliación

## Estadísticas

- **Filas aproximadas:** 9,492
- **Columnas:** 9

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | bigint | NO | 🔑 PK | `-` | auto_increment | - |
| `document_amount` | int | NO |  | `-` |  | - |
| `po_amount` | int | NO |  | `-` |  | - |
| `reconciled_amount` | int | YES |  | `-` |  | - |
| `status` | varchar(20) | NO |  | `-` |  | - |
| `date_created` | datetime(6) | NO | 🔗 FK | `-` |  | - |
| `created_by_id` | int | YES | 🔗 FK | `-` |  | - |
| `document_id` | bigint | NO | 🔗 FK | `-` |  | - |
| `purchase_order_id` | int | NO | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `created_by_id` | [auth_user](auth_user.md) | `id` | reconciliation_invoi_created_by_id_c0bc99b6_fk_auth_user |
| `document_id` | [documents_document](documents_document.md) | `id` | reconciliation_invoi_document_id_772b22cc_fk_documents |
| `purchase_order_id` | [ocHeader](ocHeader.md) | `idOcHeader` | reconciliation_invoi_purchase_order_id_c6c50823_fk_ocHeader_ |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| reconciliat_date_cr_fc49ac_idx | INDEX | `date_created` |
| reconciliat_documen_a5eef9_idx | INDEX | `document_id` |
| reconciliat_purchas_ed544f_idx | INDEX | `purchase_order_id` |
| reconciliation_invoi_created_by_id_c0bc99b6_fk_auth_user | INDEX | `created_by_id` |
| reconciliation_invoicepu_document_id_purchase_ord_bdf33894_uniq | UNIQUE | `document_id,purchase_order_id` |

## Notas

- **Auto-increment:** `id`
- **Columnas de tiempo:** `date_created`

---

[← Volver al índice de tablas](../tables.md)
