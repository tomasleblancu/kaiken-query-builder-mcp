# bank

> **Tipo:** Tabla

## Descripción

Tabla de datos del sistema

## Estadísticas

- **Filas aproximadas:** 14
- **Columnas:** 3

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idBank` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `name` | varchar(200) | YES | 🔗 FK | `-` |  | - |
| `code` | varchar(10) | YES | 🔗 FK | `-` |  | - |

### Clave Primaria

- `idBank`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [ocHeaderPayment](ocHeaderPayment.md) | `codeBank` | fk_ocHeaderPayment_codeBank |
| [paymentMethod](paymentMethod.md) | `idBank` | fk_idBank |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| code | INDEX | `code` |
| idBank | INDEX | `idBank` |
| name | INDEX | `name` |

## Notas

- **Auto-increment:** `idBank`

---

[← Volver al índice de tablas](../tables.md)
