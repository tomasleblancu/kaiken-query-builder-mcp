# userLog

> **Tipo:** Tabla

## Descripción

Gestión de usuarios

## Estadísticas

- **Filas aproximadas:** 2
- **Columnas:** 8

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idUserLog` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idUser` | int | YES |  | `-` |  | - |
| `module` | varchar(200) | YES |  | `-` |  | - |
| `type` | varchar(100) | YES |  | `-` |  | - |
| `dateLog` | date | YES |  | `-` |  | - |
| `timeLog` | time | YES |  | `-` |  | - |
| `pastDetail` | text | YES |  | `-` |  | - |
| `newDetail` | text | YES |  | `-` |  | - |

### Clave Primaria

- `idUserLog`

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|

## Notas

- **Auto-increment:** `idUserLog`
- **Columnas de tiempo:** `dateLog`

---

[← Volver al índice de tablas](../tables.md)
