# dias_habiles

> **Tipo:** Tabla

## Descripción

Tabla de datos del sistema

## Estadísticas

- **Filas aproximadas:** 732
- **Columnas:** 2

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `fecha` | date | NO | 🔑 PK | `-` |  | - |
| `es_habil` | tinyint(1) | YES | 🔗 FK | `-` |  | - |

### Clave Primaria

- `fecha`

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| es | INDEX | `es_habil` |
| fecha | INDEX | `fecha` |
| idx_fecha_es_habil | INDEX | `fecha,es_habil` |

## Notas


---

[← Volver al índice de tablas](../tables.md)
