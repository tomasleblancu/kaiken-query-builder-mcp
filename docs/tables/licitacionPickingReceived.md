# licitacionPickingReceived

> **Tipo:** Tabla

## Descripción

Gestión de licitaciones

## Estadísticas

- **Filas aproximadas:** 26
- **Columnas:** 5

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idLicitacionPickingReceived` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idUser` | int | YES | 🔗 FK | `-` |  | - |
| `quantityReceived` | int | YES |  | `-` |  | - |
| `dateReceived` | date | YES |  | `-` |  | - |
| `idLicitacion_client_detail` | int | YES | 🔗 FK | `-` |  | - |

### Clave Primaria

- `idLicitacionPickingReceived`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idLicitacion_client_detail` | [licitacion_client_detail](licitacion_client_detail.md) | `idLicitacion_client_detail` | fklicitacionPickingReceivedIdDetail |
| `idUser` | [users](users.md) | `idUser` | fklicitacionPickingReceivedUser |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| fklicitacionPickingReceivedIdDetail | INDEX | `idLicitacion_client_detail` |
| fklicitacionPickingReceivedUser | INDEX | `idUser` |

## Notas

- **Auto-increment:** `idLicitacionPickingReceived`
- **Columnas de tiempo:** `dateReceived`

---

[← Volver al índice de tablas](../tables.md)
