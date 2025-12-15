# selectedTenderOperationStatus

> **Tipo:** Tabla

## Descripción

Licitaciones seleccionadas

## Estadísticas

- **Filas aproximadas:** 7
- **Columnas:** 3

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idSelectedTenderOperationsStatus` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `status` | varchar(100) | YES | 🔗 FK | `-` |  | - |
| `color` | varchar(100) | YES |  | `-` |  | - |

### Clave Primaria

- `idSelectedTenderOperationsStatus`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [selectedTenderOrder](selectedTenderOrder.md) | `idOperationStatus` | FK order idOperationStatus |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| idSelectedTenderOperationsStatus | INDEX | `idSelectedTenderOperationsStatus` |
| status | INDEX | `status` |

## Notas

- **Auto-increment:** `idSelectedTenderOperationsStatus`

---

[← Volver al índice de tablas](../tables.md)
