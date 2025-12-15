# liquidityProblemsClient

> **Tipo:** Tabla

## Descripción

Gestión de clientes

## Estadísticas

- **Filas aproximadas:** 32
- **Columnas:** 3

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idComplexClient` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `client` | varchar(1000) | YES | 🔗 FK | `-` |  | - |
| `rut` | varchar(1000) | YES | 🔗 FK | `-` |  | - |

### Clave Primaria

- `idComplexClient`

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| client_idx | INDEX | `client` |
| rut | INDEX | `rut` |

## Notas

- **Auto-increment:** `idComplexClient`

---

[← Volver al índice de tablas](../tables.md)
