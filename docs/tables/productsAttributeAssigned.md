# productsAttributeAssigned

> **Tipo:** Tabla

## Descripción

Gestión de productos

## Estadísticas

- **Filas aproximadas:** 7
- **Columnas:** 4

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idProductsAttributeAssigned` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idProduct` | int | YES | 🔗 FK | `-` |  | - |
| `idProductsAtribute` | int | YES | 🔗 FK | `-` |  | - |
| `valueAttribute` | varchar(1000) | YES |  | `-` |  | - |

### Clave Primaria

- `idProductsAttributeAssigned`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idProductsAtribute` | [productsAttribute](productsAttribute.md) | `idProductsAtribute` | idProductsAtribute_fk_1 |
| `idProduct` | [products](products.md) | `idProduct` | idProduct_fk_1 |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| idProduct_fk_1 | INDEX | `idProduct` |
| idProductsAtribute_fk_1 | INDEX | `idProductsAtribute` |

## Notas

- **Auto-increment:** `idProductsAttributeAssigned`

---

[← Volver al índice de tablas](../tables.md)
