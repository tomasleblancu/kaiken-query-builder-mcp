SELECT
    -- Identificación Principal
    st.idSelectedTenders AS id_proyecto,
    st.code AS codigo_licitacion,
    st.title AS titulo,
    st.description AS descripcion,
    st.rut AS rut_organismo,
    st.plaintiff AS organismo,

    -- Fechas
    st.dateAdjudication AS fecha_adjudicacion,
    st.dateInternalClose AS fecha_cierre_interno,

    -- Información Financiera
    st.budget AS presupuesto,
    st.netCost AS costo_neto,
    st.netSale AS venta_neta,
    st.totalSale AS venta_total,

    -- Región (expandida)
    r.idRegion AS id_region,
    r.name AS nombre_region,

    -- Sociedad (expandida)
    soc.idSociety AS id_sociedad,
    soc.nameSociety AS nombre_sociedad,
    soc.rut AS rut_sociedad,

    -- Estados y Clasificaciones (expandidos)
    stt.idSelectedTenderType AS id_tipo,
    stt.type AS tipo_licitacion,

    stc.idSelectedTenderClasification AS id_clasificacion,
    stc.clasification AS clasificacion,

    sti.idSelectedTenderIndustry AS id_industria,
    sti.industry AS industria,
    sti.grouping AS agrupacion_industria,

    stgs.idSelectedTenderGlobalStatus AS id_estado_global,
    stgs.globalStatus AS estado_global,

    strs.idSelectedTenderReviewStatus AS id_estado_revision,
    strs.reviewStatus AS estado_revision,

    st.idOperationStatus AS id_estado_operacion,

    -- Configuraciones
    st.parentCode AS codigo_padre

FROM selectedTenders st

-- JOINs con tablas de referencia
LEFT JOIN regions r ON st.idRegion = r.idRegion
LEFT JOIN society soc ON st.idSociety = soc.idSociety
LEFT JOIN selectedTenderType stt ON st.idSelectedTenderType = stt.idSelectedTenderType
LEFT JOIN selectedTenderClasification stc ON st.idSelectedTenderClasification = stc.idSelectedTenderClasification
LEFT JOIN selectedTenderIndustry sti ON st.idSelectedTenderIndustry = sti.idSelectedTenderIndustry
LEFT JOIN selectedTenderGlobalStatus stgs ON st.idSelectedTenderGlobalStatus = stgs.idSelectedTenderGlobalStatus
LEFT JOIN selectedTenderReviewStatus strs ON st.idSelectedTenderReviewStatus = strs.idSelectedTenderReviewStatus

WHERE st.available = 1

ORDER BY st.dateAdjudication DESC, st.idSelectedTenders DESC

LIMIT 100;
