# contacto_selectedTenders

> **Tipo:** Tabla

## Descripción

Licitaciones seleccionadas

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 3

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | bigint | NO | 🔑 PK | `-` | auto_increment | - |
| `contacto_id` | int | NO | 🔗 FK | `-` |  | - |
| `selectedtenders_id` | int | NO | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `contacto_id` | [contacto](contacto.md) | `idContacto` | contacto_selectedTen_contacto_id_601e7b91_fk_contacto_ |
| `selectedtenders_id` | [selectedTenders](selectedTenders.md) | `idSelectedTenders` | contacto_selectedTen_selectedtenders_id_40772972_fk_selectedT |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| contacto_selectedTen_selectedtenders_id_40772972_fk_selectedT | INDEX | `selectedtenders_id` |
| contacto_selectedTenders_contacto_id_selectedtend_988f455e_uniq | UNIQUE | `contacto_id,selectedtenders_id` |

## Notas

- **Auto-increment:** `id`

---

[← Volver al índice de tablas](../tables.md)
