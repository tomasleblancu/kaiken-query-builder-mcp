# complexClient

> **Tipo:** Tabla

## Descripción

Gestión de clientes

## Estadísticas

- **Filas aproximadas:** 27
- **Columnas:** 4

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idComplexClient` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `client` | varchar(1000) | YES | 🔗 FK | `-` |  | - |
| `type` | varchar(1000) | YES |  | `-` |  | - |
| `rut` | varchar(255) | YES | 🔗 FK | `-` |  | - |

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
