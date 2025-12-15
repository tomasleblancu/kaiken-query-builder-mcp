# billingStatus

> **Tipo:** Tabla

## Descripción

Facturación

## Estadísticas

- **Filas aproximadas:** 4
- **Columnas:** 2

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idBillingStatus` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `billingStatus` | varchar(100) | YES |  | `-` |  | - |

### Clave Primaria

- `idBillingStatus`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [billingData](billingData.md) | `idBillingStatus` | idBillingStatus |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|

## Notas

- **Auto-increment:** `idBillingStatus`

---

[← Volver al índice de tablas](../tables.md)
