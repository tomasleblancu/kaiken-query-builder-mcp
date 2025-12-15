SELECT
    pd.idOcPaymentDocument AS id_documento_pago,
    pd.numberPaymentDocument AS numero_documento,
    pd.ammountPaid AS monto_pagado,
    pd.dateCreate AS fecha_documento,

    oh.idOcHeader AS id_orden_compra,
    oh.oc AS numero_oc,
    oh.codeProject AS codigo_proyecto,
    oh.idSelectedTenders AS id_proyecto,
    oh.dateCreation AS fecha_creacion_oc,
    oh.netTotal AS total_neto,
    oh.grossTotal AS total_bruto,
    oh.invoiceNumber AS numero_factura,
    oh.reconciled_amount AS monto_conciliado,
    oh.pending_amount AS monto_pendiente,

    prov.idProvider AS id_proveedor,
    prov.rut AS rut_proveedor,
    prov.Nombre AS nombre_proveedor,
    prov.banco AS banco_proveedor,
    prov.cuenta AS cuenta_proveedor,

    pm.idPaymentMethod AS id_metodo_pago,
    pm.paymentMethod AS metodo_pago,
    pm.extraDays AS dias_extra,

    pd.adjust AS ajuste,
    pd.adjustComment AS comentario_ajuste,

    usr.name AS usuario_creacion

FROM ocPaymentDocument pd
INNER JOIN ocHeader oh ON pd.idOcHeader = oh.idOcHeader
LEFT JOIN provider prov ON pd.idProvider = prov.idProvider
LEFT JOIN paymentMethod pm ON pd.idPaymentMethod = pm.idPaymentMethod
LEFT JOIN users usr ON pd.idCreateUser = usr.idUser

WHERE pd.dateCreate >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH)

ORDER BY pd.dateCreate DESC, pd.idOcPaymentDocument DESC
LIMIT 100;
