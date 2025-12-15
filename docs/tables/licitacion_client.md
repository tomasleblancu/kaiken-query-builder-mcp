# licitacion_client

> **Tipo:** Tabla

## Descripción

Gestión de licitaciones

## Estadísticas

- **Filas aproximadas:** 734
- **Columnas:** 10

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idLicitacion_client` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idSelectedTenders` | int | YES | 🔗 FK | `-` |  | - |
| `idClient` | int | YES | 🔗 FK | `-` |  | - |
| `oc` | varchar(255) | YES |  | `-` |  | - |
| `netSale` | int | YES |  | `-` |  | - |
| `grossSale` | int | YES |  | `-` |  | - |
| `idUserOperator` | int | YES | 🔗 FK | `-` |  | - |
| `dateAssignmentOperator` | date | YES |  | `-` |  | - |
| `palletQuantity` | int | YES |  | `-` |  | - |
| `packageQuantity` | int | YES |  | `-` |  | - |

### Clave Primaria

- `idLicitacion_client`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idClient` | [client](client.md) | `idClient` | fkLicitacion_client_client |
| `idSelectedTenders` | [selectedTenders](selectedTenders.md) | `idSelectedTenders` | fkLicitacion_client_selectedTenders |
| `idUserOperator` | [users](users.md) | `idUser` | fkLicitacion_client_users |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [licitacion_client_detail](licitacion_client_detail.md) | `idLicitacion_client` | fkLicitacion_client_detail_licitacion_client |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| fkLicitacion_client_client | INDEX | `idClient` |
| fkLicitacion_client_selectedTenders | INDEX | `idSelectedTenders` |
| fkLicitacion_client_users | INDEX | `idUserOperator` |
| idx_lc_tenders | INDEX | `idSelectedTenders,dateAssignmentOperator` |

## Notas

- **Auto-increment:** `idLicitacion_client`
- **Columnas de tiempo:** `dateAssignmentOperator`

---

[← Volver al índice de tablas](../tables.md)
