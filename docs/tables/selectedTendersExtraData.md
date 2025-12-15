# selectedTendersExtraData

> **Tipo:** Tabla

## Descripción

Licitaciones seleccionadas

## Estadísticas

- **Filas aproximadas:** 1,146
- **Columnas:** 5

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idSelectedTendersExtraData` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `code` | varchar(100) | YES | 🔗 FK | `-` |  | - |
| `key` | varchar(100) | YES |  | `-` |  | - |
| `value` | varchar(100) | YES |  | `-` |  | - |
| `dateUpdate` | datetime | YES |  | `-` |  | - |

### Clave Primaria

- `idSelectedTendersExtraData`

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| unique | UNIQUE | `code,key,value` |

## Notas

- **Auto-increment:** `idSelectedTendersExtraData`
- **Columnas de tiempo:** `dateUpdate`

---

[← Volver al índice de tablas](../tables.md)
