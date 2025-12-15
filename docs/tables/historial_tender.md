# historial_tender

> **Tipo:** Tabla

## Descripción

Licitaciones

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 6

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `comentario` | longtext | NO |  | `-` |  | - |
| `origen` | varchar(10) | NO |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `idUserCreatedBy` | int | YES | 🔗 FK | `-` |  | - |
| `idSelectedTenders` | int | NO | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idSelectedTenders` | [selectedTenders](selectedTenders.md) | `idSelectedTenders` | historial_tender_idSelectedTenders_e551de56_fk_selectedT |
| `idUserCreatedBy` | [users](users.md) | `idUser` | historial_tender_idUserCreatedBy_6a867745_fk_users_idUser |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| historial_tender_idSelectedTenders_e551de56_fk_selectedT | INDEX | `idSelectedTenders` |
| historial_tender_idUserCreatedBy_6a867745_fk_users_idUser | INDEX | `idUserCreatedBy` |

## Notas

- **Auto-increment:** `id`

---

[← Volver al índice de tablas](../tables.md)
