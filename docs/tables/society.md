# society

> **Tipo:** Tabla

## Descripción

Órdenes de compra

## Estadísticas

- **Filas aproximadas:** 6
- **Columnas:** 19

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idSociety` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `rut` | varchar(100) | YES |  | `-` |  | - |
| `nameSociety` | varchar(4000) | YES |  | `-` |  | - |
| `address` | varchar(500) | YES |  | `-` |  | - |
| `bsaleToken` | varchar(45) | YES |  | `-` |  | - |
| `notaBase` | varchar(45) | YES |  | `-` |  | - |
| `ocAceptadas` | varchar(45) | YES |  | `-` |  | - |
| `sanciones` | varchar(45) | YES |  | `-` |  | - |
| `notaEvaluacion` | varchar(45) | YES |  | `-` |  | - |
| `contratosRecibidos` | varchar(45) | YES |  | `-` |  | - |
| `contratosEvaluados` | varchar(45) | YES |  | `-` |  | - |
| `dateUpdate` | datetime | YES |  | `CURRENT_TIMESTAMP` | DEFAULT_GENERATED | - |
| `idRbd` | int | YES |  | `-` |  | - |
| `idOc` | int | YES |  | `-` |  | - |
| `idEstablecimiento` | int | YES |  | `-` |  | - |
| `idProyecto` | int | YES |  | `-` |  | - |
| `cpnBsale` | int | YES |  | `-` |  | - |
| `idRbdFactura` | int | YES |  | `-` |  | - |
| `idNota` | int | YES |  | `-` |  | - |

### Clave Primaria

- `idSociety`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [banking_cuenta](banking_cuenta.md) | `rut_sociedad_id` | banking_cuenta_rut_sociedad_id_b484eee9_fk_society_idSociety |
| [banking_tarjetacredito](banking_tarjetacredito.md) | `rut_sociedad_id` | banking_tarjetacredi_rut_sociedad_id_992b6a70_fk_society_i |
| [deliveryNoteCedible](deliveryNoteCedible.md) | `idSociety` | FK_deliveryNoteCedible_society |
| [deliveryNoteHead](deliveryNoteHead.md) | `idSociety` | fk_deliveryNoteHead_society |
| [invoiceHead](invoiceHead.md) | `idSociety` | idSociety |
| [selectedTenders](selectedTenders.md) | `idSociety` | FK idSociety |
| [selectedTendersBak](selectedTendersBak.md) | `idSociety` | selectedTendersBak_ibfk_10 |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|

## Notas

- **Auto-increment:** `idSociety`
- **Columnas de tiempo:** `dateUpdate`

---

[← Volver al índice de tablas](../tables.md)
