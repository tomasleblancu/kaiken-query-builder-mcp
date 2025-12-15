# Catálogo de Tablas - Base de Datos KAIKEN_APP

> Resumen de las 275 tablas de la base de datos KAIKEN_APP
>
> Última actualización: 2025-12-12

---

## Índice por Categorías

1. [Autenticación y Permisos](#autenticación-y-permisos)
2. [Usuarios y Perfiles](#usuarios-y-perfiles)
3. [Clientes](#clientes)
4. [Proveedores](#proveedores)
5. [Productos y Catálogo](#productos-y-catálogo)
6. [Licitaciones](#licitaciones)
7. [Órdenes de Compra (OC)](#órdenes-de-compra-oc)
8. [Proyectos](#proyectos)
9. [Facturación y Pagos](#facturación-y-pagos)
10. [Notas de Entrega](#notas-de-entrega)
11. [Banking y Conciliación](#banking-y-conciliación)
12. [Shop / E-commerce](#shop--e-commerce)
13. [Kaiken Lab (IA/ML)](#kaiken-lab-iaml)
14. [Inventario y Almacén](#inventario-y-almacén)
15. [Notificaciones](#notificaciones)
16. [Configuración y Catálogos](#configuración-y-catálogos)
17. [Django y Sistema](#django-y-sistema)
18. [Vistas y Reportes](#vistas-y-reportes)
19. [Otras Tablas](#otras-tablas)

---

## Autenticación y Permisos

### [`auth_group`](tables/auth_group.md)
Grupos de usuarios para control de acceso basado en roles (Django).

### [`auth_group_permissions`](tables/auth_group_permissions.md)
Relación muchos a muchos entre grupos y permisos (Django).

### [`auth_permission`](tables/auth_permission.md)
Permisos del sistema para control de acceso granular (Django).

### [`auth_user`](tables/auth_user.md)
Tabla principal de usuarios del sistema (Django Auth).

### [`auth_user_groups`](tables/auth_user_groups.md)
Relación muchos a muchos entre usuarios y grupos (Django).

### [`auth_user_user_permissions`](tables/auth_user_user_permissions.md)
Permisos específicos asignados directamente a usuarios (Django).

### [`access`](tables/access.md)
Control de acceso y permisos personalizados de la aplicación.

---

## Usuarios y Perfiles

### [`users`](tables/users.md)
Información extendida de usuarios del sistema.

### [`profile`](tables/profile.md)
Perfiles de usuario con roles y configuraciones.

### [`profileModule`](tables/profileModule.md)
Módulos y funcionalidades asignadas a cada perfil.

### [`userType`](tables/userType.md)
Tipos de usuarios en el sistema.

### [`userState`](tables/userState.md)
Estados de los usuarios (activo, inactivo, bloqueado, etc.).

### [`userProject`](tables/userProject.md)
Relación entre usuarios y proyectos asignados.

### [`userLog`](tables/userLog.md)
Registro de actividades y acciones de usuarios.

### [`usersAction`](tables/usersAction.md)
Acciones específicas que pueden realizar los usuarios.

### [`proyectos_Usuarios`](tables/proyectos_Usuarios.md)
Usuarios asignados a proyectos específicos.

---

## Clientes

### [`client`](tables/client.md)
Información principal de clientes corporativos.

### [`clientApplicant`](tables/clientApplicant.md)
Solicitantes autorizados dentro de organizaciones cliente.

### [`clientAuthorizer`](tables/clientAuthorizer.md)
Autorizadores de compras dentro de organizaciones cliente.

### [`clientBudget`](tables/clientBudget.md)
Presupuestos asignados a clientes.

### [`clientDataPersonal`](tables/clientDataPersonal.md)
Datos personales y de contacto de clientes.

### [`clientProgram`](tables/clientProgram.md)
Programas o convenios con clientes.

### [`complexClient`](tables/complexClient.md)
Clientes complejos con estructuras organizacionales especiales.

### [`debtClient`](tables/debtClient.md)
Deudas y saldos pendientes de clientes.

### [`liquidityProblemsClient`](tables/liquidityProblemsClient.md)
Registro de clientes con problemas de liquidez.

### [`contacto`](tables/contacto.md)
Contactos asociados a clientes y proyectos.

### [`contacto_selectedTenders`](tables/contacto_selectedTenders.md)
Relación entre contactos y licitaciones seleccionadas.

---

## Proveedores

### [`provider`](tables/provider.md)
Información principal de proveedores.

### [`suppliers`](tables/suppliers.md)
Catálogo de proveedores/suministradores.

### [`supplier_address`](tables/supplier_address.md)
Direcciones de proveedores.

### [`product_supplier`](tables/product_supplier.md)
Relación entre productos y sus proveedores.

### [`internalTransfersProvider`](tables/internalTransfersProvider.md)
Transferencias internas entre proveedores.

---

## Productos y Catálogo

### [`product`](tables/product.md)
Catálogo principal de productos.

### [`products`](tables/products.md)
Información extendida de productos.

### [`defaultProduct`](tables/defaultProduct.md)
Productos por defecto o estándar.

### [`productsAttribute`](tables/productsAttribute.md)
Atributos configurables de productos (color, talla, etc.).

### [`productsAttributeAssigned`](tables/productsAttributeAssigned.md)
Valores de atributos asignados a productos específicos.

### [`unitMeasurement`](tables/unitMeasurement.md)
Unidades de medida (kg, unidad, caja, etc.).

### [`stockProducts`](tables/stockProducts.md)
Inventario y stock de productos.

### [`catalog_searcher_product`](tables/catalog_searcher_product.md)
Productos indexados para búsqueda en catálogo.

### [`catalog_searcher_search_session`](tables/catalog_searcher_search_session.md)
Sesiones de búsqueda de productos.

### [`catalog_searcher_search_session_products`](tables/catalog_searcher_search_session_products.md)
Productos vistos durante sesiones de búsqueda.

### [`catalog_searcher_google_shopping_result`](tables/catalog_searcher_google_shopping_result.md)
Resultados de búsqueda en Google Shopping para comparación.

---

## Licitaciones

### [`licitacionesData`](tables/licitacionesData.md)
Datos principales de licitaciones públicas.

### [`licitacionesDataComment`](tables/licitacionesDataComment.md)
Comentarios y notas sobre licitaciones.

### [`licitacionesEvaluatedProduct`](tables/licitacionesEvaluatedProduct.md)
Productos evaluados para licitaciones.

### `licitacionesLicitalab_ultimaLectura` (VIEW)
Vista con última lectura de licitaciones en Licitalab.

### [`selectedTenders`](tables/selectedTenders.md)
Licitaciones seleccionadas para participar.

### [`selectedTendersBak`](tables/selectedTendersBak.md)
Respaldo de licitaciones seleccionadas.

### [`selectedTendersExtraData`](tables/selectedTendersExtraData.md)
Datos adicionales de licitaciones seleccionadas.

### [`selectedTenderAdjudication`](tables/selectedTenderAdjudication.md)
Adjudicaciones de licitaciones.

### [`selectedTenderClasification`](tables/selectedTenderClasification.md)
Clasificación de licitaciones.

### [`selectedTenderComment`](tables/selectedTenderComment.md)
Comentarios sobre licitaciones seleccionadas.

### [`selectedTenderCommentClasification`](tables/selectedTenderCommentClasification.md)
Clasificación de comentarios de licitaciones.

### [`selectedTenderCommentFiles`](tables/selectedTenderCommentFiles.md)
Archivos adjuntos en comentarios de licitaciones.

### [`selectedTenderDeliveryTimeType`](tables/selectedTenderDeliveryTimeType.md)
Tipos de tiempo de entrega en licitaciones.

### [`selectedTenderDifferentiatingCriterion`](tables/selectedTenderDifferentiatingCriterion.md)
Criterios diferenciadores en evaluación de licitaciones.

### [`selectedTenderEvaluationStatus`](tables/selectedTenderEvaluationStatus.md)
Estados de evaluación de licitaciones.

### [`selectedTenderGlobalStatus`](tables/selectedTenderGlobalStatus.md)
Estado global de licitaciones.

### [`selectedTenderIndustry`](tables/selectedTenderIndustry.md)
Industrias asociadas a licitaciones.

### [`selectedTenderOperationStatus`](tables/selectedTenderOperationStatus.md)
Estado operativo de licitaciones.

### [`selectedTenderPenaltyType`](tables/selectedTenderPenaltyType.md)
Tipos de penalidades en licitaciones.

### [`selectedTenderReason`](tables/selectedTenderReason.md)
Razones de decisiones en licitaciones.

### [`selectedTenderReviewStatus`](tables/selectedTenderReviewStatus.md)
Estados de revisión de licitaciones.

### [`selectedTenderTransport`](tables/selectedTenderTransport.md)
Información de transporte para licitaciones.

### [`selectedTenderType`](tables/selectedTenderType.md)
Tipos de licitaciones.

### [`selectedTenders_client`](tables/selectedTenders_client.md)
Clientes asociados a licitaciones.

### [`historial_tender`](tables/historial_tender.md)
Historial de cambios en licitaciones.

### [`cotizacionLicitacion`](tables/cotizacionLicitacion.md)
Cotizaciones generadas para licitaciones.

---

## Órdenes de Compra (OC)

### [`ocHeader`](tables/ocHeader.md)
Encabezado de órdenes de compra.

### [`ocDetail`](tables/ocDetail.md)
Detalle de líneas de órdenes de compra.

### [`ocDetailDefaultProduct`](tables/ocDetailDefaultProduct.md)
Productos por defecto en detalles de OC.

### [`ocDetailDefaultProduct_ocPackageMix`](tables/ocDetailDefaultProduct_ocPackageMix.md)
Mix de paquetes para productos por defecto en OC.

### [`ocDetailDraftProvider`](tables/ocDetailDraftProvider.md)
Borradores de OC por proveedor.

### [`ocDetailDraftProviderDefaultProduct`](tables/ocDetailDraftProviderDefaultProduct.md)
Productos por defecto en borradores de OC por proveedor.

### [`ocDetail_ocPackageMix`](tables/ocDetail_ocPackageMix.md)
Mix de paquetes en detalles de OC.

### [`ocHeaderBalance`](tables/ocHeaderBalance.md)
Balances y saldos de OC.

### [`ocHeaderInitalPaymentMethod`](tables/ocHeaderInitalPaymentMethod.md)
Método de pago inicial de OC.

### [`ocHeaderPayment`](tables/ocHeaderPayment.md)
Pagos asociados a OC.

### [`ocPackage`](tables/ocPackage.md)
Paquetes/bultos en OC.

### [`ocPackageDefaultProduct`](tables/ocPackageDefaultProduct.md)
Productos por defecto en paquetes de OC.

### [`ocPackageMix`](tables/ocPackageMix.md)
Mezcla de productos en paquetes de OC.

### [`ocPackagePallet`](tables/ocPackagePallet.md)
Pallets en OC.

### [`ocPackagePalletDefaultProduct`](tables/ocPackagePalletDefaultProduct.md)
Productos por defecto en pallets de OC.

### [`ocPaymentDocument`](tables/ocPaymentDocument.md)
Documentos de pago asociados a OC.

### [`ocPaymentDocumentPayDate`](tables/ocPaymentDocumentPayDate.md)
Fechas de pago de documentos de OC.

### [`ocStatusAvailable`](tables/ocStatusAvailable.md)
Estados de disponibilidad de OC.

### [`ocStatusInvoiceConciliation`](tables/ocStatusInvoiceConciliation.md)
Estados de conciliación de facturas con OC.

### [`ocStatusPayment`](tables/ocStatusPayment.md)
Estados de pago de OC.

### [`ocStatusWarehouseReception`](tables/ocStatusWarehouseReception.md)
Estados de recepción en bodega de OC.

### [`ocBypassedProjects`](tables/ocBypassedProjects.md)
Proyectos que omiten el flujo normal de OC.

### [`ocConciliationStatus`](tables/ocConciliationStatus.md)
Estados de conciliación de OC.

### [`ocDeletedReason`](tables/ocDeletedReason.md)
Razones de eliminación de OC.

### `OC_EMITIDAS_APPSHEET` (VIEW)
Vista de OC emitidas para AppSheet.

### `OC_EMITIDAS_LOOKER` (VIEW)
Vista de OC emitidas para Looker.

---

## Proyectos

### [`kamProject`](tables/kamProject.md)
Proyectos gestionados por Key Account Managers.

### [`officeProject`](tables/officeProject.md)
Proyectos de oficina/administrativos.

### [`officeProjectCeco`](tables/officeProjectCeco.md)
Centros de costo de proyectos de oficina.

### [`projectBudget`](tables/projectBudget.md)
Presupuestos de proyectos.

### [`projectAllProduct`](tables/projectAllProduct.md)
Todos los productos asociados a proyectos.

### [`projectVideo`](tables/projectVideo.md)
Videos tutoriales o demostrativos de proyectos.

### [`project_metrics`](tables/project_metrics.md)
Métricas y KPIs de proyectos.

### [`dashBoardExecutedProjects`](tables/dashBoardExecutedProjects.md)
Dashboard de proyectos ejecutados.

### [`projectsOperativeDashboard`](tables/projectsOperativeDashboard.md)
Dashboard operativo de proyectos.

### [`dateChangeStatusProject`](tables/dateChangeStatusProject.md)
Historial de cambios de estado de proyectos.

### [`mailEvaluateProject`](tables/mailEvaluateProject.md)
Correos de evaluación de proyectos.

### [`invoiceProjects`](tables/invoiceProjects.md)
Facturas asociadas a proyectos.

### `PROYECTOS_APPSHEET` (VIEW)
Vista de proyectos para AppSheet.

---

## Facturación y Pagos

### [`invoiceHead`](tables/invoiceHead.md)
Encabezado de facturas de venta.

### [`invoiceDeliveryNotes`](tables/invoiceDeliveryNotes.md)
Relación entre facturas y notas de entrega.

### [`billingData`](tables/billingData.md)
Datos de facturación.

### [`billingStatus`](tables/billingStatus.md)
Estados de facturación.

### [`cargaFacturacion`](tables/cargaFacturacion.md)
Cargas masivas de facturación.

### [`paymentMethod`](tables/paymentMethod.md)
Métodos de pago disponibles.

### [`paymentMethodParts`](tables/paymentMethodParts.md)
Partes o cuotas de métodos de pago.

### [`paymentStatus`](tables/paymentStatus.md)
Estados de pagos.

### [`paymentAccount`](tables/paymentAccount.md)
Cuentas para pagos.

### [`paymentPayroll`](tables/paymentPayroll.md)
Nóminas de pagos.

### [`paymentDocumentCodition`](tables/paymentDocumentCodition.md)
Condiciones de documentos de pago.

### [`paymentDocumentProviderType`](tables/paymentDocumentProviderType.md)
Tipos de proveedor en documentos de pago.

### [`paymentDocumentStatus`](tables/paymentDocumentStatus.md)
Estados de documentos de pago.

### [`sales_invoice_control`](tables/sales_invoice_control.md)
Control de facturas de venta.

### [`sales_invoice_control_history`](tables/sales_invoice_control_history.md)
Historial de control de facturas de venta.

### `FACTURAS_VENTA_APPSHEET` (VIEW)
Vista de facturas de venta para AppSheet.

### `NOMINAS_APPSHEET` (VIEW)
Vista de nóminas para AppSheet.

### `getPaymentListAllView` (VIEW)
Vista con lista completa de pagos.

### [`NOTA_COD_VENTA_DEBITO`](tables/NOTA_COD_VENTA_DEBITO.md)
Notas de crédito y débito de ventas.

### [`devolutionCreditNote`](tables/devolutionCreditNote.md)
Notas de crédito por devoluciones.

---

## Notas de Entrega

### [`deliveryNoteHead`](tables/deliveryNoteHead.md)
Encabezado de notas de entrega.

### [`deliveryNoteDetail`](tables/deliveryNoteDetail.md)
Detalle de líneas en notas de entrega.

### [`deliveryNoteStatus`](tables/deliveryNoteStatus.md)
Estados de notas de entrega.

### [`deliveryNoteCedible`](tables/deliveryNoteCedible.md)
Notas de entrega cedibles.

---

## Banking y Conciliación

### [`bank`](tables/bank.md)
Catálogo de bancos.

### [`banking_cuenta`](tables/banking_cuenta.md)
Cuentas bancarias.

### [`banking_movimiento`](tables/banking_movimiento.md)
Movimientos bancarios.

### [`banking_cartolaimportada`](tables/banking_cartolaimportada.md)
Cartolas bancarias importadas.

### [`banking_tarjetacredito`](tables/banking_tarjetacredito.md)
Tarjetas de crédito.

### [`banking_movimientotarjetacredito`](tables/banking_movimientotarjetacredito.md)
Movimientos de tarjetas de crédito.

### [`banking_grupopagotarjeta`](tables/banking_grupopagotarjeta.md)
Grupos de pago con tarjeta.

### [`banking_grupopagotarjeta_movimientos`](tables/banking_grupopagotarjeta_movimientos.md)
Movimientos de grupos de pago con tarjeta.

### [`banking_conciliacionmovimientotarjeta`](tables/banking_conciliacionmovimientotarjeta.md)
Conciliación de movimientos de tarjeta.

### [`banking_reglaclasificacion`](tables/banking_reglaclasificacion.md)
Reglas de clasificación automática de movimientos.

### [`reconciliation_document_analysis`](tables/reconciliation_document_analysis.md)
Análisis de documentos para conciliación.

### [`reconciliation_invoicepurchaseorderreconciliation`](tables/reconciliation_invoicepurchaseorderreconciliation.md)
Conciliación entre facturas y órdenes de compra.

### [`reconciliation_purchase_order_analysis`](tables/reconciliation_purchase_order_analysis.md)
Análisis de órdenes de compra para conciliación.

### [`reconciliation_salesbankreconciliation`](tables/reconciliation_salesbankreconciliation.md)
Conciliación de ventas con movimientos bancarios.

---

## Shop / E-commerce

### [`shop_products`](tables/shop_products.md)
Productos en la tienda online.

### [`shop_product_variants`](tables/shop_product_variants.md)
Variantes de productos (talla, color, etc.).

### [`shop_product_attributes`](tables/shop_product_attributes.md)
Atributos de productos.

### [`shop_product_attribute_values`](tables/shop_product_attribute_values.md)
Valores de atributos de productos.

### [`shop_product_media`](tables/shop_product_media.md)
Imágenes y videos de productos.

### [`shop_categories`](tables/shop_categories.md)
Categorías de productos en la tienda.

### [`shop_carts`](tables/shop_carts.md)
Carritos de compra.

### [`shop_cart_items`](tables/shop_cart_items.md)
Items en carritos de compra.

### [`shop_orders`](tables/shop_orders.md)
Órdenes/pedidos de la tienda.

### [`shop_order_items`](tables/shop_order_items.md)
Items en órdenes.

### [`shop_order_status_history`](tables/shop_order_status_history.md)
Historial de estados de órdenes.

### [`shop_organizations`](tables/shop_organizations.md)
Organizaciones cliente en la tienda.

### [`shop_user_profiles`](tables/shop_user_profiles.md)
Perfiles de usuarios de la tienda.

### [`shop_user_roles`](tables/shop_user_roles.md)
Roles de usuarios en la tienda.

### [`shop_addresses`](tables/shop_addresses.md)
Direcciones de entrega.

### [`shop_budgets`](tables/shop_budgets.md)
Presupuestos de organizaciones.

### [`shop_contracts`](tables/shop_contracts.md)
Contratos con organizaciones.

### [`shop_contract_products`](tables/shop_contract_products.md)
Productos en contratos.

### [`shop_contract_users`](tables/shop_contract_users.md)
Usuarios autorizados en contratos.

### [`shop_contract_cost_centers`](tables/shop_contract_cost_centers.md)
Centros de costo en contratos.

### [`shop_contract_cost_center_users`](tables/shop_contract_cost_center_users.md)
Usuarios por centro de costo.

### [`shop_cost_centers`](tables/shop_cost_centers.md)
Centros de costo.

### [`shop_cost_center_custom_field_configs`](tables/shop_cost_center_custom_field_configs.md)
Configuración de campos personalizados por centro de costo.

### [`shop_custom_field_configs`](tables/shop_custom_field_configs.md)
Configuración de campos personalizados.

### [`shop_quotes`](tables/shop_quotes.md)
Cotizaciones.

### [`shop_quote_items`](tables/shop_quote_items.md)
Items en cotizaciones.

### [`shop_rfqs`](tables/shop_rfqs.md)
Request for Quotation (Solicitudes de cotización).

### [`shop_rfq_items`](tables/shop_rfq_items.md)
Items en RFQs.

### [`shop_authorization_workflows`](tables/shop_authorization_workflows.md)
Flujos de autorización de compras.

### [`shop_authorization_tasks`](tables/shop_authorization_tasks.md)
Tareas de autorización.

### [`shop_documents`](tables/shop_documents.md)
Documentos adjuntos.

### [`shop_attachments`](tables/shop_attachments.md)
Archivos adjuntos.

### [`shop_dtes`](tables/shop_dtes.md)
Documentos Tributarios Electrónicos (DTE).

### [`shop_notifications`](tables/shop_notifications.md)
Notificaciones de la tienda.

### [`shop_push_tokens`](tables/shop_push_tokens.md)
Tokens para notificaciones push.

### [`shop_audit_logs`](tables/shop_audit_logs.md)
Logs de auditoría de la tienda.

### [`shop_help_contents`](tables/shop_help_contents.md)
Contenidos de ayuda.

### [`shop_import_jobs`](tables/shop_import_jobs.md)
Trabajos de importación masiva.

### [`shop_export_jobs`](tables/shop_export_jobs.md)
Trabajos de exportación de datos.

---

## Kaiken Lab (IA/ML)

### [`kaiken_lab_conversation`](tables/kaiken_lab_conversation.md)
Conversaciones con IA/asistente.

### [`kaiken_lab_licitacionvector`](tables/kaiken_lab_licitacionvector.md)
Vectores embeddings de licitaciones para búsqueda semántica.

### [`kaiken_lab_rawlicitacion`](tables/kaiken_lab_rawlicitacion.md)
Licitaciones en formato raw/sin procesar.

### [`kaiken_lab_adjuntomepu`](tables/kaiken_lab_adjuntomepu.md)
Adjuntos MEPU (Mercado Público).

### [`kaiken_lab_adjuntomepuimages`](tables/kaiken_lab_adjuntomepuimages.md)
Imágenes de adjuntos MEPU.

### [`kaiken_lab_conocimientopreviogeneral`](tables/kaiken_lab_conocimientopreviogeneral.md)
Base de conocimiento general del sistema.

### [`kaiken_lab_conocimientopreviogeneralupdates`](tables/kaiken_lab_conocimientopreviogeneralupdates.md)
Actualizaciones a la base de conocimiento.

### [`kaiken_lab_filestorage`](tables/kaiken_lab_filestorage.md)
Almacenamiento de archivos.

### [`kaiken_lab_preguntasforo`](tables/kaiken_lab_preguntasforo.md)
Preguntas del foro/comunidad.

### [`kaiken_lab_preguntasprevias`](tables/kaiken_lab_preguntasprevias.md)
Preguntas frecuentes o históricas.

### [`query_builder_model_context`](tables/query_builder_model_context.md)
Contexto de modelos para query builder.

### [`query_builder_query_history`](tables/query_builder_query_history.md)
Historial de queries ejecutadas.

---

## Inventario y Almacén

### [`censo_traking`](tables/censo_traking.md)
Seguimiento de censos de inventario.

### [`censo_traking_caja`](tables/censo_traking_caja.md)
Seguimiento de cajas en censos.

### [`registeredMissings`](tables/registeredMissings.md)
Faltantes registrados.

### [`registeredMissingsDetail`](tables/registeredMissingsDetail.md)
Detalle de faltantes.

### [`pickingStatus`](tables/pickingStatus.md)
Estados de picking/preparación de pedidos.

### [`licitacionPickingReceived`](tables/licitacionPickingReceived.md)
Recepciones de picking para licitaciones.

### [`selectedTenderOrderPickingReceived`](tables/selectedTenderOrderPickingReceived.md)
Recepciones de picking para órdenes de licitaciones.

### [`licitacion_client`](tables/licitacion_client.md)
Clientes en licitaciones (logística).

### [`licitacion_client_detail`](tables/licitacion_client_detail.md)
Detalle de entregas a clientes.

### [`licitacion_client_package`](tables/licitacion_client_package.md)
Paquetes para clientes en licitaciones.

### [`licitacion_client_pallet`](tables/licitacion_client_pallet.md)
Pallets para clientes en licitaciones.

---

## Órdenes de Licitaciones

### [`selectedTenderOrder`](tables/selectedTenderOrder.md)
Órdenes generadas desde licitaciones.

### [`selectedTenderOrderComment`](tables/selectedTenderOrderComment.md)
Comentarios en órdenes de licitaciones.

### [`selectedTenderOrderPack`](tables/selectedTenderOrderPack.md)
Paquetes en órdenes de licitaciones.

### [`selectedTenderOrderProduct`](tables/selectedTenderOrderProduct.md)
Productos en órdenes de licitaciones.

### [`selectedTenderOrderRequest`](tables/selectedTenderOrderRequest.md)
Solicitudes de órdenes de licitaciones.

### [`selectedTenderOrderRequestProduct`](tables/selectedTenderOrderRequestProduct.md)
Productos en solicitudes de órdenes.

### [`selectedTenderOrderRequestStatus`](tables/selectedTenderOrderRequestStatus.md)
Estados de solicitudes de órdenes.

### [`selectedTenderOrder_client`](tables/selectedTenderOrder_client.md)
Clientes en órdenes de licitaciones.

### [`selectedTenderOrder_client_detail`](tables/selectedTenderOrder_client_detail.md)
Detalle de entregas a clientes.

### [`selectedTenderOrder_client_package`](tables/selectedTenderOrder_client_package.md)
Paquetes para clientes.

### [`selectedTenderOrder_client_pallet`](tables/selectedTenderOrder_client_pallet.md)
Pallets para clientes.

### [`selectedTenderProduct`](tables/selectedTenderProduct.md)
Productos en licitaciones seleccionadas.

### [`selectedTenderProductEspecial`](tables/selectedTenderProductEspecial.md)
Productos especiales en licitaciones.

---

## Cotizaciones

### [`cotizacionGenerada`](tables/cotizacionGenerada.md)
Cotizaciones generadas.

### [`cotizacionProducto`](tables/cotizacionProducto.md)
Productos en cotizaciones.

### [`cotizacionSolicitada`](tables/cotizacionSolicitada.md)
Cotizaciones solicitadas.

### [`cotizacionSolicitadaProducto`](tables/cotizacionSolicitadaProducto.md)
Productos en cotizaciones solicitadas.

---

## Ajustes e Inventario

### [`adjustmentHead`](tables/adjustmentHead.md)
Encabezado de ajustes de inventario.

### [`adjustmentDetail`](tables/adjustmentDetail.md)
Detalle de ajustes de inventario.

### [`adjustmentDetailDefaultProducts`](tables/adjustmentDetailDefaultProducts.md)
Productos por defecto en ajustes.

### [`adjustmentHeadDefaultProduct`](tables/adjustmentHeadDefaultProduct.md)
Productos por defecto en encabezados de ajustes.

### [`adjustmentRatio`](tables/adjustmentRatio.md)
Ratios/proporciones en ajustes.

---

## Notificaciones

### [`notification`](tables/notification.md)
Notificaciones del sistema.

### [`notificationProfile`](tables/notificationProfile.md)
Perfiles de notificación.

### [`listNotification_user`](tables/listNotification_user.md)
Lista de notificaciones por usuario.

### [`missingNotificationType`](tables/missingNotificationType.md)
Tipos de notificaciones de faltantes.

---

## Configuración y Catálogos

### [`module`](tables/module.md)
Módulos del sistema.

### [`moduleElements`](tables/moduleElements.md)
Elementos/funcionalidades de módulos.

### [`area`](tables/area.md)
Áreas organizacionales.

### [`subarea`](tables/subarea.md)
Subáreas organizacionales.

### [`society`](tables/society.md)
Sociedades/empresas.

### [`societyAssociation`](tables/societyAssociation.md)
Asociaciones entre sociedades.

### [`regions`](tables/regions.md)
Regiones geográficas.

### [`communes`](tables/communes.md)
Comunas/municipios.

### [`action`](tables/action.md)
Acciones del sistema.

### [`actionExternal`](tables/actionExternal.md)
Acciones externas.

### [`baseFilter`](tables/baseFilter.md)
Filtros base configurables.

### [`baseFilterUser`](tables/baseFilterUser.md)
Filtros asignados a usuarios.

### [`presavedFilter`](tables/presavedFilter.md)
Filtros pre-guardados.

### [`presavedFilterTable`](tables/presavedFilterTable.md)
Tablas asociadas a filtros pre-guardados.

### [`returnMethod`](tables/returnMethod.md)
Métodos de devolución.

### [`orderStatusinRequestStatus`](tables/orderStatusinRequestStatus.md)
Relación entre estados de órdenes y solicitudes.

### [`opeAdminStatus`](tables/opeAdminStatus.md)
Estados administrativos de operaciones.

### [`percentCostOrder`](tables/percentCostOrder.md)
Porcentajes de costo en órdenes.

### [`feriados`](tables/feriados.md)
Días feriados.

### [`dias_habiles`](tables/dias_habiles.md)
Días hábiles.

### [`videoTutorial`](tables/videoTutorial.md)
Videos tutoriales del sistema.

### [`externalFaq`](tables/externalFaq.md)
Preguntas frecuentes externas.

### [`documents_document`](tables/documents_document.md)
Documentos del sistema.

---

## Django y Sistema

### [`django_admin_log`](tables/django_admin_log.md)
Log de acciones en el admin de Django.

### [`django_content_type`](tables/django_content_type.md)
Tipos de contenido de Django.

### [`django_migrations`](tables/django_migrations.md)
Migraciones de base de datos de Django.

### [`django_session`](tables/django_session.md)
Sesiones de usuario de Django.

### [`django_celery_beat_clockedschedule`](tables/django_celery_beat_clockedschedule.md)
Tareas programadas con horario específico (Celery Beat).

### [`django_celery_beat_crontabschedule`](tables/django_celery_beat_crontabschedule.md)
Tareas programadas con crontab (Celery Beat).

### [`django_celery_beat_intervalschedule`](tables/django_celery_beat_intervalschedule.md)
Tareas programadas con intervalos (Celery Beat).

### [`django_celery_beat_periodictask`](tables/django_celery_beat_periodictask.md)
Tareas periódicas de Celery.

### [`django_celery_beat_periodictasks`](tables/django_celery_beat_periodictasks.md)
Registro de tareas periódicas.

### [`django_celery_beat_solarschedule`](tables/django_celery_beat_solarschedule.md)
Tareas programadas con horario solar (Celery Beat).

### [`alembic_version`](tables/alembic_version.md)
Versiones de migraciones de Alembic (otra herramienta de migraciones).

### [`updateOperations`](tables/updateOperations.md)
Operaciones de actualización del sistema.

---

## Vistas y Reportes

### `FACTURAS_VENTA_APPSHEET` (VIEW)
Vista de facturas de venta para integración con AppSheet.

### `NOMINAS_APPSHEET` (VIEW)
Vista de nóminas para integración con AppSheet.

### `OC_EMITIDAS_APPSHEET` (VIEW)
Vista de órdenes de compra emitidas para AppSheet.

### `OC_EMITIDAS_LOOKER` (VIEW)
Vista de órdenes de compra emitidas para Looker (BI).

### `PROYECTOS_APPSHEET` (VIEW)
Vista de proyectos para AppSheet.

### `getPaymentListAllView` (VIEW)
Vista consolidada de todos los pagos.

### `licitacionesLicitalab_ultimaLectura` (VIEW)
Vista con última lectura de licitaciones en Licitalab.

### [`TOTAL_BUY`](tables/TOTAL_BUY.md)
Totales de compras.

### [`TOTAL_COMPLETE`](tables/TOTAL_COMPLETE.md)
Totales completos.

### [`TOTAL_PROD`](tables/TOTAL_PROD.md)
Totales de producción.

### [`total_complete_subquery`](tables/total_complete_subquery.md)
Subconsulta de totales completos.

### [`total_values_subquery`](tables/total_values_subquery.md)
Subconsulta de valores totales.

---

## Otras Tablas

### [`suministro_analysis`](tables/suministro_analysis.md)
Análisis de suministros.

---

## Resumen por Categoría

| Categoría | Cantidad de Tablas |
|-----------|-------------------|
| Shop / E-commerce | 40 |
| Licitaciones | 38 |
| Órdenes de Compra | 28 |
| Django y Sistema | 13 |
| Kaiken Lab (IA/ML) | 11 |
| Banking y Conciliación | 11 |
| Facturación y Pagos | 16 |
| Productos y Catálogo | 11 |
| Proyectos | 12 |
| Autenticación y Permisos | 7 |
| Usuarios y Perfiles | 9 |
| Clientes | 11 |
| Proveedores | 5 |
| Configuración y Catálogos | 29 |
| Notificaciones | 4 |
| Inventario y Almacén | 10 |
| Notas de Entrega | 4 |
| Vistas y Reportes | 10 |
| Otras | 6 |

**Total: 275 tablas**

---

## Notas Importantes

1. **Vistas (VIEWS)**: Algunas tablas marcadas con "VIEW" son vistas de base de datos, no tablas físicas. Estas vistas consolidan información para reportes o integraciones.

2. **Integración AppSheet**: Múltiples vistas están optimizadas para integración con AppSheet (plataforma no-code).

3. **Integración Looker**: Existen vistas específicas para Business Intelligence con Looker.

4. **Django Framework**: El sistema está construido sobre Django, por lo que incluye tablas estándar de este framework.

5. **Celery**: Se utiliza Celery para tareas asíncronas y programadas.

6. **Kaiken Lab**: Módulo de IA/ML que incluye procesamiento de lenguaje natural, vectorización de documentos y chatbots.

7. **Sistema de Licitaciones**: Uno de los módulos más importantes, con flujo completo desde evaluación hasta adjudicación.

8. **E-commerce (Shop)**: Módulo completo de tienda online con carritos, órdenes, autorizaciones y presupuestos.

9. **Conciliación Bancaria**: Sistema automatizado de conciliación de movimientos bancarios con facturas y pagos.

10. **Multi-tenant**: El sistema parece soportar múltiples sociedades/empresas (tabla `society`).
