# projectBudget

> **Tipo:** Tabla

## Descripción

Gestión de proyectos

## Estadísticas

- **Filas aproximadas:** 45
- **Columnas:** 8

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idProjectBudget` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `codeProject` | varchar(1000) | YES |  | `-` |  | - |
| `budgetMonth` | int | YES |  | `-` |  | - |
| `budgetYear` | int | YES |  | `-` |  | - |
| `amount` | bigint | YES |  | `-` |  | - |
| `usedAmount` | bigint | YES |  | `-` |  | - |
| `pendingAmount` | bigint | YES |  | `-` | STORED GENERATED | - |
| `idUserUpdate` | int | YES | 🔗 FK | `-` |  | - |

### Clave Primaria

- `idProjectBudget`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idUserUpdate` | [users](users.md) | `idUser` | fk_iduserUpdate_1 |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| fk_iduserUpdate_1 | INDEX | `idUserUpdate` |

## Notas

- **Auto-increment:** `idProjectBudget`
- **Columnas de tiempo:** `idUserUpdate`

---

[← Volver al índice de tablas](../tables.md)
