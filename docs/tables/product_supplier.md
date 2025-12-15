# product_supplier

> **Tipo:** Tabla

## Descripción

Gestión de proveedores

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 5

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idProductSupplier` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idProduct` | int | YES | 🔗 FK | `-` |  | - |
| `idSupplier` | int | YES | 🔗 FK | `-` |  | - |
| `codeProvider` | varchar(255) | YES |  | `-` |  | - |
| `price` | int | YES |  | `-` |  | - |

### Clave Primaria

- `idProductSupplier`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idSupplier` | [provider](provider.md) | `idProvider` | fk_product_supplier_provider |
| `idProduct` | [products](products.md) | `idProduct` | product_supplier_ibfk_1 |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| ix_product_supplier_idProduct | INDEX | `idProduct` |
| ix_product_supplier_idProductSupplier | INDEX | `idProductSupplier` |
| ix_product_supplier_idSupplier | INDEX | `idSupplier` |

## Notas

- **Auto-increment:** `idProductSupplier`

---

[← Volver al índice de tablas](../tables.md)
