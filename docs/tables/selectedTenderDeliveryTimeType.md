# selectedTenderDeliveryTimeType

> **Tipo:** Tabla

## Descripción

Licitaciones seleccionadas

## Estadísticas

- **Filas aproximadas:** 2
- **Columnas:** 2

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idSelectedTenderDeliveryTimeType` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `deliveryTimeType` | varchar(45) | YES | 🔗 FK | `-` |  | - |

### Clave Primaria

- `idSelectedTenderDeliveryTimeType`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [selectedTenders](selectedTenders.md) | `idSelectedTenderDeliveryTimeType` | FK idSelectedTenderDeliveryTimeType |
| [selectedTendersBak](selectedTendersBak.md) | `idSelectedTenderDeliveryTimeType` | selectedTendersBak_ibfk_2 |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| deliveryTimeType | INDEX | `deliveryTimeType` |
| idSelectedTenderDeliveryTimeType | INDEX | `idSelectedTenderDeliveryTimeType` |

## Notas

- **Auto-increment:** `idSelectedTenderDeliveryTimeType`

---

[← Volver al índice de tablas](../tables.md)
