# documents_document

> **Tipo:** Tabla

## Descripción

Órdenes de compra

## Estadísticas

- **Filas aproximadas:** 27,826
- **Columnas:** 50

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `id` | bigint | NO | 🔑 PK | `-` | auto_increment | - |
| `document_type` | varchar(30) | NO | 🔗 FK | `-` |  | - |
| `tipo_documento` | int | YES |  | `-` |  | - |
| `folio` | varchar(50) | NO | 🔗 FK | `-` |  | - |
| `fecha_emision` | date | NO | 🔗 FK | `-` |  | - |
| `factura_original_id` | varchar(50) | YES | 🔗 FK | `-` |  | - |
| `rut_emisor` | varchar(20) | NO | 🔗 FK | `-` |  | - |
| `nombre_emisor` | varchar(500) | YES |  | `-` |  | - |
| `rut_receptor` | varchar(20) | NO | 🔗 FK | `-` |  | - |
| `nombre_receptor` | varchar(500) | YES |  | `-` |  | - |
| `monto_exento` | decimal(12,0) | NO |  | `-` |  | - |
| `monto_neto` | decimal(12,0) | NO |  | `-` |  | - |
| `monto_iva` | decimal(12,0) | NO |  | `-` |  | - |
| `monto_total` | decimal(12,0) | NO | 🔗 FK | `-` |  | - |
| `monto_impuestos_adicionales` | decimal(12,0) | YES |  | `-` |  | - |
| `impuestos_especificos` | decimal(12,0) | YES |  | `-` |  | - |
| `estado` | varchar(50) | NO | 🔗 FK | `-` |  | - |
| `estado_documento_tributario` | int | YES |  | `-` |  | - |
| `fecha_acuse_mercaderia` | varchar(100) | YES |  | `-` |  | - |
| `notificacion_comercial` | varchar(100) | YES |  | `-` |  | - |
| `fecha_notificacion_comercial` | varchar(100) | YES |  | `-` |  | - |
| `xml_recepcionado` | varchar(100) | YES |  | `-` |  | - |
| `es_documento_electronico` | tinyint(1) | NO |  | `-` |  | - |
| `es_nota_credito` | tinyint(1) | NO |  | `-` |  | - |
| `uso_documento` | int | YES |  | `-` |  | - |
| `fuera_de_plazo` | tinyint(1) | NO |  | `-` |  | - |
| `codigo_tributario` | int | YES |  | `-` |  | - |
| `url_xml` | longtext | YES |  | `-` |  | - |
| `url_pdf` | varchar(200) | YES |  | `-` |  | - |
| `url_drive_document` | varchar(200) | YES |  | `-` |  | - |
| `reconciled_amount` | decimal(12,0) | NO |  | `-` |  | - |
| `pending_amount` | decimal(12,0) | NO |  | `-` |  | - |
| `orden_compra` | varchar(100) | YES |  | `-` |  | - |
| `centro_costo` | varchar(50) | YES |  | `-` |  | - |
| `proyecto` | varchar(100) | YES |  | `-` |  | - |
| `vendedor` | varchar(200) | YES |  | `-` |  | - |
| `condiciones_pago` | varchar(200) | YES |  | `-` |  | - |
| `fecha_carga` | date | YES |  | `-` |  | - |
| `hora_carga` | time(6) | YES |  | `-` |  | - |
| `fecha_recepcion` | datetime(6) | YES |  | `-` |  | - |
| `fecha_aceptacion` | datetime(6) | YES |  | `-` |  | - |
| `created_at` | datetime(6) | NO |  | `-` |  | - |
| `updated_at` | datetime(6) | NO |  | `-` |  | - |
| `observaciones` | longtext | YES |  | `-` |  | - |
| `client_id` | int | YES | 🔗 FK | `-` |  | - |
| `created_by_id` | int | YES | 🔗 FK | `-` |  | - |
| `documento_referencia_id` | bigint | YES | 🔗 FK | `-` |  | - |
| `provider_id` | int | YES | 🔗 FK | `-` |  | - |
| `order_obj_id` | int | YES | 🔗 FK | `-` |  | - |
| `project_obj_id` | int | YES | 🔗 FK | `-` |  | - |

### Clave Primaria

- `id`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `client_id` | [client](client.md) | `idClient` | documents_document_client_id_897ec5e1_fk_client_idClient |
| `created_by_id` | [auth_user](auth_user.md) | `id` | documents_document_created_by_id_7d00c649_fk_auth_user_id |
| `documento_referencia_id` | [documents_document](documents_document.md) | `id` | documents_document_documento_referencia_04f33fa5_fk_documents |
| `order_obj_id` | [selectedTenderOrder](selectedTenderOrder.md) | `idSelectedTenderOrder` | documents_document_order_obj_id_e0eb0625_fk_selectedT |
| `project_obj_id` | [selectedTenders](selectedTenders.md) | `idSelectedTenders` | documents_document_project_obj_id_05d3253c_fk_selectedT |
| `provider_id` | [provider](provider.md) | `idProvider` | documents_document_provider_id_bd69faea_fk_provider_idProvider |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [documents_document](documents_document.md) | `documento_referencia_id` | documents_document_documento_referencia_04f33fa5_fk_documents |
| [reconciliation_document_analysis](reconciliation_document_analysis.md) | `document_id` | reconciliation_docum_document_id_4870d695_fk_documents |
| [reconciliation_invoicepurchaseorderreconciliation](reconciliation_invoicepurchaseorderreconciliation.md) | `document_id` | reconciliation_invoi_document_id_772b22cc_fk_documents |
| [reconciliation_salesbankreconciliation](reconciliation_salesbankreconciliation.md) | `document_id` | reconciliation_sales_document_id_6449ac99_fk_documents |
| [sales_invoice_control](sales_invoice_control.md) | `document_id` | sales_invoice_contro_document_id_92a877b3_fk_documents |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| documents_document_client_id_897ec5e1_fk_client_idClient | INDEX | `client_id` |
| documents_document_created_by_id_7d00c649_fk_auth_user_id | INDEX | `created_by_id` |
| documents_document_document_type_9c2f30c7 | INDEX | `document_type` |
| documents_document_documento_referencia_04f33fa5_fk_documents | INDEX | `documento_referencia_id` |
| documents_document_estado_5962fe0c | INDEX | `estado` |
| documents_document_factura_original_id_6770362b | INDEX | `factura_original_id` |
| documents_document_fecha_emision_5166dfb5 | INDEX | `fecha_emision` |
| documents_document_folio_77a91621 | INDEX | `folio` |
| documents_document_monto_total_1a7c3332 | INDEX | `monto_total` |
| documents_document_order_obj_id_e0eb0625_fk_selectedT | INDEX | `order_obj_id` |
| documents_document_project_obj_id_05d3253c_fk_selectedT | INDEX | `project_obj_id` |
| documents_document_provider_id_bd69faea_fk_provider_idProvider | INDEX | `provider_id` |
| documents_document_rut_emisor_2e4341e5 | INDEX | `rut_emisor` |
| documents_document_rut_receptor_0191d088 | INDEX | `rut_receptor` |
| idx_doc_type_folio_emisor | INDEX | `document_type,folio,rut_emisor` |
| idx_fecha_tipo | INDEX | `fecha_emision,document_type` |
| idx_receptor_fecha | INDEX | `rut_receptor,fecha_emision` |
| idx_tipo_estado_pending | INDEX | `document_type,estado,pending_amount` |
| unique_document_by_emisor | UNIQUE | `document_type,folio,rut_emisor` |

## Notas

- **Auto-increment:** `id`
- **Columnas de tiempo:** `updated_at`

---

[← Volver al índice de tablas](../tables.md)
