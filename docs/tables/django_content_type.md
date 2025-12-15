# django_content_type

> **Tipo:** Tabla

## Descripción

Tabla del framework Django

## Estadísticas

- **Filas aproximadas:** 148
- **Columnas:** 3

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `app_label` | varchar(100) | NO | 🔗 FK | `-` |  | - |
| `model` | varchar(100) | NO |  | `-` |  | - |

### Clave Primaria

- `id`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [auth_permission](auth_permission.md) | `content_type_id` | auth_permission_content_type_id_2f476e4b_fk_django_co |
| [django_admin_log](django_admin_log.md) | `content_type_id` | django_admin_log_content_type_id_c4bce8eb_fk_django_co |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| django_content_type_app_label_model_76bd3d3b_uniq | UNIQUE | `app_label,model` |

## Notas

- **Auto-increment:** `id`

---

[← Volver al índice de tablas](../tables.md)
