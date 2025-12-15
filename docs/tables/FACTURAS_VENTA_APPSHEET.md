# FACTURAS_VENTA_APPSHEET

> **Tipo:** Vista (VIEW)

## Descripción

Tabla de datos del sistema

**Comentario:** VIEW

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 14

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idFactura` | varchar(11) | NO |  | `-` |  | - |
| `emisionDate` | varchar(10) | NO |  | `-` |  | - |
| `numDoc` | varchar(11) | NO |  | `-` |  | - |
| `totalFactura` | bigint | NO |  | `0` |  | - |
| `totalNC` | decimal(32,0) | NO |  | `0` |  | - |
| `adjTotal` | decimal(33,0) | NO |  | `0` |  | - |
| `idClient` | varchar(11) | NO |  | `-` |  | - |
| `urlPdf` | text | NO |  | `-` |  | - |
| `iva` | bigint | NO |  | `0` |  | - |
| `loadDate` | varchar(10) | NO |  | `-` |  | - |
| `folioRef` | text | YES |  | `-` |  | - |
| `folioRefClean` | text | YES |  | `-` |  | - |
| `rutEmisor` | text | NO |  | `-` |  | - |
| `rutCliente` | varchar(100) | NO |  | `-` |  | - |

## Notas

- **Columnas de tiempo:** `emisionDate`, `loadDate`

---

[← Volver al índice de tablas](../tables.md)
