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

    -- Prioriza OC de reconciliación formal, sino usa match por campo texto
    IFNULL(oh.idOcHeader, oh_texto.idOcHeader) AS id_orden_compra_reconciliada,
    IFNULL(oh.oc, oh_texto.oc) AS numero_oc_reconciliada,
    IFNULL(oh.codeProject, oh_texto.codeProject) AS codigo_proyecto_oc,

    -- Estrategia de múltiples niveles para identificar proyecto:
    -- 1. Proyecto de OC reconciliada formalmente
    -- 2. Proyecto de OC matcheada por campo texto
    -- 3. Proyecto directo del documento
    IFNULL(IFNULL(oh.idSelectedTenders, oh_texto.idSelectedTenders), dd.project_obj_id) AS id_proyecto,

    dd.centro_costo,
    dd.proyecto AS codigo_proyecto_texto,
    dd.orden_compra AS orden_compra_texto,

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
-- Join 1: Reconciliación formal
LEFT JOIN reconciliation_invoicepurchaseorderreconciliation rec ON dd.id = rec.document_id
LEFT JOIN ocHeader oh ON rec.purchase_order_id = oh.idOcHeader
-- Join 2: Match por campo de texto cuando no hay reconciliación formal
LEFT JOIN ocHeader oh_texto ON dd.orden_compra = oh_texto.oc AND rec.id IS NULL
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
