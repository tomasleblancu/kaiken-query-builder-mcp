# cotizacionSolicitadaProducto

> **Tipo:** Tabla

## Descripción

Gestión de cotizaciones

## Estadísticas

- **Filas aproximadas:** 2,431
- **Columnas:** 6

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idCotizacionSolicitadaProducto` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idCotizacionSolicitada` | int | YES | 🔗 FK | `-` |  | - |
| `producto` | varchar(2000) | YES |  | `-` |  | - |
| `cantidad` | int | YES |  | `-` |  | - |
| `valor` | int | YES |  | `-` |  | - |
| `orden` | int | YES |  | `-` |  | - |

### Clave Primaria

- `idCotizacionSolicitadaProducto`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idCotizacionSolicitada` | [cotizacionSolicitada](cotizacionSolicitada.md) | `idCotizacionSolicitada` | idCotizacionSolicitada |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| idCotizacionSolicitada | INDEX | `idCotizacionSolicitada` |

## Notas

- **Auto-increment:** `idCotizacionSolicitadaProducto`

---

[← Volver al índice de tablas](../tables.md)
