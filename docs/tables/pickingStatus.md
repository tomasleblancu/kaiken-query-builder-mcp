# pickingStatus

> **Tipo:** Tabla

## Descripción

Gestión de estados/status

## Estadísticas

- **Filas aproximadas:** 2
- **Columnas:** 2

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idPickingStatus` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `pickingStatus` | varchar(255) | YES |  | `-` |  | - |

### Clave Primaria

- `idPickingStatus`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [selectedTenderOrder](selectedTenderOrder.md) | `idPickingStatus` | FK idPickingStatus order |
| [selectedTenderOrderPack](selectedTenderOrderPack.md) | `idPickingStatus` | FK packPickingStatus |
| [selectedTenders](selectedTenders.md) | `idPickingStatus` | FK idPickingStatus |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|

## Notas

- **Auto-increment:** `idPickingStatus`

---

[← Volver al índice de tablas](../tables.md)
