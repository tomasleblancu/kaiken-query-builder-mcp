# selectedTenders_client

> **Tipo:** Tabla

## Descripción

Licitaciones seleccionadas

## Estadísticas

- **Filas aproximadas:** 5
- **Columnas:** 3

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idSelectedTenders_client` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idSelectedTenders` | int | YES | 🔗 FK | `-` |  | - |
| `idClient` | int | YES | 🔗 FK | `-` |  | - |

### Clave Primaria

- `idSelectedTenders_client`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idClient` | [client](client.md) | `idClient` | selectedTenders_client_client |
| `idSelectedTenders` | [selectedTenders](selectedTenders.md) | `idSelectedTenders` | selectedTenders_client_selectedTenders |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| selectedTenders_client_client_idx | INDEX | `idClient` |
| selectedTenders_client_selectedTenders_idx | INDEX | `idSelectedTenders` |

## Notas

- **Auto-increment:** `idSelectedTenders_client`

---

[← Volver al índice de tablas](../tables.md)
