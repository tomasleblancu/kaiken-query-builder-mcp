# subarea

> **Tipo:** Tabla

## Descripción

Tabla de datos del sistema

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 7

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idSubArea` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `nombre` | varchar(100) | NO |  | `-` |  | - |
| `descripcion` | longtext | YES |  | `-` |  | - |
| `isActive` | tinyint(1) | NO |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `updated_at` | datetime(6) | NO |  | `-` |  | - |
| `idArea` | int | NO | 🔗 FK | `-` |  | - |

### Clave Primaria

- `idSubArea`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idArea` | [area](area.md) | `idArea` | subarea_idArea_c05e5666_fk_area_idArea |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [contacto](contacto.md) | `idSubArea` | contacto_idSubArea_ed5e2f8c_fk_subarea_idSubArea |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| subarea_idArea_nombre_80ddbf3a_uniq | UNIQUE | `idArea,nombre` |

## Notas

- **Auto-increment:** `idSubArea`
- **Columnas de tiempo:** `updated_at`

---

[← Volver al índice de tablas](../tables.md)
