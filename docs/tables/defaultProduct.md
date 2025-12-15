# defaultProduct

> **Tipo:** Tabla

## Descripción

Gestión de productos

## Estadísticas

- **Filas aproximadas:** 8
- **Columnas:** 3

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idDefaultProduct` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `product` | varchar(50) | YES |  | `-` |  | - |
| `quantity` | int | YES |  | `999999` |  | - |

### Clave Primaria

- `idDefaultProduct`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [ocDetailDefaultProduct](ocDetailDefaultProduct.md) | `idDefaultProduct` | FK_ocDetailDefaultProduct_defaultProduct |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|

## Notas

- **Auto-increment:** `idDefaultProduct`

---

[← Volver al índice de tablas](../tables.md)
