# banking_reglaclasificacion

> **Tipo:** Tabla

## Descripción

Módulo de gestión bancaria

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 13

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | bigint | NO | 🔑 PK | `-` | auto_increment | - |
| `nombre` | varchar(255) | NO | ✨ UNIQUE | `-` |  | - |
| `descripcion` | longtext | YES |  | `-` |  | - |
| `palabras_clave` | longtext | NO |  | `-` |  | - |
| `tipo_movimiento` | varchar(50) | NO |  | `-` |  | - |
| `monto_minimo` | decimal(15,2) | YES |  | `-` |  | - |
| `monto_maximo` | decimal(15,2) | YES |  | `-` |  | - |
| `es_divisible_por` | decimal(15,2) | YES |  | `-` |  | - |
| `clasificacion` | varchar(50) | NO |  | `-` |  | - |
| `prioridad` | int | NO |  | `-` |  | - |
| `activo` | tinyint(1) | NO |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `updated_at` | datetime(6) | NO |  | `-` |  | - |

### Clave Primaria

- `id`

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| nombre | UNIQUE | `nombre` |

## Notas

- **Auto-increment:** `id`
- **Columnas de tiempo:** `updated_at`

---

[← Volver al índice de tablas](../tables.md)
