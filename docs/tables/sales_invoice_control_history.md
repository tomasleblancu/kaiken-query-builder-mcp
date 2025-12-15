# sales_invoice_control_history

> **Tipo:** Tabla

## Descripción

Facturación

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 9

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | bigint | NO | 🔑 PK | `-` | auto_increment | - |
| `changed_at` | datetime(6) | NO |  | `-` |  | - |
| `field_name` | varchar(100) | NO |  | `-` |  | - |
| `field_name_display` | varchar(200) | NO |  | `-` |  | - |
| `old_value` | longtext | YES |  | `-` |  | - |
| `new_value` | longtext | YES |  | `-` |  | - |
| `change_type` | varchar(20) | NO |  | `-` |  | - |
| `changed_by_id` | int | YES | 🔗 FK | `-` |  | - |
| `sales_control_id` | bigint | NO | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `changed_by_id` | [auth_user](auth_user.md) | `id` | sales_invoice_contro_changed_by_id_bd400e7e_fk_auth_user |
| `sales_control_id` | [sales_invoice_control](sales_invoice_control.md) | `id` | sales_invoice_contro_sales_control_id_74801729_fk_sales_inv |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| sales_invoi_changed_3f9bcc_idx | INDEX | `changed_by_id,changed_at` |
| sales_invoi_sales_c_dc7142_idx | INDEX | `sales_control_id,changed_at` |

## Notas

- **Auto-increment:** `id`

---

[← Volver al índice de tablas](../tables.md)
