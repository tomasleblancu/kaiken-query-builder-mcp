# communes

> **Tipo:** Tabla

## Descripción

Tabla de datos del sistema

## Estadísticas

- **Filas aproximadas:** 345
- **Columnas:** 4

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idCommune` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `name` | varchar(255) | YES |  | `-` |  | - |
| `province` | varchar(255) | YES |  | `-` |  | - |
| `idRegion` | int | YES | 🔗 FK | `-` |  | - |

### Clave Primaria

- `idCommune`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idRegion` | [regions](regions.md) | `idRegion` | communes_ibfk_1 |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [client](client.md) | `idCommune` | fk_idcommune |
| [shop_addresses](shop_addresses.md) | `commune_id` | shop_addresses_commune_id_6ae466d7_fk_communes_idCommune |
| [supplier_address](supplier_address.md) | `idCommune` | supplier_address_ibfk_2 |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| ix_communes_idCommune | INDEX | `idCommune` |
| ix_communes_idRegion | INDEX | `idRegion` |

## Notas

- **Auto-increment:** `idCommune`

---

[← Volver al índice de tablas](../tables.md)
