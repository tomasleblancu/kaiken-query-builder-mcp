# baseFilterUser

> **Tipo:** Tabla

## Descripción

Gestión de usuarios

## Estadísticas

- **Filas aproximadas:** 24
- **Columnas:** 4

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `name` | varchar(50) | YES |  | `-` |  | - |
| `idUser` | int | YES |  | `-` |  | - |
| `dateCreate` | datetime | YES |  | `CURRENT_TIMESTAMP` | DEFAULT_GENERATED | - |

### Clave Primaria

- `id`

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|

## Notas

- **Auto-increment:** `id`
- **Columnas de tiempo:** `dateCreate`

---

[← Volver al índice de tablas](../tables.md)
