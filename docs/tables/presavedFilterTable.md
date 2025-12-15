# presavedFilterTable

> **Tipo:** Tabla

## Descripción

Tabla de datos del sistema

## Estadísticas

- **Filas aproximadas:** 28
- **Columnas:** 5

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idPresavedFilter` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `name` | varchar(50) | YES |  | `-` |  | - |
| `content` | text | YES |  | `-` |  | - |
| `idUser` | int | YES | 🔗 FK | `-` |  | - |
| `idModule` | int | YES | 🔗 FK | `-` |  | - |

### Clave Primaria

- `idPresavedFilter`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idModule` | [module](module.md) | `idModule` | presavedFilterTable_ibfk_1 |
| `idUser` | [users](users.md) | `idUser` | presavedFilterTable_ibfk_2 |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| FK idModule_idx | INDEX | `idModule` |
| FK idUser_idx | INDEX | `idUser` |

## Notas

- **Auto-increment:** `idPresavedFilter`

---

[← Volver al índice de tablas](../tables.md)
