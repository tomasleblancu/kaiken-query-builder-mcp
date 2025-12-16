SELECT
    -- Identificación Principal (invoiceHead)
    ih.idInvoiceHead AS id_factura,
    ih.documentNumber AS folio,
    ih.dateEmission AS fecha_emision,
    ih.bsaleId AS bsale_id,

    -- Cliente
    cli.idClient AS id_cliente,
    cli.rut AS rut_cliente,
    cli.nameClient AS nombre_cliente,

    -- Montos
    ih.netAmount AS monto_neto,
    ih.taxAmount AS monto_iva,
    ih.totalAmount AS monto_total,

    -- Estado
    ih.informedSii AS informado_sii,
    ih.isExternal AS es_externa,

    -- Documentos
    ih.originalPdfUrl AS url_pdf_factura,
    ih.xmlUrl AS url_xml_factura,

    -- Orden de Compra y Proyecto
    ih.oc AS oc_cliente,
    ih.projectCode AS codigo_proyecto,
    st.idSelectedTenders AS id_proyecto,
    st.title AS nombre_proyecto,
    st.code AS codigo_licitacion,

    -- Orden de Venta
    sto.idSelectedTenderOrder AS id_orden_venta,
    sto.dateAdmission AS fecha_orden_venta,

    -- Sociedad Emisora
    soc.idSociety AS id_sociedad,
    soc.nameSociety AS nombre_sociedad,
    soc.rut AS rut_sociedad,

    -- Usuario
    usr.idUser AS id_usuario,
    usr.name AS nombre_usuario,
    usr.mail AS email_usuario,

    -- Información adicional de documents_document (si existe)
    dd.id AS id_documento_tributario,
    dd.estado AS estado_dte,
    dd.es_documento_electronico,
    dd.reconciled_amount AS monto_conciliado,
    dd.pending_amount AS monto_pendiente,
    dd.condiciones_pago,
    dd.fecha_carga,
    dd.fecha_recepcion,
    dd.fecha_aceptacion,
    dd.observaciones

FROM invoiceHead ih

-- JOINs principales
LEFT JOIN client cli ON ih.idClient = cli.idClient
LEFT JOIN society soc ON ih.idSociety = soc.idSociety
LEFT JOIN users usr ON ih.idUser = usr.idUser

-- JOIN con orden de venta (cuando projectCode tiene sufijo -P#)
LEFT JOIN selectedTenderOrder sto ON ih.projectCode = sto.codeOrder

-- JOIN con licitación (dos casos):
-- 1. A través de la orden (cuando hay match con codeOrder)
-- 2. Directo por código (cuando projectCode es el código de proyecto completo)
LEFT JOIN selectedTenders st ON sto.idSelectedTenders = st.idSelectedTenders
    OR ih.projectCode = st.code

-- JOIN opcional con documents_document (sistema nuevo de DTE)
LEFT JOIN documents_document dd ON ih.documentNumber = dd.folio
    AND ih.idClient = dd.client_id
    AND DATE(ih.dateEmission) = DATE(dd.fecha_emision)
    AND dd.document_type IN ('sale_invoice', 'sale_credit_note', 'sale_debit_note')

WHERE ih.dateEmission >= DATE_SUB(CURDATE(), INTERVAL 12 MONTH)

ORDER BY ih.dateEmission DESC, ih.documentNumber DESC
LIMIT 200;
