# regions

> **Tipo:** Tabla

## Descripción

Tabla de datos del sistema

## Estadísticas

- **Filas aproximadas:** 16
- **Columnas:** 2

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idRegion` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `name` | varchar(255) | YES |  | `-` |  | - |

### Clave Primaria

- `idRegion`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [communes](communes.md) | `idRegion` | communes_ibfk_1 |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| ix_regions_idRegion | INDEX | `idRegion` |

## Notas

- **Auto-increment:** `idRegion`

---

[← Volver al índice de tablas](../tables.md)
