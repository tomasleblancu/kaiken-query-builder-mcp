# ocStatusAvailable

> **Tipo:** Tabla

## Descripción

Órdenes de compra

## Estadísticas

- **Filas aproximadas:** 6
- **Columnas:** 2

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idOcStatusAvailable` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `ocStatusAvailable` | varchar(50) | YES |  | `-` |  | - |

### Clave Primaria

- `idOcStatusAvailable`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [ocHeader](ocHeader.md) | `idOcStatusAvailable` | FK_idOcStatusAvailable_ocStatusAvailable |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| idOcStatusAvailable | INDEX | `idOcStatusAvailable` |

## Notas

- **Auto-increment:** `idOcStatusAvailable`

---

[← Volver al índice de tablas](../tables.md)
