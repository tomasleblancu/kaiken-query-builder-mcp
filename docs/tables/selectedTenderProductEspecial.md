# selectedTenderProductEspecial

> **Tipo:** Tabla

## Descripción

Licitaciones seleccionadas

## Estadísticas

- **Filas aproximadas:** 4,426
- **Columnas:** 4

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idSelectedTenderProductEspecial` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `numberProduct` | int | YES | 🔗 FK | `-` |  | - |
| `code` | varchar(100) | YES |  | `-` |  | - |
| `type` | varchar(100) | YES | 🔗 FK | `-` |  | - |

### Clave Primaria

- `idSelectedTenderProductEspecial`

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| number | INDEX | `numberProduct` |
| type | INDEX | `type` |

## Notas

- **Auto-increment:** `idSelectedTenderProductEspecial`

---

[← Volver al índice de tablas](../tables.md)
