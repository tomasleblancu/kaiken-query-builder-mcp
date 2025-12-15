# selectedTenderOrderRequestProduct

> **Tipo:** Tabla

## Descripción

Licitaciones seleccionadas

## Estadísticas

- **Filas aproximadas:** 53,468
- **Columnas:** 8

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idSelectedTenderOrderRequestProduct` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idSelectedTenderOrderRequest` | int | YES | 🔗 FK | `-` |  | - |
| `productOrder` | int | YES |  | `-` |  | - |
| `requestedProduct` | text | YES |  | `-` |  | - |
| `idSelectedTenderProduct` | int | YES | 🔗 FK | `-` |  | - |
| `quantity` | int | YES |  | `-` |  | - |
| `netSale` | int | YES |  | `-` |  | - |
| `grossSale` | int | YES |  | `-` |  | - |

### Clave Primaria

- `idSelectedTenderOrderRequestProduct`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idSelectedTenderOrderRequest` | [selectedTenderOrderRequest](selectedTenderOrderRequest.md) | `idSelectedTenderOrderRequest` | fk_selectedTenderOrderRequest |
| `idSelectedTenderProduct` | [selectedTenderProduct](selectedTenderProduct.md) | `idSelectedTenderProduct` | fk_selectedTenderProduct |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| fk_selectedTenderOrderRequest | INDEX | `idSelectedTenderOrderRequest` |
| fk_selectedTenderProduct | INDEX | `idSelectedTenderProduct` |

## Notas

- **Auto-increment:** `idSelectedTenderOrderRequestProduct`

---

[← Volver al índice de tablas](../tables.md)
