# product

> **Tipo:** Tabla

## Descripción

Gestión de productos

## Estadísticas

- **Filas aproximadas:** 11
- **Columnas:** 2

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idProduct` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `product` | varchar(50) | YES | ✨ UNIQUE | `-` |  | - |

### Clave Primaria

- `idProduct`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [selectedTenderProduct](selectedTenderProduct.md) | `idProduct` | FK idProduct |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| product_UNIQUE | UNIQUE | `product` |

## Notas

- **Auto-increment:** `idProduct`

---

[← Volver al índice de tablas](../tables.md)
