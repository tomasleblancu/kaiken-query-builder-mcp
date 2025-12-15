# clientBudget

> **Tipo:** Tabla

## Descripción

Gestión de clientes

## Estadísticas

- **Filas aproximadas:** 4,109
- **Columnas:** 6

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idClientBudget` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `monthYear` | varchar(100) | YES |  | `-` |  | - |
| `budget` | int | YES |  | `-` |  | - |
| `idClient` | int | YES |  | `-` |  | - |
| `idSelectedTenders` | int | YES |  | `-` |  | - |
| `type` | varchar(100) | YES |  | `-` |  | - |

### Clave Primaria

- `idClientBudget`

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|

## Notas

- **Auto-increment:** `idClientBudget`

---

[← Volver al índice de tablas](../tables.md)
