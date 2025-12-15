# selectedTenderOrderPickingReceived

> **Tipo:** Tabla

## Descripción

Licitaciones seleccionadas

## Estadísticas

- **Filas aproximadas:** 7,936
- **Columnas:** 5

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idSelectedTenderOrderPickingReceived` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idUser` | int | YES | 🔗 FK | `-` |  | - |
| `quantityReceived` | int | YES |  | `-` |  | - |
| `dateReceived` | date | YES |  | `-` |  | - |
| `idSelectedTenderOrder_client_detail` | int | YES | 🔗 FK | `-` |  | - |

### Clave Primaria

- `idSelectedTenderOrderPickingReceived`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idSelectedTenderOrder_client_detail` | [selectedTenderOrder_client_detail](selectedTenderOrder_client_detail.md) | `idSelectedTenderOrder_client_detail` | fkSelectedTenderOrderPickingReceivedDetail |
| `idUser` | [users](users.md) | `idUser` | fkSelectedTenderOrderPickingReceivedUser |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| fkSelectedTenderOrderPickingReceivedDetail | INDEX | `idSelectedTenderOrder_client_detail` |
| fkSelectedTenderOrderPickingReceivedUser | INDEX | `idUser` |

## Notas

- **Auto-increment:** `idSelectedTenderOrderPickingReceived`
- **Columnas de tiempo:** `dateReceived`

---

[← Volver al índice de tablas](../tables.md)
