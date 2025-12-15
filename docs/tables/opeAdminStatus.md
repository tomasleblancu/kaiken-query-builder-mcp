# opeAdminStatus

> **Tipo:** Tabla

## Descripción

Gestión de estados/status

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 2

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idOpeAdminStatus` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `opeAdminStatus` | varchar(255) | YES |  | `-` |  | - |

### Clave Primaria

- `idOpeAdminStatus`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [selectedTenderOrder](selectedTenderOrder.md) | `idOpeAdminStatus` | FK selectedTenderOrder_opeAdminStatus |
| [selectedTenders](selectedTenders.md) | `idOpeAdminStatus` | FK selectedTenders_opeAdminStatus |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|

## Notas

- **Auto-increment:** `idOpeAdminStatus`

---

[← Volver al índice de tablas](../tables.md)
