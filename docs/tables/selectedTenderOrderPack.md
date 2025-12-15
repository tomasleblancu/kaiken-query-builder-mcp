# selectedTenderOrderPack

> **Tipo:** Tabla

## Descripción

Licitaciones seleccionadas

## Estadísticas

- **Filas aproximadas:** 178
- **Columnas:** 13

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idSelectedTenderOrderPack` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `name` | varchar(500) | YES | 🔗 FK | `-` |  | - |
| `idUser` | int | YES | 🔗 FK | `-` |  | - |
| `dateCreation` | datetime | YES |  | `CURRENT_TIMESTAMP` | DEFAULT_GENERATED | - |
| `orderNumber` | int | YES |  | `-` |  | - |
| `isMatrix` | int | YES |  | `-` |  | - |
| `dateUpdate` | datetime | YES |  | `-` |  | - |
| `idUserSupervisor` | int | YES | 🔗 FK | `-` |  | - |
| `idPickingStatus` | int | YES | 🔗 FK | `1` |  | - |
| `commentPicking` | text | YES |  | `-` |  | - |
| `datePickingLimit` | date | YES |  | `-` |  | - |
| `isClosed` | int | YES |  | `-` |  | - |
| `closeProjectComment` | text | YES |  | `-` |  | - |

### Clave Primaria

- `idSelectedTenderOrderPack`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idUser` | [users](users.md) | `idUser` | FK orderpackUser |
| `idPickingStatus` | [pickingStatus](pickingStatus.md) | `idPickingStatus` | FK packPickingStatus |
| `idUserSupervisor` | [users](users.md) | `idUser` | FK packSupervisor |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [project_metrics](project_metrics.md) | `idSelectedTenderOrderPack` | project_metrics_idSelectedTenderOrde_cc367472_fk_selectedT |
| [selectedTenderOrder](selectedTenderOrder.md) | `idSelectedTenderOrderPack` | FK orderIdSelectedTenderOrderPack |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| FK orderpackUser_idx | INDEX | `idUser` |
| FK packPickingStatus | INDEX | `idPickingStatus` |
| FK packSupervisor | INDEX | `idUserSupervisor` |
| idSelectedTenderOrderPack | INDEX | `idSelectedTenderOrderPack` |
| name | INDEX | `name` |

## Notas

- **Auto-increment:** `idSelectedTenderOrderPack`
- **Columnas de tiempo:** `dateCreation`, `dateUpdate`, `datePickingLimit`

---

[← Volver al índice de tablas](../tables.md)
