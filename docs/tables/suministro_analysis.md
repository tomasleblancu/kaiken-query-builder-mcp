# suministro_analysis

> **Tipo:** Tabla

## Descripción

Gestión de estados/status

## Estadísticas

- **Filas aproximadas:** 184
- **Columnas:** 29

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `is_active` | tinyint(1) | NO | 🔗 FK | `-` |  | - |
| `date_start` | date | YES | 🔗 FK | `-` |  | - |
| `duration_months` | int | YES |  | `-` |  | - |
| `date_end` | date | YES | 🔗 FK | `-` |  | - |
| `has_renewal` | tinyint(1) | NO |  | `-` |  | - |
| `renewal_type` | varchar(50) | YES |  | `-` |  | - |
| `billing_type` | varchar(50) | YES |  | `-` |  | - |
| `counterpart_name` | varchar(255) | YES |  | `-` |  | - |
| `counterpart_email` | varchar(254) | YES |  | `-` |  | - |
| `counterpart_phone` | varchar(50) | YES |  | `-` |  | - |
| `has_platform` | tinyint(1) | NO |  | `-` |  | - |
| `cost_center_db` | varchar(255) | YES |  | `-` |  | - |
| `debt_amount` | decimal(15,2) | NO |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `updated_at` | datetime(6) | NO |  | `-` |  | - |
| `idUserCreation` | int | YES | 🔗 FK | `-` |  | - |
| `idUserKAM` | int | YES | 🔗 FK | `-` |  | - |
| `idSelectedTenders` | int | NO | 🔗 FK | `-` |  | - |
| `manual_budget` | decimal(15,2) | YES |  | `-` |  | - |
| `initial_meeting_date` | date | YES |  | `-` |  | - |
| `counterpart_email_2` | varchar(254) | YES |  | `-` |  | - |
| `counterpart_name_2` | varchar(255) | YES |  | `-` |  | - |
| `counterpart_phone_2` | varchar(50) | YES |  | `-` |  | - |
| `contract_status` | varchar(20) | NO | 🔗 FK | `-` |  | - |
| `idLastOrder` | int | YES | 🔗 FK | `-` |  | - |
| `idRenewedFrom` | int | YES | 🔗 FK | `-` |  | - |
| `idRenewedTo` | int | YES | 🔗 FK | `-` |  | - |
| `vigencia_suministro` | varchar(20) | YES |  | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idLastOrder` | [selectedTenderOrder](selectedTenderOrder.md) | `idSelectedTenderOrder` | suministro_analysis_idLastOrder_b6666206_fk_selectedT |
| `idRenewedFrom` | [suministro_analysis](suministro_analysis.md) | `id` | suministro_analysis_idRenewedFrom_6db261f0_fk_suministr |
| `idRenewedTo` | [suministro_analysis](suministro_analysis.md) | `id` | suministro_analysis_idRenewedTo_812db2e6_fk_suministr |
| `idSelectedTenders` | [selectedTenders](selectedTenders.md) | `idSelectedTenders` | suministro_analysis_idSelectedTenders_71d7db19_fk_selectedT |
| `idUserCreation` | [users](users.md) | `idUser` | suministro_analysis_idUserCreation_2b71cc70_fk_users_idUser |
| `idUserKAM` | [users](users.md) | `idUser` | suministro_analysis_idUserKAM_edb15e32_fk_users_idUser |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [suministro_analysis](suministro_analysis.md) | `idRenewedFrom` | suministro_analysis_idRenewedFrom_6db261f0_fk_suministr |
| [suministro_analysis](suministro_analysis.md) | `idRenewedTo` | suministro_analysis_idRenewedTo_812db2e6_fk_suministr |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| suministro__contrac_9ced15_idx | INDEX | `contract_status` |
| suministro__date_en_0b1ee5_idx | INDEX | `date_end` |
| suministro__date_st_f7ad6e_idx | INDEX | `date_start` |
| suministro__idLastO_9de2f5_idx | INDEX | `idLastOrder` |
| suministro__idRenew_06690a_idx | INDEX | `idRenewedFrom` |
| suministro__idRenew_e6a89d_idx | INDEX | `idRenewedTo` |
| suministro__idSelec_b795e6_idx | INDEX | `idSelectedTenders,is_active` |
| suministro__idUserK_488b92_idx | INDEX | `idUserKAM` |
| suministro__is_acti_68c543_idx | INDEX | `is_active` |
| suministro_analysis_contract_status_b3a23075 | INDEX | `contract_status` |
| suministro_analysis_idUserCreation_2b71cc70_fk_users_idUser | INDEX | `idUserCreation` |
| suministro_analysis_is_active_de3a91bd | INDEX | `is_active` |

## Notas

- **Auto-increment:** `id`
- **Columnas de tiempo:** `date_start`, `date_end`, `updated_at`, `initial_meeting_date`

---

[← Volver al índice de tablas](../tables.md)
