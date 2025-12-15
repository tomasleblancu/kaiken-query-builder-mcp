# reconciliation_document_analysis

> **Tipo:** Tabla

## Descripción

Módulo de conciliación

## Estadísticas

- **Filas aproximadas:** 75
- **Columnas:** 8

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | bigint | NO | 🔑 PK | `-` | auto_increment | - |
| `status` | varchar(20) | NO | 🔗 FK | `-` |  | - |
| `comments` | longtext | YES |  | `-` |  | - |
| `created_at` | datetime(6) | NO | 🔗 FK | `-` |  | - |
| `updated_at` | datetime(6) | NO | 🔗 FK | `-` |  | - |
| `created_by_id` | int | YES | 🔗 FK | `-` |  | - |
| `document_id` | bigint | NO | ✨ UNIQUE | `-` |  | - |
| `updated_by_id` | int | YES | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `created_by_id` | [auth_user](auth_user.md) | `id` | reconciliation_docum_created_by_id_09b10c0d_fk_auth_user |
| `document_id` | [documents_document](documents_document.md) | `id` | reconciliation_docum_document_id_4870d695_fk_documents |
| `updated_by_id` | [auth_user](auth_user.md) | `id` | reconciliation_docum_updated_by_id_6ed129f6_fk_auth_user |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| document_id | UNIQUE | `document_id` |
| reconciliat_created_c3b6b7_idx | INDEX | `created_at` |
| reconciliat_status_c5ef9e_idx | INDEX | `status` |
| reconciliat_updated_904049_idx | INDEX | `updated_at` |
| reconciliation_docum_created_by_id_09b10c0d_fk_auth_user | INDEX | `created_by_id` |
| reconciliation_docum_updated_by_id_6ed129f6_fk_auth_user | INDEX | `updated_by_id` |

## Notas

- **Auto-increment:** `id`
- **Columnas de tiempo:** `updated_at`, `updated_by_id`

---

[← Volver al índice de tablas](../tables.md)
