# contacto

> **Tipo:** Tabla

## Descripción

Tabla de datos del sistema

## Estadísticas

- **Filas aproximadas:** 0
- **Columnas:** 18

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idContacto` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `organismo` | varchar(255) | YES |  | `-` |  | - |
| `nombre` | varchar(255) | NO |  | `-` |  | - |
| `cargo` | varchar(255) | YES |  | `-` |  | - |
| `email` | varchar(255) | YES |  | `-` |  | - |
| `telefono` | varchar(50) | YES |  | `-` |  | - |
| `telefono_alternativo` | varchar(50) | YES |  | `-` |  | - |
| `observaciones` | longtext | YES |  | `-` |  | - |
| `isActive` | tinyint(1) | NO | 🔗 FK | `-` |  | - |
| `isPrincipal` | tinyint(1) | NO |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `updated_at` | datetime(6) | NO |  | `-` |  | - |
| `created_by` | varchar(255) | YES |  | `-` |  | - |
| `updated_by` | varchar(255) | YES |  | `-` |  | - |
| `idArea` | int | NO | 🔗 FK | `-` |  | - |
| `idClient` | int | YES | 🔗 FK | `-` |  | - |
| `idProvider` | int | YES | 🔗 FK | `-` |  | - |
| `idSubArea` | int | YES | 🔗 FK | `-` |  | - |

### Clave Primaria

- `idContacto`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idArea` | [area](area.md) | `idArea` | contacto_idArea_2624c982_fk_area_idArea |
| `idClient` | [client](client.md) | `idClient` | contacto_idClient_690ad7d6_fk_client_idClient |
| `idProvider` | [provider](provider.md) | `idProvider` | contacto_idProvider_ee97b670_fk_provider_idProvider |
| `idSubArea` | [subarea](subarea.md) | `idSubArea` | contacto_idSubArea_ed5e2f8c_fk_subarea_idSubArea |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [contacto_selectedTenders](contacto_selectedTenders.md) | `contacto_id` | contacto_selectedTen_contacto_id_601e7b91_fk_contacto_ |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| contacto_idArea_4f68ef_idx | INDEX | `idArea` |
| contacto_idClien_c0cf99_idx | INDEX | `idClient` |
| contacto_idProvi_c2e085_idx | INDEX | `idProvider` |
| contacto_idSubAr_13b9d6_idx | INDEX | `idSubArea` |
| contacto_isActiv_e2ce2d_idx | INDEX | `isActive` |

## Notas

- **Auto-increment:** `idContacto`
- **Columnas de tiempo:** `updated_at`, `updated_by`

---

[← Volver al índice de tablas](../tables.md)
