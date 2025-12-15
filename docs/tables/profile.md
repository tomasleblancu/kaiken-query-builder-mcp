# profile

> **Tipo:** Tabla

## Descripción

Gestión de estados/status

## Estadísticas

- **Filas aproximadas:** 27
- **Columnas:** 5

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idProfile` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `name` | varchar(1000) | YES |  | `-` |  | - |
| `status` | varchar(100) | YES |  | `-` |  | - |
| `isExternal` | int | YES |  | `-` |  | - |
| `isMobile` | int | YES |  | `-` |  | APP Mobile: 1, NO APP Mobile: 0 |

### Clave Primaria

- `idProfile`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [profileModule](profileModule.md) | `idProfile` | fk_profileModule_profile |
| [users](users.md) | `idUserType` | fk_users_userType |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|

## Notas

- **Auto-increment:** `idProfile`

---

[← Volver al índice de tablas](../tables.md)
