# productsAttribute

> **Tipo:** Tabla

## Descripción

Gestión de productos

## Estadísticas

- **Filas aproximadas:** 16
- **Columnas:** 3

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idProductsAtribute` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `nameAttribute` | varchar(100) | YES |  | `-` |  | - |
| `fixed` | int | YES |  | `-` |  | - |

### Clave Primaria

- `idProductsAtribute`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [productsAttributeAssigned](productsAttributeAssigned.md) | `idProductsAtribute` | idProductsAtribute_fk_1 |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|

## Notas

- **Auto-increment:** `idProductsAtribute`

---

[← Volver al índice de tablas](../tables.md)
