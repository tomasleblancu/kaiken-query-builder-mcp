# ocConciliationStatus

> **Tipo:** Tabla

## Descripción

Órdenes de compra

## Estadísticas

- **Filas aproximadas:** 2
- **Columnas:** 2

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idOcConciliationStatus` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `ocConciliationStatus` | varchar(255) | YES |  | `-` |  | - |

### Clave Primaria

- `idOcConciliationStatus`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [ocHeader](ocHeader.md) | `idOcConciliationStatus` | FK_ocHeader_ocConciliationStatus |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|

## Notas

- **Auto-increment:** `idOcConciliationStatus`

---

[← Volver al índice de tablas](../tables.md)
