# suppliers

> **Tipo:** Tabla

## Descripción

Gestión de proveedores

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 19

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idSupplier` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `razonSocial` | varchar(255) | YES |  | `-` |  | - |
| `rut` | varchar(100) | YES |  | `-` |  | - |
| `fechaIngreso` | datetime | YES |  | `-` |  | - |
| `fechaModificacion` | datetime | YES |  | `-` |  | - |
| `rubro` | varchar(255) | YES |  | `-` |  | - |
| `tipo` | varchar(255) | YES |  | `-` |  | - |
| `nombreContacto` | varchar(255) | YES |  | `-` |  | - |
| `telefonoContacto` | varchar(100) | YES |  | `-` |  | - |
| `emailContacto` | varchar(255) | YES |  | `-` |  | - |
| `condicionPago` | varchar(100) | YES |  | `-` |  | - |
| `moneda` | varchar(100) | YES |  | `-` |  | - |
| `tipoCuenta` | varchar(100) | YES |  | `-` |  | - |
| `banco` | varchar(100) | YES |  | `-` |  | - |
| `numeroCuenta` | int | YES |  | `-` |  | - |
| `lineaCredito` | int | YES |  | `-` |  | - |
| `evaluacion` | int | YES |  | `-` |  | - |
| `observacion` | text | YES |  | `-` |  | - |
| `isActive` | tinyint(1) | YES |  | `-` |  | - |

### Clave Primaria

- `idSupplier`

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|

## Notas

- **Auto-increment:** `idSupplier`

---

[← Volver al índice de tablas](../tables.md)
