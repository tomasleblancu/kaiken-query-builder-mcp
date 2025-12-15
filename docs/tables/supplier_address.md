# supplier_address

> **Tipo:** Tabla

## Descripción

Gestión de proveedores

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 4

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idAddress` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idSupplier` | int | YES | 🔗 FK | `-` |  | - |
| `idCommune` | int | YES | 🔗 FK | `-` |  | - |
| `direccion` | varchar(255) | YES |  | `-` |  | - |

### Clave Primaria

- `idAddress`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idSupplier` | [provider](provider.md) | `idProvider` | fk_supplier_address_provider |
| `idCommune` | [communes](communes.md) | `idCommune` | supplier_address_ibfk_2 |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| ix_supplier_address_idAddress | INDEX | `idAddress` |
| ix_supplier_address_idCommune | INDEX | `idCommune` |
| ix_supplier_address_idSupplier | INDEX | `idSupplier` |

## Notas

- **Auto-increment:** `idAddress`

---

[← Volver al índice de tablas](../tables.md)
