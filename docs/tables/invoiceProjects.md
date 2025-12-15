# invoiceProjects

> **Tipo:** Tabla

## Descripción

Gestión de proyectos

## Estadísticas

- **Filas aproximadas:** 444
- **Columnas:** 3

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idInvoiceProjects` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idInvoiceHead` | int | YES | 🔗 FK | `-` |  | - |
| `projectCode` | varchar(200) | YES | 🔗 FK | `-` |  | - |

### Clave Primaria

- `idInvoiceProjects`

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| idInvoiceHead | INDEX | `idInvoiceHead` |
| projectCode | INDEX | `projectCode` |

## Notas

- **Auto-increment:** `idInvoiceProjects`

---

[← Volver al índice de tablas](../tables.md)
