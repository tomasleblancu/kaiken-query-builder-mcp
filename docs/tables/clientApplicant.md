# clientApplicant

> **Tipo:** Tabla

## Descripción

Gestión de clientes

## Estadísticas

- **Filas aproximadas:** 322
- **Columnas:** 3

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idClientApplicant` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idClient` | int | NO | 🔗 FK | `-` |  | - |
| `idUserApplicant` | int | NO | 🔗 FK | `-` |  | - |

### Clave Primaria

- `idClientApplicant`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idClient` | [client](client.md) | `idClient` | fk_client2 |
| `idUserApplicant` | [users](users.md) | `idUser` | fk_userApplicant |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| fk_client2 | INDEX | `idClient` |
| fk_userApplicant | INDEX | `idUserApplicant` |

## Notas

- **Auto-increment:** `idClientApplicant`

---

[← Volver al índice de tablas](../tables.md)
