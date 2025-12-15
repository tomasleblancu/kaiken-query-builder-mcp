SELECT
    bm.id AS id_movimiento,
    bm.external_id AS id_externo,
    bm.date AS fecha,

    bc.banco,
    bc.numero AS numero_cuenta,
    bc.tipo AS tipo_cuenta,
    bc.moneda,
    soc.nameSociety AS sociedad,

    bm.description AS descripcion,
    bm.sender_name AS emisor,
    bm.recipient_name AS receptor,
    bm.doc_number AS numero_documento,

    bm.inflows AS entradas,
    bm.outflows AS salidas,
    bm.amount AS monto,
    bm.balance AS saldo,

    bm.estado_erp AS estado,
    bm.monto_conciliado,
    bm.saldo_por_conciliar,

    bm.subclasificacion,
    bm.tentativo,
    bm.rut_contraparte,

    cli.nameClient AS cliente,
    bm.comentario AS observaciones,
    bm.created_at AS fecha_creacion,
    bm.last_update AS ultima_actualizacion

FROM banking_movimiento bm
LEFT JOIN banking_cuenta bc ON bm.account_id = bc.id
LEFT JOIN society soc ON bc.rut_sociedad_id = soc.idSociety
LEFT JOIN client cli ON bm.cliente_id = cli.idClient

WHERE bm.date >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH)

ORDER BY bm.date DESC, bm.id DESC
LIMIT 200;
