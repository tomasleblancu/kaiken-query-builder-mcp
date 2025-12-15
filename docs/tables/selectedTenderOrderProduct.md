# selectedTenderOrderProduct

> **Tipo:** Tabla

## Descripción

Licitaciones seleccionadas

## Estadísticas

- **Filas aproximadas:** 93,444
- **Columnas:** 8

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idSelectedTenderOrderProduct` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idSelectedTenderOrder` | int | YES | 🔗 FK | `-` |  | - |
| `productOrder` | int | NO | 🔗 FK | `-` |  | - |
| `quantity` | int | YES |  | `-` |  | - |
| `priceNetSale` | int | YES |  | `-` |  | - |
| `priceNetOrder` | int | YES |  | `-` |  | - |
| `realUnitCost` | int | YES |  | `-` |  | - |
| `finalProvider` | text | YES |  | `-` |  | - |

### Clave Primaria

- `idSelectedTenderOrderProduct`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idSelectedTenderOrder` | [selectedTenderOrder](selectedTenderOrder.md) | `idSelectedTenderOrder` | idOrder |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| idSelectedTenderOrder | INDEX | `idSelectedTenderOrder` |
| productOrder | INDEX | `productOrder` |

## Notas

- **Auto-increment:** `idSelectedTenderOrderProduct`

---

[← Volver al índice de tablas](../tables.md)
