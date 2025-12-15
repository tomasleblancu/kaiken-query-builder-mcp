# actionExternal

> **Tipo:** Tabla

## Descripción

Tabla de datos del sistema

## Estadísticas

- **Filas aproximadas:** 56
- **Columnas:** 5

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idAction` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idModule` | int | NO | 🔗 FK | `-` |  | - |
| `identificator` | varchar(1000) | NO |  | `-` |  | - |
| `code` | varchar(1000) | NO |  | `-` |  | - |
| `description` | varchar(100) | YES |  | `-` |  | - |

### Clave Primaria

- `idAction`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idModule` | [module](module.md) | `idModule` | actionExternal_ibfk_1 |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| fk_action_module | INDEX | `idModule` |

## Notas

- **Auto-increment:** `idAction`

---

[← Volver al índice de tablas](../tables.md)
