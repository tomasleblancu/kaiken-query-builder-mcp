# selectedTenderOrderComment

> **Tipo:** Tabla

## Descripción

Licitaciones seleccionadas

## Estadísticas

- **Filas aproximadas:** 517
- **Columnas:** 6

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idSelectedTenderOrderComment` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idSelectedTenderOrder` | int | YES |  | `-` |  | - |
| `idUser` | int | YES |  | `-` |  | - |
| `date` | datetime | YES |  | `-` |  | - |
| `comment` | varchar(500) | YES |  | `-` |  | - |
| `idSelectedTenderCommentClasification` | int | YES | 🔗 FK | `-` |  | - |

### Clave Primaria

- `idSelectedTenderOrderComment`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idSelectedTenderCommentClasification` | [selectedTenderCommentClasification](selectedTenderCommentClasification.md) | `idSelectedTenderCommentClasification` | FK_idSelectedTenderCommentClasification_2 |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [selectedTenderCommentFiles](selectedTenderCommentFiles.md) | `idSelectedTenderOrderComment` | FK idSelectedTenderOrderComment |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| FK_idSelectedTenderCommentClasification_2 | INDEX | `idSelectedTenderCommentClasification` |

## Notas

- **Auto-increment:** `idSelectedTenderOrderComment`
- **Columnas de tiempo:** `date`

---

[← Volver al índice de tablas](../tables.md)
