# auth_user

> **Tipo:** Tabla

## Descripción

Autenticación y permisos (Django)

## Estadísticas

- **Filas aproximadas:** 35
- **Columnas:** 11

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `password` | varchar(128) | NO |  | `-` |  | - |
| `last_login` | datetime(6) | YES |  | `-` |  | - |
| `is_superuser` | tinyint(1) | NO |  | `-` |  | - |
| `username` | varchar(150) | NO | ✨ UNIQUE | `-` |  | - |
| `first_name` | varchar(150) | NO |  | `-` |  | - |
| `last_name` | varchar(150) | NO |  | `-` |  | - |
| `email` | varchar(254) | NO |  | `-` |  | - |
| `is_staff` | tinyint(1) | NO |  | `-` |  | - |
| `is_active` | tinyint(1) | NO |  | `-` |  | - |
| `date_joined` | datetime(6) | NO |  | `-` |  | - |

### Clave Primaria

- `id`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [auth_user_groups](auth_user_groups.md) | `user_id` | auth_user_groups_user_id_6a12ed8b_fk_auth_user_id |
| [auth_user_user_permissions](auth_user_user_permissions.md) | `user_id` | auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id |
| [django_admin_log](django_admin_log.md) | `user_id` | django_admin_log_user_id_c564eba6_fk_auth_user_id |
| [documents_document](documents_document.md) | `created_by_id` | documents_document_created_by_id_7d00c649_fk_auth_user_id |
| [reconciliation_document_analysis](reconciliation_document_analysis.md) | `created_by_id` | reconciliation_docum_created_by_id_09b10c0d_fk_auth_user |
| [reconciliation_document_analysis](reconciliation_document_analysis.md) | `updated_by_id` | reconciliation_docum_updated_by_id_6ed129f6_fk_auth_user |
| [reconciliation_invoicepurchaseorderreconciliation](reconciliation_invoicepurchaseorderreconciliation.md) | `created_by_id` | reconciliation_invoi_created_by_id_c0bc99b6_fk_auth_user |
| [reconciliation_purchase_order_analysis](reconciliation_purchase_order_analysis.md) | `created_by_id` | reconciliation_purch_created_by_id_d3e7a714_fk_auth_user |
| [reconciliation_purchase_order_analysis](reconciliation_purchase_order_analysis.md) | `updated_by_id` | reconciliation_purch_updated_by_id_e921c805_fk_auth_user |
| [reconciliation_salesbankreconciliation](reconciliation_salesbankreconciliation.md) | `created_by_id` | reconciliation_sales_created_by_id_e0c81af4_fk_auth_user |
| [sales_invoice_control](sales_invoice_control.md) | `created_by_id` | sales_invoice_control_created_by_id_98f6d960_fk_auth_user_id |
| [sales_invoice_control](sales_invoice_control.md) | `updated_by_id` | sales_invoice_control_updated_by_id_c8f4f0b4_fk_auth_user_id |
| [sales_invoice_control](sales_invoice_control.md) | `encargado_alegato_id` | sales_invoice_contro_encargado_alegato_id_176598f8_fk_auth_user |
| [sales_invoice_control_history](sales_invoice_control_history.md) | `changed_by_id` | sales_invoice_contro_changed_by_id_bd400e7e_fk_auth_user |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| username | UNIQUE | `username` |

## Notas

- **Auto-increment:** `id`
- **Columnas de tiempo:** `date_joined`

---

[← Volver al índice de tablas](../tables.md)
