# projectAllProduct

> **Tipo:** Tabla

## Descripción

Gestión de proyectos

## Estadísticas

- **Filas aproximadas:** 45,708
- **Columnas:** 12

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idProjectAllProduct` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `projectCode` | varchar(1000) | YES |  | `-` |  | - |
| `demandante` | varchar(4000) | YES |  | `-` |  | - |
| `grouping` | varchar(100) | YES |  | `-` |  | - |
| `productOrder` | int | YES |  | `-` |  | - |
| `requestedProduct` | varchar(4000) | YES |  | `-` |  | - |
| `netCost` | int | YES |  | `-` |  | - |
| `netPrice` | int | YES |  | `-` |  | - |
| `quantity` | decimal(32,0) | YES |  | `-` |  | - |
| `totalNetCost` | decimal(42,0) | YES |  | `-` |  | - |
| `totalNetPrice` | decimal(42,0) | YES |  | `-` |  | - |
| `adjudicationDate` | date | YES |  | `-` |  | - |

### Clave Primaria

- `idProjectAllProduct`

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|

## Notas

- **Auto-increment:** `idProjectAllProduct`
- **Columnas de tiempo:** `adjudicationDate`

---

[← Volver al índice de tablas](../tables.md)
