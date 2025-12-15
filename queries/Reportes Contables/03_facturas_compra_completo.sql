SELECT
    dd.id AS id_documento,
    dd.document_type AS tipo_documento_sistema,
    CASE
        WHEN dd.document_type = 'purchase_invoice' THEN 'Factura de Compra'
        WHEN dd.document_type = 'purchase_credit_note' THEN 'Nota de Crédito'
        WHEN dd.document_type = 'purchase_debit_note' THEN 'Nota de Débito'
        WHEN dd.document_type = 'purchase_manual_document' THEN 'Documento Manual'
        ELSE dd.document_type
    END AS tipo_documento_nombre,
    dd.tipo_documento AS codigo_tributario,
    dd.folio,
    dd.fecha_emision,

    dd.rut_emisor,
    dd.nombre_emisor AS proveedor,
    prov.Nombre AS proveedor_nombre_bd,

    dd.monto_exento,
    dd.monto_neto,
    dd.monto_iva,
    dd.monto_total,
    dd.monto_impuestos_adicionales,

    dd.estado,
    dd.es_documento_electronico,
    dd.es_nota_credito,

    dd.reconciled_amount AS monto_conciliado,
    dd.pending_amount AS monto_pendiente,

    rec.id AS id_reconciliacion,
    rec.reconciled_amount AS monto_reconciliado,
    rec.status AS estado_reconciliacion,

    oh.idOcHeader AS id_orden_compra_reconciliada,
    oh.oc AS numero_oc_reconciliada,
    oh.codeProject AS codigo_proyecto_oc,

    IFNULL(oh.idSelectedTenders, dd.project_obj_id) AS id_proyecto,

    dd.centro_costo,
    dd.proyecto AS codigo_proyecto_texto,

    dd.condiciones_pago,
    dd.fecha_carga,
    dd.fecha_recepcion,
    dd.fecha_aceptacion,

    dd.factura_original_id AS factura_referencia,
    doc_ref.folio AS folio_referencia,

    au.username AS usuario_creacion,

    dd.observaciones

FROM documents_document dd
LEFT JOIN provider prov ON dd.provider_id = prov.idProvider
LEFT JOIN reconciliation_invoicepurchaseorderreconciliation rec ON dd.id = rec.document_id
LEFT JOIN ocHeader oh ON rec.purchase_order_id = oh.idOcHeader
LEFT JOIN documents_document doc_ref ON dd.documento_referencia_id = doc_ref.id
LEFT JOIN auth_user au ON dd.created_by_id = au.id

WHERE dd.document_type IN (
    'purchase_invoice',
    'purchase_credit_note',
    'purchase_debit_note',
    'purchase_manual_document'
)
AND dd.fecha_emision >= DATE_SUB(CURDATE(), INTERVAL 12 MONTH)

ORDER BY dd.fecha_emision DESC, dd.folio DESC
LIMIT 200;
