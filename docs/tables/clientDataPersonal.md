# clientDataPersonal

> **Tipo:** Tabla

## Descripción

Gestión de clientes

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 7

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idClientDataPersonal` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idClient` | int | YES | 🔗 FK | `-` |  | - |
| `name` | varchar(4000) | YES |  | `-` |  | - |
| `mail` | varchar(4000) | YES |  | `-` |  | - |
| `phone` | varchar(200) | YES |  | `-` |  | - |
| `position` | varchar(4000) | YES |  | `-` |  | - |
| `dateUpdate` | datetime | YES |  | `-` |  | - |

### Clave Primaria

- `idClientDataPersonal`

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| client | INDEX | `idClient` |

## Notas

- **Auto-increment:** `idClientDataPersonal`
- **Columnas de tiempo:** `dateUpdate`

---

[← Volver al índice de tablas](../tables.md)
