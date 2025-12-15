# officeProject

> **Tipo:** Tabla

## Descripción

Gestión de proyectos

## Estadísticas

- **Filas aproximadas:** 50
- **Columnas:** 5

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idOfficeProject` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `officeProject` | varchar(1000) | YES | 🔗 FK | `-` |  | - |
| `withBudget` | int | YES |  | `-` |  | 1 = Aplica presupuesto, 0 = No aplica presupuesto |
| `idOfficeProjectCeco` | int | YES |  | `-` |  | - |
| `isOld` | tinyint | YES |  | `-` |  | - |

### Clave Primaria

- `idOfficeProject`

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| officeProject | INDEX | `officeProject` |

## Notas

- **Auto-increment:** `idOfficeProject`

---

[← Volver al índice de tablas](../tables.md)
