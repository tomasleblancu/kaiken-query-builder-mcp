# kaiken_lab_rawlicitacion

> **Tipo:** Tabla

## Descripción

Módulo de IA/Machine Learning

## Estadísticas

- **Filas aproximadas:** 107,354
- **Columnas:** 28

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | bigint | NO | 🔑 PK | `-` | auto_increment | - |
| `version` | int unsigned | NO |  | `-` |  | - |
| `json_content` | json | YES |  | `-` |  | - |
| `external_id` | varchar(255) | NO |  | `-` |  | - |
| `selected_tender_id` | int | YES |  | `-` |  | - |
| `is_active` | tinyint(1) | NO |  | `-` |  | - |
| `files_downloaded` | tinyint(1) | NO |  | `-` |  | - |
| `ai_processed` | tinyint(1) | NO |  | `-` |  | - |
| `pdf_to_txt_done` | tinyint(1) | NO |  | `-` |  | - |
| `final_attached_downloaded` | tinyint(1) | NO |  | `-` |  | - |
| `is_in_background_process` | tinyint(1) | NO |  | `-` |  | - |
| `foro_url` | varchar(500) | YES |  | `-` |  | - |
| `ficha_id` | varchar(500) | YES |  | `-` |  | - |
| `folder_id` | varchar(500) | YES |  | `-` |  | - |
| `files_folder_id` | varchar(500) | YES |  | `-` |  | - |
| `txt_files_folder_id` | varchar(500) | YES |  | `-` |  | - |
| `images_folder_id` | varchar(500) | YES |  | `-` |  | - |
| `folders_cleaned` | tinyint(1) | NO |  | `-` |  | - |
| `user_email` | varchar(500) | YES |  | `-` |  | - |
| `archivo_productos` | varchar(1000) | YES |  | `-` |  | - |
| `nombre` | varchar(255) | YES |  | `-` |  | - |
| `created_at` | datetime(6) | YES |  | `-` |  | - |
| `date_reviewed` | datetime(6) | YES |  | `-` |  | - |
| `date_publicacion` | datetime(6) | YES |  | `-` |  | - |
| `date_cierre` | datetime(6) | YES |  | `-` |  | - |
| `date_adjudicacion` | datetime(6) | YES |  | `-` |  | - |
| `app_kaiken_data` | json | YES |  | `-` |  | - |
| `ai_attempts` | int | NO |  | `-` |  | - |

### Clave Primaria

- `id`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [kaiken_lab_adjuntomepu](kaiken_lab_adjuntomepu.md) | `raw_licita_id` | kaiken_lab_adjuntome_raw_licita_id_f2ee26a6_fk_kaiken_la |
| [kaiken_lab_conversation](kaiken_lab_conversation.md) | `licita_id` | kaiken_lab_conversat_licita_id_421e3c7a_fk_kaiken_la |
| [kaiken_lab_filestorage](kaiken_lab_filestorage.md) | `licita_id` | kaiken_lab_filestora_licita_id_18342656_fk_kaiken_la |
| [kaiken_lab_licitacionvector](kaiken_lab_licitacionvector.md) | `licitacion_id` | kaiken_lab_licitacio_licitacion_id_d7b478c0_fk_kaiken_la |
| [kaiken_lab_preguntasforo](kaiken_lab_preguntasforo.md) | `raw_licita_id` | kaiken_lab_preguntas_raw_licita_id_10222612_fk_kaiken_la |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|

## Notas

- **Auto-increment:** `id`
- **Columnas de tiempo:** `date_reviewed`, `date_publicacion`, `date_cierre`, `date_adjudicacion`

---

[← Volver al índice de tablas](../tables.md)
