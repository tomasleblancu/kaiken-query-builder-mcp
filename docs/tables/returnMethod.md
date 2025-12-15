# returnMethod

> **Tipo:** Tabla

## Descripción

Tabla de datos del sistema

## Estadísticas

- **Filas aproximadas:** 7
- **Columnas:** 4

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idReturnMethod` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `valueReturnMethod` | varchar(255) | YES |  | `-` |  | - |
| `nameReturnMethod` | varchar(255) | YES |  | `-` |  | - |
| `clasification` | varchar(255) | YES |  | `-` |  | - |

### Clave Primaria

- `idReturnMethod`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [adjustmentHead](adjustmentHead.md) | `idReturnMethod` | fk_idReturnMethod_1 |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|

## Notas

- **Auto-increment:** `idReturnMethod`

---

[← Volver al índice de tablas](../tables.md)
