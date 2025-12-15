# reconciliation_salesbankreconciliation

> **Tipo:** Tabla

## Descripción

Módulo de conciliación

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 9

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | bigint | NO | 🔑 PK | `-` | auto_increment | - |
| `document_amount` | int | NO |  | `-` |  | - |
| `bank_amount` | int | NO |  | `-` |  | - |
| `reconciled_amount` | int | YES |  | `-` |  | - |
| `status` | varchar(20) | NO | 🔗 FK | `-` |  | - |
| `date_created` | datetime(6) | NO | 🔗 FK | `-` |  | - |
| `bank_movement_id` | bigint | NO | 🔗 FK | `-` |  | - |
| `created_by_id` | int | YES | 🔗 FK | `-` |  | - |
| `document_id` | bigint | NO | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `bank_movement_id` | [banking_movimiento](banking_movimiento.md) | `id` | reconciliation_sales_bank_movement_id_5cc6568e_fk_banking_m |
| `created_by_id` | [auth_user](auth_user.md) | `id` | reconciliation_sales_created_by_id_e0c81af4_fk_auth_user |
| `document_id` | [documents_document](documents_document.md) | `id` | reconciliation_sales_document_id_6449ac99_fk_documents |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| reconciliat_bank_mo_41c730_idx | INDEX | `bank_movement_id` |
| reconciliat_date_cr_9a6f79_idx | INDEX | `date_created` |
| reconciliat_documen_ea29b1_idx | INDEX | `document_id` |
| reconciliat_status_01e8a6_idx | INDEX | `status` |
| reconciliation_sales_created_by_id_e0c81af4_fk_auth_user | INDEX | `created_by_id` |
| reconciliation_salesbank_document_id_bank_movemen_691d9074_uniq | UNIQUE | `document_id,bank_movement_id` |

## Notas

- **Auto-increment:** `id`
- **Columnas de tiempo:** `date_created`

---

[← Volver al índice de tablas](../tables.md)
