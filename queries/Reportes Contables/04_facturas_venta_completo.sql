SELECT
    dd.id AS id_documento,
    dd.document_type AS tipo_documento_sistema,
    CASE
        WHEN dd.document_type = 'sale_invoice' THEN 'Factura de Venta'
        WHEN dd.document_type = 'sale_credit_note' THEN 'Nota de Crédito'
        WHEN dd.document_type = 'sale_debit_note' THEN 'Nota de Débito'
        ELSE dd.document_type
    END AS tipo_documento_nombre,
    dd.tipo_documento AS codigo_tributario,
    dd.folio,
    dd.fecha_emision,

    dd.rut_receptor AS rut_cliente,
    dd.nombre_receptor AS cliente,
    cli.nameClient AS cliente_nombre_bd,

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

    dd.orden_compra AS numero_orden,
    dd.centro_costo,
    dd.proyecto AS codigo_proyecto,
    st.title AS nombre_proyecto,

    sto.idSelectedTenderOrder AS id_orden_venta,
    sto.dateAdmission AS fecha_orden,

    ih.idInvoiceHead AS id_factura_interna,
    ih.bsaleId AS bsale_id,
    ih.oc AS oc_cliente,
    ih.projectCode AS codigo_proyecto_factura,
    ih.informedSii AS informado_sii,
    ih.isExternal AS es_externa,
    ih.originalPdfUrl AS url_pdf_factura,
    ih.xmlUrl AS url_xml_factura,
    soc.nameSociety AS sociedad_emisora,
    usr.name AS usuario_factura,

    dd.condiciones_pago,
    dd.fecha_carga,
    dd.fecha_recepcion,
    dd.fecha_aceptacion,

    dd.factura_original_id AS factura_referencia,
    doc_ref.folio AS folio_referencia,

    au.username AS usuario_creacion,

    dd.observaciones

FROM documents_document dd
LEFT JOIN client cli ON dd.client_id = cli.idClient
LEFT JOIN selectedTenders st ON dd.project_obj_id = st.idSelectedTenders
LEFT JOIN selectedTenderOrder sto ON dd.order_obj_id = sto.idSelectedTenderOrder
LEFT JOIN documents_document doc_ref ON dd.documento_referencia_id = doc_ref.id
LEFT JOIN auth_user au ON dd.created_by_id = au.id

LEFT JOIN invoiceHead ih ON dd.folio = ih.documentNumber
    AND dd.client_id = ih.idClient
    AND DATE(dd.fecha_emision) = DATE(ih.dateEmission)
LEFT JOIN society soc ON ih.idSociety = soc.idSociety
LEFT JOIN users usr ON ih.idUser = usr.idUser

WHERE dd.document_type IN (
    'sale_invoice',
    'sale_credit_note',
    'sale_debit_note'
)
AND dd.fecha_emision >= DATE_SUB(CURDATE(), INTERVAL 12 MONTH)

ORDER BY dd.fecha_emision DESC, dd.folio DESC
LIMIT 200;
