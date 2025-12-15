# clientAuthorizer

> **Tipo:** Tabla

## Descripción

Gestión de clientes

## Estadísticas

- **Filas aproximadas:** 2
- **Columnas:** 3

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idClientAuthorizer` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `idClient` | int | NO | 🔗 FK | `-` |  | - |
| `idUserAuthorizer` | int | NO | 🔗 FK | `-` |  | - |

### Clave Primaria

- `idClientAuthorizer`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idClient` | [client](client.md) | `idClient` | fk_client3 |
| `idUserAuthorizer` | [users](users.md) | `idUser` | fk_userAuthorizer2 |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| fk_client3 | INDEX | `idClient` |
| fk_userAuthorizer2 | INDEX | `idUserAuthorizer` |

## Notas

- **Auto-increment:** `idClientAuthorizer`

---

[← Volver al índice de tablas](../tables.md)
