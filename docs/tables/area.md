# area

> **Tipo:** Tabla

## Descripción

Tabla de datos del sistema

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 6

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idArea` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `nombre` | varchar(100) | NO | ✨ UNIQUE | `-` |  | - |
| `descripcion` | longtext | YES |  | `-` |  | - |
| `isActive` | tinyint(1) | NO |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `updated_at` | datetime(6) | NO |  | `-` |  | - |

### Clave Primaria

- `idArea`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [contacto](contacto.md) | `idArea` | contacto_idArea_2624c982_fk_area_idArea |
| [subarea](subarea.md) | `idArea` | subarea_idArea_c05e5666_fk_area_idArea |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| nombre | UNIQUE | `nombre` |

## Notas

- **Auto-increment:** `idArea`
- **Columnas de tiempo:** `updated_at`

---

[← Volver al índice de tablas](../tables.md)
