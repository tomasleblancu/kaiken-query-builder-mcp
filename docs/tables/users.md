# users

> **Tipo:** Tabla

## Descripción

Gestión de usuarios

## Estadísticas

- **Filas aproximadas:** 384
- **Columnas:** 17

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idUser` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `name` | varchar(100) | NO | 🔗 FK | `-` |  | - |
| `mail` | varchar(1000) | YES |  | `-` |  | - |
| `password` | varchar(100) | YES | 🔗 FK | `-` |  | - |
| `phone` | varchar(100) | YES |  | `-` |  | - |
| `idUserState` | int | NO | 🔗 FK | `-` |  | - |
| `idUserType` | int | NO | 🔗 FK | `-` |  | - |
| `img` | longtext | YES |  | `-` |  | - |
| `dateLogin` | datetime | YES |  | `-` |  | - |
| `token` | varchar(1000) | YES |  | `-` |  | - |
| `token2fa` | varchar(1000) | YES |  | `-` |  | - |
| `dateCreate` | datetime | YES |  | `-` |  | - |
| `dateUpdate` | datetime | YES |  | `-` |  | - |
| `clientIp` | varchar(100) | YES |  | `-` |  | - |
| `isExternal` | int | YES |  | `0` |  | Usuario externo: 1, Usuario Interno: 0 |
| `hasSeenVideo` | int | YES |  | `0` |  | Video no visto: 0, Video Visto: 1 |
| `isPickingOperator` | int | YES |  | `-` |  | Operador Picking: 1, No Operador Picking: 0 |

### Clave Primaria

- `idUser`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idUserState` | [userState](userState.md) | `idUserState` | fk_users_usersState |
| `idUserType` | [profile](profile.md) | `idProfile` | fk_users_userType |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [adjustmentHead](adjustmentHead.md) | `idUser` | fk_idUser_3 |
| [clientApplicant](clientApplicant.md) | `idUserApplicant` | fk_userApplicant |
| [clientAuthorizer](clientAuthorizer.md) | `idUserAuthorizer` | fk_userAuthorizer2 |
| [deliveryNoteHead](deliveryNoteHead.md) | `idUser` | idUser |
| [historial_tender](historial_tender.md) | `idUserCreatedBy` | historial_tender_idUserCreatedBy_6a867745_fk_users_idUser |
| [invoiceHead](invoiceHead.md) | `idUser` | fk_1_isUser |
| [licitacionPickingReceived](licitacionPickingReceived.md) | `idUser` | fklicitacionPickingReceivedUser |
| [licitacion_client](licitacion_client.md) | `idUserOperator` | fkLicitacion_client_users |
| [notification](notification.md) | `idUserUpdate` | fk_user_1 |
| [ocHeader](ocHeader.md) | `idUserCreation` | FK_ocHeader_idUserCreation_idUser |
| [ocHeader](ocHeader.md) | `idUserReception` | FK_ocHeader_idUserReception_idUser |
| [ocPaymentDocument](ocPaymentDocument.md) | `idCreateUser` | ocPaymentDocument_ibfk_3 |
| [ocPaymentDocumentPayDate](ocPaymentDocumentPayDate.md) | `idPayingUser` | ocPaymentDocumentPayDate_ibfk_2 |
| [presavedFilter](presavedFilter.md) | `idUser` | FK idUser |
| [presavedFilterTable](presavedFilterTable.md) | `idUser` | presavedFilterTable_ibfk_2 |
| [projectBudget](projectBudget.md) | `idUserUpdate` | fk_iduserUpdate_1 |
| [registeredMissings](registeredMissings.md) | `idUserAuthorized` | fk_registeredMissings_idUserAuthorized |
| [registeredMissings](registeredMissings.md) | `idUserCreation` | fk_registeredMissings_idUserCreation |
| [registeredMissings](registeredMissings.md) | `idUserSended` | fk_registeredMissings_idUserSended |
| [selectedTenderComment](selectedTenderComment.md) | `idUser` | FK comment idUser |
| [selectedTenderOrder](selectedTenderOrder.md) | `idUserProjectManager` | FK order idUserProjectManager |
| [selectedTenderOrder](selectedTenderOrder.md) | `idUserCreation` | FK orderIdUserCreation |
| [selectedTenderOrderPack](selectedTenderOrderPack.md) | `idUser` | FK orderpackUser |
| [selectedTenderOrderPack](selectedTenderOrderPack.md) | `idUserSupervisor` | FK packSupervisor |
| [selectedTenderOrderPickingReceived](selectedTenderOrderPickingReceived.md) | `idUser` | fkSelectedTenderOrderPickingReceivedUser |
| [selectedTenderOrderRequest](selectedTenderOrderRequest.md) | `idUserAuthorizer` | fk_userAuthorizer |
| [selectedTenderOrderRequest](selectedTenderOrderRequest.md) | `idUserCreation` | fk_userCreation |
| [selectedTenderOrder_client](selectedTenderOrder_client.md) | `idUserOperator` | fkSelectedTenderOrder_client_idUserOperator |
| [selectedTenders](selectedTenders.md) | `idUserAnalyst` | FK idUserAnalyst |
| [selectedTenders](selectedTenders.md) | `idUserPickingSupervisor` | FK idUserPickingSupervisor |
| [selectedTenders](selectedTenders.md) | `idUserReviewer` | FK idUserReviewer |
| [selectedTendersBak](selectedTendersBak.md) | `idUserAnalyst` | selectedTendersBak_ibfk_11 |
| [selectedTendersBak](selectedTendersBak.md) | `idUserReviewer` | selectedTendersBak_ibfk_12 |
| [shop_user_profiles](shop_user_profiles.md) | `app_user_id` | shop_user_profiles_app_user_id_79f9b918_fk_users_idUser |
| [suministro_analysis](suministro_analysis.md) | `idUserCreation` | suministro_analysis_idUserCreation_2b71cc70_fk_users_idUser |
| [suministro_analysis](suministro_analysis.md) | `idUserKAM` | suministro_analysis_idUserKAM_edb15e32_fk_users_idUser |
| [userProject](userProject.md) | `idUser` | fk_user |
| [usersAction](usersAction.md) | `idUser` | fk_accesss_user |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| fk_users_usersState | INDEX | `idUserState` |
| fk_users_userType | INDEX | `idUserType` |
| ix_users_id | INDEX | `idUser` |
| ix_users_name | INDEX | `name` |
| ix_users_password | INDEX | `password` |

## Notas

- **Auto-increment:** `idUser`
- **Columnas de tiempo:** `dateLogin`, `dateCreate`, `dateUpdate`

---

[← Volver al índice de tablas](../tables.md)
