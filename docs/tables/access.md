# access

> **Tipo:** Tabla

## Descripción

Tabla de datos del sistema

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 3

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idAccess` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idUser` | int | YES | 🔗 FK | `-` |  | - |
| `idModule` | int | YES | 🔗 FK | `-` |  | - |

### Clave Primaria

- `idAccess`

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| ix_access_idAccess | INDEX | `idAccess` |
| ix_access_idModule | INDEX | `idModule` |
| ix_access_idUser | INDEX | `idUser` |

## Notas

- **Auto-increment:** `idAccess`

---

[← Volver al índice de tablas](../tables.md)
