# unitMeasurement

> **Tipo:** Tabla

## Descripción

Tabla de datos del sistema

## Estadísticas

- **Filas aproximadas:** 95
- **Columnas:** 2

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idUnitMeasurement` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `unitMeasurement` | varchar(50) | YES |  | `-` |  | - |

### Clave Primaria

- `idUnitMeasurement`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [selectedTenderProduct](selectedTenderProduct.md) | `idUnitMeasurement` | FK idUnitMeasurement |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|

## Notas

- **Auto-increment:** `idUnitMeasurement`

---

[← Volver al índice de tablas](../tables.md)
