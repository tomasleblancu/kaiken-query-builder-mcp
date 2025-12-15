# profileModule

> **Tipo:** Tabla

## Descripción

Tabla de datos del sistema

## Estadísticas

- **Filas aproximadas:** 502
- **Columnas:** 3

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idProfileModule` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idProfile` | int | NO | 🔗 FK | `-` |  | - |
| `idModule` | int | NO | 🔗 FK | `-` |  | - |

### Clave Primaria

- `idProfileModule`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idModule` | [module](module.md) | `idModule` | fk_profileModule_module |
| `idProfile` | [profile](profile.md) | `idProfile` | fk_profileModule_profile |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| fk_profileModule_module | INDEX | `idModule` |
| fk_profileModule_profile | INDEX | `idProfile` |

## Notas

- **Auto-increment:** `idProfileModule`

---

[← Volver al índice de tablas](../tables.md)
