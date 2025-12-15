SELECT
    oh.idOcHeader AS id_orden_compra,
    oh.oc AS numero_oc,
    oh.codeProject AS codigo_proyecto,
    st.title AS nombre_proyecto,
    oh.dateCreation AS fecha_creacion,
    oh.dateCompleteReception AS fecha_recepcion_completa,

    prov.idProvider AS id_proveedor,
    prov.rut AS rut_proveedor,
    prov.Nombre AS nombre_proveedor,

    oh.netTotal AS total_neto,
    oh.netTotalConfirm AS total_neto_confirmado,
    oh.grossTotal AS total_bruto,
    oh.reconciled_amount AS monto_conciliado_oc,
    oh.pending_amount AS monto_pendiente_oc,

    pm.paymentMethod AS metodo_pago,
    pm.extraDays AS dias_credito,

    ocs.idOcStatusAvailable AS id_estado_disponible,
    ocs.ocStatusAvailable AS estado_disponible,
    ocsp.idOcStatusPayment AS id_estado_pago,
    ocsp.ocStatusPayment AS estado_pago,
    ocsi.idOcStatusInvoiceConciliation AS id_estado_conciliacion_factura,
    ocsi.ocStatusInvoiceConciliation AS estado_conciliacion_factura,

    poa.id AS id_analisis_conciliacion,
    poa.status AS estado_analisis,
    poa.comments AS comentarios_analisis,
    poa.created_at AS fecha_analisis,
    au_poa.username AS usuario_analisis,

    COUNT(DISTINCT ipor.id) AS cantidad_conciliaciones,
    SUM(ipor.reconciled_amount) AS total_conciliado_facturas,
    GROUP_CONCAT(DISTINCT dd.folio ORDER BY dd.folio SEPARATOR ', ') AS folios_facturas,

    oh.invoiceNumber AS numero_factura_oc,
    oh.observation AS observaciones,
    oh.dateUpdate AS fecha_actualizacion

FROM ocHeader oh
LEFT JOIN provider prov ON oh.provider = prov.idProvider
LEFT JOIN selectedTenders st ON oh.idSelectedTenders = st.idSelectedTenders
LEFT JOIN paymentMethod pm ON oh.paymentMethod = pm.idPaymentMethod
LEFT JOIN ocStatusAvailable ocs ON oh.idOcStatusAvailable = ocs.idOcStatusAvailable
LEFT JOIN ocStatusPayment ocsp ON oh.idOcStatusPayment = ocsp.idOcStatusPayment
LEFT JOIN ocStatusInvoiceConciliation ocsi ON oh.idOcStatusInvoiceConciliation = ocsi.idOcStatusInvoiceConciliation

LEFT JOIN reconciliation_purchase_order_analysis poa ON oh.idOcHeader = poa.purchase_order_id
LEFT JOIN auth_user au_poa ON poa.created_by_id = au_poa.id

LEFT JOIN reconciliation_invoicepurchaseorderreconciliation ipor ON oh.idOcHeader = ipor.purchase_order_id
LEFT JOIN documents_document dd ON ipor.document_id = dd.id

WHERE oh.dateCreation >= DATE_SUB(CURDATE(), INTERVAL 12 MONTH)

GROUP BY
    oh.idOcHeader,
    oh.oc,
    oh.codeProject,
    st.title,
    oh.dateCreation,
    oh.dateCompleteReception,
    prov.idProvider,
    prov.rut,
    prov.Nombre,
    oh.netTotal,
    oh.netTotalConfirm,
    oh.grossTotal,
    oh.reconciled_amount,
    oh.pending_amount,
    pm.paymentMethod,
    pm.extraDays,
    ocs.idOcStatusAvailable,
    ocs.ocStatusAvailable,
    ocsp.idOcStatusPayment,
    ocsp.ocStatusPayment,
    ocsi.idOcStatusInvoiceConciliation,
    ocsi.ocStatusInvoiceConciliation,
    poa.id,
    poa.status,
    poa.comments,
    poa.created_at,
    au_poa.username,
    oh.invoiceNumber,
    oh.observation,
    oh.dateUpdate

ORDER BY oh.dateCreation DESC
LIMIT 200;
