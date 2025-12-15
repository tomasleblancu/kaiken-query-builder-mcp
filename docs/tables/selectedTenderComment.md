# selectedTenderComment

> **Tipo:** Tabla

## Descripción

Licitaciones seleccionadas

## Estadísticas

- **Filas aproximadas:** 1,191
- **Columnas:** 7

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idSelectedTenderComment` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idSelectedTenders` | int | YES | 🔗 FK | `-` |  | - |
| `idUser` | int | YES | 🔗 FK | `-` |  | - |
| `date` | datetime | YES |  | `-` |  | - |
| `comment` | varchar(500) | YES |  | `-` |  | - |
| `moduleCategory` | varchar(100) | YES |  | `-` |  | - |
| `idSelectedTenderCommentClasification` | int | YES | 🔗 FK | `-` |  | - |

### Clave Primaria

- `idSelectedTenderComment`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idSelectedTenders` | [selectedTenders](selectedTenders.md) | `idSelectedTenders` | FK comment idSelectedTenders |
| `idUser` | [users](users.md) | `idUser` | FK comment idUser |
| `idSelectedTenderCommentClasification` | [selectedTenderCommentClasification](selectedTenderCommentClasification.md) | `idSelectedTenderCommentClasification` | FK_idSelectedTenderCommentClasification_1 |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [selectedTenderCommentFiles](selectedTenderCommentFiles.md) | `idSelectedTenderComment` | FK idSelectedTenderComment |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| FK idSelectedTenders_idx | INDEX | `idSelectedTenders` |
| FK idUser_idx | INDEX | `idUser` |
| FK_idSelectedTenderCommentClasification_1 | INDEX | `idSelectedTenderCommentClasification` |

## Notas

- **Auto-increment:** `idSelectedTenderComment`
- **Columnas de tiempo:** `date`

---

[← Volver al índice de tablas](../tables.md)
