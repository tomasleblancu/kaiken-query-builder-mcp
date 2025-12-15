# selectedTenderTransport

> **Tipo:** Tabla

## Descripción

Licitaciones seleccionadas

## Estadísticas

- **Filas aproximadas:** 4
- **Columnas:** 2

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idSelectedTenderTransport` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `transport` | varchar(50) | YES |  | `-` |  | - |

### Clave Primaria

- `idSelectedTenderTransport`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [selectedTenders](selectedTenders.md) | `idSelectedTenderTransport` | FK idSelectedTenderTransport |
| [selectedTendersBak](selectedTendersBak.md) | `idSelectedTenderTransport` | selectedTendersBak_ibfk_8 |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|

## Notas

- **Auto-increment:** `idSelectedTenderTransport`

---

[← Volver al índice de tablas](../tables.md)
