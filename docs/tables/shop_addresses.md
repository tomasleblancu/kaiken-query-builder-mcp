# shop_addresses

> **Tipo:** Tabla

## Descripción

Módulo de e-commerce/tienda online

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 10

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | char(32) | NO | 🔑 PK | `-` |  | - |
| `street_address` | varchar(500) | NO |  | `-` |  | - |
| `postal_code` | varchar(10) | YES |  | `-` |  | - |
| `is_billing` | tinyint(1) | NO |  | `-` |  | - |
| `is_shipping` | tinyint(1) | NO |  | `-` |  | - |
| `is_default` | tinyint(1) | NO |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `updated_at` | datetime(6) | NO |  | `-` |  | - |
| `commune_id` | int | NO | 🔗 FK | `-` |  | - |
| `organization_id` | char(32) | NO | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `commune_id` | [communes](communes.md) | `idCommune` | shop_addresses_commune_id_6ae466d7_fk_communes_idCommune |
| `organization_id` | [shop_organizations](shop_organizations.md) | `id` | shop_addresses_organization_id_dd99bf88_fk_shop_organizations_id |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| shop_addresses_commune_id_6ae466d7_fk_communes_idCommune | INDEX | `commune_id` |
| shop_addresses_organization_id_dd99bf88_fk_shop_organizations_id | INDEX | `organization_id` |

## Notas

- **Columnas de tiempo:** `updated_at`

---

[← Volver al índice de tablas](../tables.md)
