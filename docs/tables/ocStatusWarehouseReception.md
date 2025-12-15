# ocStatusWarehouseReception

> **Tipo:** Tabla

## Descripción

Órdenes de compra

## Estadísticas

- **Filas aproximadas:** 3
- **Columnas:** 2

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idOcStatusWarehouseReception` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `ocStatusWarehouseReception` | varchar(50) | YES |  | `-` |  | - |

### Clave Primaria

- `idOcStatusWarehouseReception`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [ocHeader](ocHeader.md) | `idOcStatusWarehouseReception` | FK_idOcStatusWarehouseReception_ocStatusWarehouseReception |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|

## Notas

- **Auto-increment:** `idOcStatusWarehouseReception`

---

[← Volver al índice de tablas](../tables.md)
