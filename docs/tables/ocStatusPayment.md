# ocStatusPayment

> **Tipo:** Tabla

## Descripción

Órdenes de compra

## Estadísticas

- **Filas aproximadas:** 3
- **Columnas:** 2

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idOcStatusPayment` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `ocStatusPayment` | varchar(45) | YES |  | `-` |  | - |

### Clave Primaria

- `idOcStatusPayment`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [ocHeader](ocHeader.md) | `idOcStatusPayment` | FK_idOcStatusPayment_ocStatusPayment |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|

## Notas

- **Auto-increment:** `idOcStatusPayment`

---

[← Volver al índice de tablas](../tables.md)
