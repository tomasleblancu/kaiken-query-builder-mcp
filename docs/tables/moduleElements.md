# moduleElements

> **Tipo:** Tabla

## Descripción

Tabla de datos del sistema

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 5

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idModuleElements` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idModule` | int | YES | 🔗 FK | `-` |  | - |
| `elementName` | varchar(50) | YES |  | `-` |  | - |
| `elementType` | varchar(45) | YES |  | `-` |  | - |
| `elementTable` | varchar(50) | YES |  | `-` |  | - |

### Clave Primaria

- `idModuleElements`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idModule` | [module](module.md) | `idModule` | idModule |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| idModule_idx | INDEX | `idModule` |

## Notas

- **Auto-increment:** `idModuleElements`

---

[← Volver al índice de tablas](../tables.md)
