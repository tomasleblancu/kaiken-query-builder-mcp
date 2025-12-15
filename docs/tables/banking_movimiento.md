# banking_movimiento

> **Tipo:** Tabla

## Descripción

Módulo de gestión bancaria

## Estadísticas

- **Filas aproximadas:** 12,277
- **Columnas:** 27

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | bigint | NO | 🔑 PK | `-` | auto_increment | - |
| `external_id` | varchar(50) | NO | ✨ UNIQUE | `-` |  | - |
| `date` | date | NO |  | `-` |  | - |
| `sender_id` | varchar(50) | YES |  | `-` |  | - |
| `sender_name` | varchar(255) | YES |  | `-` |  | - |
| `recipient_id` | varchar(50) | YES |  | `-` |  | - |
| `recipient_name` | varchar(255) | YES |  | `-` |  | - |
| `description` | longtext | NO |  | `-` |  | - |
| `branch` | varchar(255) | YES |  | `-` |  | - |
| `doc_number` | varchar(50) | YES |  | `-` |  | - |
| `inflows` | decimal(15,2) | NO |  | `-` |  | - |
| `outflows` | decimal(15,2) | NO |  | `-` |  | - |
| `amount` | decimal(15,2) | NO |  | `-` |  | - |
| `balance` | decimal(15,2) | NO |  | `-` |  | - |
| `subclasificacion` | varchar(255) | YES |  | `-` |  | - |
| `tentativo` | varchar(255) | YES |  | `-` |  | - |
| `comentario` | longtext | YES |  | `-` |  | - |
| `rut_contraparte` | varchar(50) | YES |  | `-` |  | - |
| `tentativo_conciliacion` | varchar(255) | YES |  | `-` |  | - |
| `estado_erp` | varchar(50) | NO |  | `-` |  | - |
| `conciliado` | decimal(15,2) | NO |  | `-` |  | - |
| `monto_conciliado` | decimal(15,2) | NO |  | `-` |  | - |
| `saldo_por_conciliar` | decimal(15,2) | NO |  | `-` |  | - |
| `last_update` | datetime(6) | NO |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `account_id` | bigint | YES | 🔗 FK | `-` |  | - |
| `cliente_id` | int | YES | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `account_id` | [banking_cuenta](banking_cuenta.md) | `id` | banking_movimiento_account_id_7a06d8e4_fk_banking_cuenta_id |
| `cliente_id` | [client](client.md) | `idClient` | banking_movimiento_cliente_id_5de93f5d_fk_client_idClient |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [reconciliation_salesbankreconciliation](reconciliation_salesbankreconciliation.md) | `bank_movement_id` | reconciliation_sales_bank_movement_id_5cc6568e_fk_banking_m |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| banking_movimiento_account_id_7a06d8e4_fk_banking_cuenta_id | INDEX | `account_id` |
| banking_movimiento_cliente_id_5de93f5d_fk_client_idClient | INDEX | `cliente_id` |
| external_id | UNIQUE | `external_id` |

## Notas

- **Auto-increment:** `id`
- **Columnas de tiempo:** `date`, `last_update`

---

[← Volver al índice de tablas](../tables.md)
