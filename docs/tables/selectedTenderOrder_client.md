# selectedTenderOrder_client

> **Tipo:** Tabla

## Descripción

Licitaciones seleccionadas

## Estadísticas

- **Filas aproximadas:** 5,001
- **Columnas:** 10

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idSelectedTenderOrder_client` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idSelectedTenderOrder` | int | YES | 🔗 FK | `-` |  | - |
| `idClient` | int | YES | 🔗 FK | `-` |  | - |
| `oc` | varchar(1000) | YES |  | `-` |  | - |
| `netSale` | int | YES |  | `-` |  | - |
| `grossSale` | int | YES |  | `-` |  | - |
| `idUserOperator` | int | YES | 🔗 FK | `-` |  | - |
| `dateAssignmentOperator` | date | YES |  | `-` |  | - |
| `palletQuantity` | int | YES |  | `-` |  | - |
| `packageQuantity` | int | YES |  | `-` |  | - |

### Clave Primaria

- `idSelectedTenderOrder_client`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idClient` | [client](client.md) | `idClient` | fkClient_selectedTenderOrder_client |
| `idUserOperator` | [users](users.md) | `idUser` | fkSelectedTenderOrder_client_idUserOperator |
| `idSelectedTenderOrder` | [selectedTenderOrder](selectedTenderOrder.md) | `idSelectedTenderOrder` | fkSelectedTenderOrder_selectedTenderOrder_client |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [selectedTenderOrder_client_detail](selectedTenderOrder_client_detail.md) | `idSelectedTenderOrder_client` | fkSelectedTenderOrder_client_selectedTenderOrder_client_detail |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| fkClient_selectedTenderOrder_client_idx | INDEX | `idClient` |
| fkSelectedTenderOrder_client_idUserOperator_idx | INDEX | `idUserOperator` |
| fkSelectedTenderOrder_selectedTenderOrder_client_idx | INDEX | `idSelectedTenderOrder` |
| idx_order_client | INDEX | `idSelectedTenderOrder_client,idSelectedTenderOrder` |
| idx_stoc_order | INDEX | `idSelectedTenderOrder` |

## Notas

- **Auto-increment:** `idSelectedTenderOrder_client`
- **Columnas de tiempo:** `dateAssignmentOperator`

---

[← Volver al índice de tablas](../tables.md)
