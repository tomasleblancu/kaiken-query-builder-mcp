# selectedTenderType

> **Tipo:** Tabla

## Descripción

Licitaciones seleccionadas

## Estadísticas

- **Filas aproximadas:** 2
- **Columnas:** 2

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idSelectedTenderType` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `type` | varchar(100) | YES |  | `-` |  | - |

### Clave Primaria

- `idSelectedTenderType`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [selectedTenders](selectedTenders.md) | `idSelectedTenderType` | FK idSelectedTenderType |
| [selectedTendersBak](selectedTendersBak.md) | `idSelectedTenderType` | selectedTendersBak_ibfk_9 |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| idSelectedTenderType | INDEX | `idSelectedTenderType` |

## Notas

- **Auto-increment:** `idSelectedTenderType`

---

[← Volver al índice de tablas](../tables.md)
