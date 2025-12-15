# selectedTenderOrderRequest

> **Tipo:** Tabla

## Descripción

Licitaciones seleccionadas

## Estadísticas

- **Filas aproximadas:** 3,078
- **Columnas:** 14

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idSelectedTenderOrderRequest` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idSelectedTenders` | int | YES | 🔗 FK | `-` |  | - |
| `dateCreation` | date | YES |  | `-` |  | - |
| `idSelectedTenderOrderRequestStatus` | int | YES | 🔗 FK | `-` |  | - |
| `codeRequestOrder` | varchar(255) | YES |  | `-` |  | - |
| `priceNetSale` | int | YES |  | `-` |  | - |
| `priceGrossSale` | int | YES |  | `-` |  | - |
| `idUserCreation` | int | YES | 🔗 FK | `-` |  | - |
| `dateUpdate` | date | YES |  | `-` |  | - |
| `idClient` | int | YES | 🔗 FK | `-` |  | - |
| `isAuthorized` | int | YES |  | `0` |  | Pendiente: 0, Autorizado: 1, Rechazado: 2 |
| `idUserAuthorizer` | int | YES | 🔗 FK | `-` |  | - |
| `authorizedMessage` | varchar(4000) | YES |  | `-` |  | - |
| `type` | varchar(100) | YES |  | `-` |  | - |

### Clave Primaria

- `idSelectedTenderOrderRequest`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idClient` | [client](client.md) | `idClient` | fk_client |
| `idSelectedTenderOrderRequestStatus` | [selectedTenderOrderRequestStatus](selectedTenderOrderRequestStatus.md) | `idSelectedTenderOrderRequestStatus` | fk_orderRequestStatus |
| `idSelectedTenders` | [selectedTenders](selectedTenders.md) | `idSelectedTenders` | fk_selectedTendersRequest |
| `idUserAuthorizer` | [users](users.md) | `idUser` | fk_userAuthorizer |
| `idUserCreation` | [users](users.md) | `idUser` | fk_userCreation |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [selectedTenderOrder](selectedTenderOrder.md) | `idSelectedTenderOrderRequest` | FK orderIdSelectedTenderOrderRequest |
| [selectedTenderOrderRequestProduct](selectedTenderOrderRequestProduct.md) | `idSelectedTenderOrderRequest` | fk_selectedTenderOrderRequest |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| fk_client | INDEX | `idClient` |
| fk_orderRequestStatus | INDEX | `idSelectedTenderOrderRequestStatus` |
| fk_selectedTendersRequest | INDEX | `idSelectedTenders` |
| fk_userAuthorizer | INDEX | `idUserAuthorizer` |
| fk_userCreation | INDEX | `idUserCreation` |

## Notas

- **Auto-increment:** `idSelectedTenderOrderRequest`
- **Columnas de tiempo:** `dateCreation`, `dateUpdate`

---

[← Volver al índice de tablas](../tables.md)
