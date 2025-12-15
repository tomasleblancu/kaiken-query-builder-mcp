# client

> **Tipo:** Tabla

## Descripción

Gestión de clientes

## Estadísticas

- **Filas aproximadas:** 89,311
- **Columnas:** 19

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idClient` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `rbd` | varchar(500) | YES | ✨ UNIQUE | `-` |  | - |
| `nameClient` | varchar(500) | YES |  | `-` |  | - |
| `nameResponsible` | varchar(500) | YES |  | `-` |  | - |
| `mail` | varchar(100) | YES |  | `-` |  | - |
| `phone` | varchar(50) | YES |  | `-` |  | - |
| `status` | int | YES |  | `1` |  | Activo: 1
Inactivo: 0 |
| `comment` | varchar(500) | YES |  | `-` |  | - |
| `idCommune` | int | YES | 🔗 FK | `-` |  | - |
| `city` | varchar(500) | YES |  | `-` |  | - |
| `address` | varchar(500) | YES |  | `-` |  | - |
| `dateUpdate` | datetime | YES |  | `-` |  | - |
| `rut` | varchar(255) | YES |  | `-` |  | - |
| `plaintiff` | varchar(400) | YES |  | `-` |  | - |
| `type` | varchar(255) | YES |  | `-` |  | "organismo demandador" 1  - "organismos dependiente" 0 |
| `blocked` | int | YES |  | `-` |  | Bloqueado: 0 - Operativo: 1 |
| `budget` | int | YES |  | `-` |  | - |
| `costCenter` | varchar(400) | YES |  | `-` |  | - |
| `idClientProgram` | int | YES |  | `-` |  | - |

### Clave Primaria

- `idClient`

## Relaciones (Foreign Keys)

| Columna | Tabla Referenciada | Columna Referenciada | Constraint |
|---------|-------------------|---------------------|------------|
| `idCommune` | [communes](communes.md) | `idCommune` | fk_idcommune |

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [banking_movimiento](banking_movimiento.md) | `cliente_id` | banking_movimiento_cliente_id_5de93f5d_fk_client_idClient |
| [clientApplicant](clientApplicant.md) | `idClient` | fk_client2 |
| [clientAuthorizer](clientAuthorizer.md) | `idClient` | fk_client3 |
| [contacto](contacto.md) | `idClient` | contacto_idClient_690ad7d6_fk_client_idClient |
| [deliveryNoteHead](deliveryNoteHead.md) | `idClient` | idClient |
| [documents_document](documents_document.md) | `client_id` | documents_document_client_id_897ec5e1_fk_client_idClient |
| [invoiceHead](invoiceHead.md) | `idClient` | idClientInvoice |
| [licitacion_client](licitacion_client.md) | `idClient` | fkLicitacion_client_client |
| [selectedTenderOrderRequest](selectedTenderOrderRequest.md) | `idClient` | fk_client |
| [selectedTenderOrder_client](selectedTenderOrder_client.md) | `idClient` | fkClient_selectedTenderOrder_client |
| [selectedTenders_client](selectedTenders_client.md) | `idClient` | selectedTenders_client_client |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|
| fk_idcommune | INDEX | `idCommune` |
| idx_rbd | UNIQUE | `rbd` |

## Notas

- **Auto-increment:** `idClient`
- **Columnas de tiempo:** `dateUpdate`

---

[← Volver al índice de tablas](../tables.md)
