# userType

> **Tipo:** Tabla

## Descripción

Gestión de usuarios

## Estadísticas

- **Filas aproximadas:** 1
- **Columnas:** 2

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idUserType` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `type` | varchar(100) | NO | 🔗 FK | `-` |  | - |

### Clave Primaria

- `idUserType`

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| ix_userType_idUserType | INDEX | `idUserType` |
| ix_userType_type | INDEX | `type` |

## Notas

- **Auto-increment:** `idUserType`

---

[← Volver al índice de tablas](../tables.md)
