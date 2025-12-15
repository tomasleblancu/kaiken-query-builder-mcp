# provider

> **Tipo:** Tabla

## Descripción

Gestión de proveedores

## Estadísticas

- **Filas aproximadas:** 2,500
- **Columnas:** 25

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idProvider` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `rut` | varchar(45) | YES |  | `-` |  | - |
| `Nombre` | varchar(100) | YES |  | `-` |  | - |
| `cuenta` | varchar(255) | YES |  | `-` |  | - |
| `codigoBanco` | varchar(255) | YES |  | `-` |  | - |
| `mail` | text | YES |  | `-` |  | - |
| `tipoCuenta` | varchar(255) | YES |  | `-` |  | - |
| `rutBase` | varchar(255) | YES | 🔗 FK | `-` |  | - |
| `fechaIngreso` | datetime | YES |  | `-` |  | - |
| `fechaModificacion` | datetime | YES |  | `-` |  | - |
| `rubro` | varchar(255) | YES |  | `-` |  | - |
| `tipo` | varchar(255) | YES |  | `-` |  | - |
| `nombreContacto` | varchar(255) | YES |  | `-` |  | - |
| `telefonoContacto` | varchar(100) | YES |  | `-` |  | - |
| `condicionPago` | varchar(100) | YES |  | `-` |  | - |
| `moneda` | varchar(100) | YES |  | `-` |  | - |
| `banco` | varchar(100) | YES |  | `-` |  | - |
| `lineaCredito` | int | YES |  | `-` |  | - |
| `evaluacion` | int | YES |  | `-` |  | - |
| `observacion` | text | YES |  | `-` |  | - |
| `isActive` | tinyint(1) | YES |  | `-` |  | - |
| `idSupplier` | int | NO |  | `0` |  | - |
| `nombreBanco` | varchar(1000) | YES |  | `-` |  | - |
| `blocked` | int | YES |  | `1` |  | Bloqueado: 0 - Operativo: 1 |
| `factoring` | int | YES |  | `-` |  | - |

### Clave Primaria

- `idProvider`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [contacto](contacto.md) | `idProvider` | contacto_idProvider_ee97b670_fk_provider_idProvider |
| [documents_document](documents_document.md) | `provider_id` | documents_document_provider_id_bd69faea_fk_provider_idProvider |
| [internalTransfersProvider](internalTransfersProvider.md) | `idProvider` | idProvider |
| [ocDetail](ocDetail.md) | `ocProvider` | fk_ocDetail_ocProvider |
| [ocDetailDefaultProduct](ocDetailDefaultProduct.md) | `ocProvider` | FK_ocDetailDefaultProduct_provider |
| [ocDetailDraftProvider](ocDetailDraftProvider.md) | `idProvider` | FK_ocDetailDraftProvider_idProvider |
| [ocHeader](ocHeader.md) | `provider` | fk_ocHeader_provider |
| [ocPaymentDocument](ocPaymentDocument.md) | `idProvider` | ocPaymentDocument_ibfk_4 |
| [ocPaymentDocumentPayDate](ocPaymentDocumentPayDate.md) | `idProvider` | ocPaymentDocumentPayDate_ibfk_3 |
| [product_supplier](product_supplier.md) | `idSupplier` | fk_product_supplier_provider |
| [selectedTenderProduct](selectedTenderProduct.md) | `idProvider` | FK idProvider |
| [supplier_address](supplier_address.md) | `idSupplier` | fk_supplier_address_provider |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| idProvider | INDEX | `idProvider` |
| rutBase | INDEX | `rutBase` |

## Notas

- **Auto-increment:** `idProvider`

---

[← Volver al índice de tablas](../tables.md)
