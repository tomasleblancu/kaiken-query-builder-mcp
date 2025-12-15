# ocDeletedReason

> **Tipo:** Tabla

## Descripción

Órdenes de compra

## Estadísticas

- **Filas aproximadas:** 4
- **Columnas:** 2

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idOcDeletedReason` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `ocDeletedReason` | varchar(100) | YES |  | `-` |  | - |

### Clave Primaria

- `idOcDeletedReason`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [ocHeader](ocHeader.md) | `idOcDeletedReason` | FK_idOcDeletedReason_idOcDeletedReason |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|

## Notas

- **Auto-increment:** `idOcDeletedReason`

---

[← Volver al índice de tablas](../tables.md)
