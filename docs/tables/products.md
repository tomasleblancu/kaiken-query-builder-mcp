# products

> **Tipo:** Tabla

## Descripción

Gestión de productos

## Estadísticas

- **Filas aproximadas:** 6
- **Columnas:** 4

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idProduct` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `nombre` | varchar(255) | YES |  | `-` |  | - |
| `observacion` | text | YES |  | `-` |  | - |
| `isActive` | tinyint(1) | YES |  | `-` |  | - |

### Clave Primaria

- `idProduct`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [product_supplier](product_supplier.md) | `idProduct` | product_supplier_ibfk_1 |
| [productsAttributeAssigned](productsAttributeAssigned.md) | `idProduct` | idProduct_fk_1 |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| ix_products_idProduct | INDEX | `idProduct` |

## Notas

- **Auto-increment:** `idProduct`

---

[← Volver al índice de tablas](../tables.md)
