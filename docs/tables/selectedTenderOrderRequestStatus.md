# selectedTenderOrderRequestStatus

> **Tipo:** Tabla

## Descripción

Licitaciones seleccionadas

## Estadísticas

- **Filas aproximadas:** 4
- **Columnas:** 2

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idSelectedTenderOrderRequestStatus` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `requestStatus` | varchar(200) | YES |  | `-` |  | - |

### Clave Primaria

- `idSelectedTenderOrderRequestStatus`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [selectedTenderOrderRequest](selectedTenderOrderRequest.md) | `idSelectedTenderOrderRequestStatus` | fk_orderRequestStatus |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|

## Notas

- **Auto-increment:** `idSelectedTenderOrderRequestStatus`

---

[← Volver al índice de tablas](../tables.md)
