# sales_invoice_control

> **Tipo:** Tabla

## Descripción

Facturación

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 18

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | bigint | NO | 🔑 PK | `-` | auto_increment | - |
| `tipo_alegato` | varchar(50) | YES |  | `-` |  | - |
| `id_alegato` | varchar(100) | YES | ✨ UNIQUE | `-` |  | - |
| `fecha_alegato` | date | YES |  | `-` |  | - |
| `contacto_alegato` | varchar(200) | YES |  | `-` |  | - |
| `observaciones_alegato` | longtext | YES |  | `-` |  | - |
| `tiene_factoring` | tinyint(1) | NO |  | `-` |  | - |
| `empresa_factoring` | varchar(200) | YES |  | `-` |  | - |
| `estado_pago_factoring` | varchar(20) | YES |  | `-` |  | - |
| `fecha_cesion_factoring` | date | YES |  | `-` |  | - |
| `monto_factoring` | decimal(12,0) | YES |  | `-` |  | - |
| `tasa_descuento_factoring` | decimal(5,2) | YES |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `updated_at` | datetime(6) | NO |  | `-` |  | - |
| `created_by_id` | int | YES | 🔗 FK | `-` |  | - |
| `document_id` | bigint | NO | ✨ UNIQUE | `-` |  | - |
| `encargado_alegato_id` | int | YES | 🔗 FK | `-` |  | - |
| `updated_by_id` | int | YES | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `created_by_id` | [auth_user](auth_user.md) | `id` | sales_invoice_control_created_by_id_98f6d960_fk_auth_user_id |
| `updated_by_id` | [auth_user](auth_user.md) | `id` | sales_invoice_control_updated_by_id_c8f4f0b4_fk_auth_user_id |
| `document_id` | [documents_document](documents_document.md) | `id` | sales_invoice_contro_document_id_92a877b3_fk_documents |
| `encargado_alegato_id` | [auth_user](auth_user.md) | `id` | sales_invoice_contro_encargado_alegato_id_176598f8_fk_auth_user |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [sales_invoice_control_history](sales_invoice_control_history.md) | `sales_control_id` | sales_invoice_contro_sales_control_id_74801729_fk_sales_inv |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| document_id | UNIQUE | `document_id` |
| id_alegato | UNIQUE | `id_alegato` |
| sales_invoice_contro_encargado_alegato_id_176598f8_fk_auth_user | INDEX | `encargado_alegato_id` |
| sales_invoice_control_created_by_id_98f6d960_fk_auth_user_id | INDEX | `created_by_id` |
| sales_invoice_control_updated_by_id_c8f4f0b4_fk_auth_user_id | INDEX | `updated_by_id` |

## Notas

- **Auto-increment:** `id`
- **Columnas de tiempo:** `updated_at`, `updated_by_id`

---

[← Volver al índice de tablas](../tables.md)
