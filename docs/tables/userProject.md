# userProject

> **Tipo:** Tabla

## Descripción

Gestión de proyectos

## Estadísticas

- **Filas aproximadas:** 608
- **Columnas:** 3

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idUserProject` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idUser` | int | YES | 🔗 FK | `-` |  | - |
| `idSelectedTenders` | int | YES | 🔗 FK | `-` |  | - |

### Clave Primaria

- `idUserProject`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idSelectedTenders` | [selectedTenders](selectedTenders.md) | `idSelectedTenders` | fk_selectedTenders |
| `idUser` | [users](users.md) | `idUser` | fk_user |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| fk_selectedTenders | INDEX | `idSelectedTenders` |
| fk_user | INDEX | `idUser` |

## Notas

- **Auto-increment:** `idUserProject`

---

[← Volver al índice de tablas](../tables.md)
