# licitacionesData

> **Tipo:** Tabla

## Descripción

Gestión de licitaciones

## Estadísticas

- **Filas aproximadas:** 17,025
- **Columnas:** 99

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idLicitacionSeleccionada` | int | NO |  | `0` |  | - |
| `codigo` | varchar(1000) | YES |  | `-` |  | - |
| `idAnalista` | int | YES |  | `-` |  | - |
| `nombreAnalista` | varchar(100) | YES |  | `-` |  | - |
| `idRevisor` | int | YES |  | `-` |  | - |
| `nombreRevisor` | varchar(100) | YES |  | `-` |  | - |
| `idTipoLicitacion` | int | YES |  | `-` |  | - |
| `tipoLicitacion` | varchar(100) | YES |  | `-` |  | - |
| `idClasificacion` | int | YES |  | `-` |  | - |
| `circulo` | varchar(1) | NO |  | `-` |  | - |
| `colorClasificacion` | varchar(100) | YES |  | `-` |  | - |
| `nombreClasificacion` | varchar(100) | YES |  | `-` |  | - |
| `idIndustria` | int | YES |  | `-` |  | - |
| `industria` | varchar(100) | YES |  | `-` |  | - |
| `rubro` | varchar(100) | YES |  | `-` |  | - |
| `idEstadoGlobal` | int | YES |  | `-` |  | - |
| `estadoGlobal` | varchar(100) | YES |  | `-` |  | - |
| `iconoEstadoGlobal` | varchar(45) | YES |  | `-` |  | - |
| `colorEstadoGlobal` | varchar(10) | YES |  | `-` |  | - |
| `idEstadoEvaluacion` | int | YES |  | `-` |  | - |
| `estadoEvaluacion` | varchar(100) | YES |  | `-` |  | - |
| `idAdjudicacion` | int | YES |  | `-` |  | - |
| `tipoAdjudicacion` | varchar(100) | YES |  | `-` |  | - |
| `titulo` | text | YES |  | `-` |  | - |
| `descripcion` | text | YES |  | `-` |  | - |
| `demandante` | varchar(2000) | YES |  | `-` |  | - |
| `fechaPublicacion` | varchar(10) | YES |  | `-` |  | - |
| `fechaCierre` | varchar(24) | YES |  | `-` |  | - |
| `presupuesto` | bigint | YES |  | `-` |  | - |
| `cantidadLineas` | bigint | YES |  | `-` |  | - |
| `clasificacionPresupuesto` | varchar(100) | YES |  | `-` |  | - |
| `duracionPlazo` | varchar(100) | NO |  | `-` |  | - |
| `cantidadSKU` | int | YES |  | `-` |  | - |
| `comentarioAsignacion` | text | YES |  | `-` |  | - |
| `presupuestoRespMP` | int | YES |  | `-` |  | - |
| `respuestaMP` | varchar(1000) | YES |  | `-` |  | - |
| `presupuestoRespOCR` | bigint | YES |  | `-` |  | - |
| `respuestaOCR` | varchar(5000) | YES |  | `-` |  | - |
| `tipoPresupuesto` | varchar(4) | YES |  | `-` |  | - |
| `fechaAdjudicacion` | varchar(10) | YES |  | `-` |  | - |
| `colorFechaAdjudicacion` | varchar(7) | YES |  | `-` |  | - |
| `idEstadoRevision` | int | YES |  | `-` |  | - |
| `estadoRevision` | varchar(50) | YES |  | `-` |  | - |
| `cantidadProductos` | int | YES |  | `-` |  | - |
| `productosRegistrados` | int | YES |  | `-` |  | - |
| `costoNeto` | int | YES |  | `-` |  | - |
| `utilidadGlobal` | int | YES |  | `-` |  | - |
| `ventaNeta` | int | YES |  | `-` |  | - |
| `iva` | int | YES |  | `-` |  | - |
| `ventaTotal` | int | YES |  | `-` |  | - |
| `porcentajeVentaTotal` | decimal(5,2) | YES |  | `-` |  | - |
| `presupuestoDisponible` | int | YES |  | `-` |  | - |
| `garantiaSeriedad` | int | YES |  | `-` |  | - |
| `fechaMuestra` | datetime | YES |  | `-` |  | - |
| `comentarioMuestra` | varchar(100) | YES |  | `-` |  | - |
| `idTipoMulta` | int | YES |  | `-` |  | - |
| `tipoMulta` | varchar(50) | YES |  | `-` |  | - |
| `multaPorDia` | decimal(15,2) | YES |  | `-` |  | - |
| `idCriterioDiferenciador` | int | YES |  | `-` |  | - |
| `criterioDiferenciador` | varchar(50) | YES |  | `-` |  | - |
| `idTipoPlazoEntrega` | int | YES |  | `-` |  | - |
| `tipoPlazoEntrega` | varchar(45) | YES |  | `-` |  | - |
| `plazoEntrega` | int | YES |  | `-` |  | - |
| `idTransporte` | int | YES |  | `-` |  | - |
| `transporte` | varchar(50) | YES |  | `-` |  | - |
| `despachoGlobal` | int | YES |  | `-` |  | - |
| `margenGlobal` | decimal(5,2) | YES |  | `-` |  | - |
| `posibleEliminacion` | int | YES |  | `-` |  | 1 = Si | 
0 = No |
| `comentarioAnalisis` | varchar(4000) | YES |  | `-` |  | - |
| `adjudicado` | int | NO |  | `0` |  | - |
| `idSociedad` | int | YES |  | `-` |  | - |
| `nombreSociedad` | text | YES |  | `-` |  | - |
| `codigoPadre` | varchar(100) | YES |  | `-` |  | - |
| `productosPadre` | int | YES |  | `-` |  | - |
| `productosRegistradosPadre` | int | YES |  | `-` |  | - |
| `costoNetoPadre` | int | YES |  | `-` |  | - |
| `utilidadGlobalPadre` | int | YES |  | `-` |  | - |
| `ventaNetaPadre` | int | YES |  | `-` |  | - |
| `ivaPadre` | int | YES |  | `-` |  | - |
| `ventaTotalPadre` | int | YES |  | `-` |  | - |
| `porcentajeVentaPadre` | decimal(5,2) | YES |  | `-` |  | - |
| `presupuestoPadre` | bigint | YES |  | `-` |  | - |
| `despachoGlobalPadre` | int | YES |  | `-` |  | - |
| `margenGlobalPadre` | decimal(5,2) | YES |  | `-` |  | - |
| `requiereGFC` | int | YES |  | `0` |  | - |
| `requiereContrato` | int | YES |  | `0` |  | - |
| `motivo` | varchar(1000) | YES |  | `-` |  | - |
| `idMotivo` | int | YES |  | `-` |  | - |
| `estadoOperacion` | varchar(100) | YES |  | `-` |  | - |
| `ventaTotalGeneral` | int | YES |  | `-` |  | - |
| `costoReal` | decimal(32,0) | NO |  | `0` |  | - |
| `ganable` | bigint | NO |  | `0` |  | - |
| `clienteComplejo` | int | NO |  | `0` |  | - |
| `clienteMoroso` | int | NO |  | `0` |  | - |
| `clienteLiquidezBaja` | int | NO |  | `0` |  | - |
| `etiquetaOCR` | text | YES |  | `-` |  | - |
| `proyectoSimilar` | varchar(100) | YES |  | `-` |  | - |
| `fechaFinal` | varchar(24) | YES |  | `-` |  | - |
| `acta` | text | YES |  | `-` |  | - |

## Notas


---

[← Volver al índice de tablas](../tables.md)
