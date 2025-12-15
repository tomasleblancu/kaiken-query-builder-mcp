# selectedTenderCommentFiles

> **Tipo:** Tabla

## Descripción

Licitaciones seleccionadas

## Estadísticas

- **Filas aproximadas:** 11
- **Columnas:** 5

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idSelectedTenderCommentFiles` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idSelectedTenderComment` | int | YES | 🔗 FK | `-` |  | - |
| `idSelectedTenderOrderComment` | int | YES | 🔗 FK | `-` |  | - |
| `name` | varchar(50) | YES |  | `-` |  | - |
| `type` | varchar(1000) | YES |  | `-` |  | - |

### Clave Primaria

- `idSelectedTenderCommentFiles`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idSelectedTenderComment` | [selectedTenderComment](selectedTenderComment.md) | `idSelectedTenderComment` | FK idSelectedTenderComment |
| `idSelectedTenderOrderComment` | [selectedTenderOrderComment](selectedTenderOrderComment.md) | `idSelectedTenderOrderComment` | FK idSelectedTenderOrderComment |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| FK idSelectedTenderComment_idx | INDEX | `idSelectedTenderComment` |
| FK idSelectedTenderOrderComment_idx | INDEX | `idSelectedTenderOrderComment` |

## Notas

- **Auto-increment:** `idSelectedTenderCommentFiles`

---

[← Volver al índice de tablas](../tables.md)
