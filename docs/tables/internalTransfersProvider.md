# internalTransfersProvider

> **Tipo:** Tabla

## Descripción

Gestión de proveedores

## Estadísticas

- **Filas aproximadas:** 23
- **Columnas:** 3

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idInternalTransfersProvider` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idSelectedTenders` | int | YES | 🔗 FK | `-` |  | - |
| `idProvider` | int | YES | 🔗 FK | `-` |  | - |

### Clave Primaria

- `idInternalTransfersProvider`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idProvider` | [provider](provider.md) | `idProvider` | idProvider |
| `idSelectedTenders` | [selectedTenders](selectedTenders.md) | `idSelectedTenders` | idSelectedTenders |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| idProvider | INDEX | `idProvider` |
| idSelectedTenders | INDEX | `idSelectedTenders` |

## Notas

- **Auto-increment:** `idInternalTransfersProvider`

---

[← Volver al índice de tablas](../tables.md)
