# dateChangeStatusProject

> **Tipo:** Tabla

## Descripción

Gestión de proyectos

## Estadísticas

- **Filas aproximadas:** 4,410
- **Columnas:** 6

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idDateChangeStatusProject` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `code` | varchar(100) | YES |  | `-` |  | - |
| `statusChange` | varchar(100) | YES |  | `-` |  | - |
| `dateChange` | datetime | YES |  | `-` |  | - |
| `type` | varchar(100) | YES |  | `-` |  | - |
| `user` | varchar(10000) | YES |  | `-` |  | - |

### Clave Primaria

- `idDateChangeStatusProject`

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|

## Notas

- **Auto-increment:** `idDateChangeStatusProject`
- **Columnas de tiempo:** `idDateChangeStatusProject`, `dateChange`

---

[← Volver al índice de tablas](../tables.md)
