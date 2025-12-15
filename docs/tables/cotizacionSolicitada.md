# cotizacionSolicitada

> **Tipo:** Tabla

## Descripción

Gestión de cotizaciones

## Estadísticas

- **Filas aproximadas:** 90
- **Columnas:** 6

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idCotizacionSolicitada` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `email` | varchar(2000) | YES |  | `-` |  | - |
| `codigo` | varchar(1000) | YES |  | `-` |  | - |
| `location` | text | YES |  | `-` |  | - |
| `fecha` | date | YES |  | `-` |  | - |
| `hora` | time | YES |  | `-` |  | - |

### Clave Primaria

- `idCotizacionSolicitada`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [cotizacionSolicitadaProducto](cotizacionSolicitadaProducto.md) | `idCotizacionSolicitada` | idCotizacionSolicitada |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|

## Notas

- **Auto-increment:** `idCotizacionSolicitada`

---

[← Volver al índice de tablas](../tables.md)
