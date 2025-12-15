# ocStatusInvoiceConciliation

> **Tipo:** Tabla

## Descripción

Órdenes de compra

## Estadísticas

- **Filas aproximadas:** 2
- **Columnas:** 2

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idOcStatusInvoiceConciliation` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `ocStatusInvoiceConciliation` | varchar(50) | YES |  | `-` |  | - |

### Clave Primaria

- `idOcStatusInvoiceConciliation`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [ocHeader](ocHeader.md) | `idOcStatusInvoiceConciliation` | FK_idOcStatusInvoiceConciliation_ocStatusInvoiceConciliation |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|

## Notas

- **Auto-increment:** `idOcStatusInvoiceConciliation`

---

[← Volver al índice de tablas](../tables.md)
