# selectedTenderCommentClasification

> **Tipo:** Tabla

## Descripción

Licitaciones seleccionadas

## Estadísticas

- **Filas aproximadas:** 4
- **Columnas:** 2

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idSelectedTenderCommentClasification` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `clasification` | varchar(100) | YES |  | `-` |  | - |

### Clave Primaria

- `idSelectedTenderCommentClasification`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [selectedTenderComment](selectedTenderComment.md) | `idSelectedTenderCommentClasification` | FK_idSelectedTenderCommentClasification_1 |
| [selectedTenderOrderComment](selectedTenderOrderComment.md) | `idSelectedTenderCommentClasification` | FK_idSelectedTenderCommentClasification_2 |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|

## Notas

- **Auto-increment:** `idSelectedTenderCommentClasification`

---

[← Volver al índice de tablas](../tables.md)
