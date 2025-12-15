# ocPackagePallet

> **Tipo:** Tabla

## Descripción

Órdenes de compra

## Estadísticas

- **Filas aproximadas:** 27
- **Columnas:** 3

## Columnas

| Columna | Tipo | Nulo | Key | Default | Extra | Descripción |
|---------|------|------|-----|---------|-------|-------------|
| `idOcPackagePallet` | int | NO | 🔑 PK | `-` | auto_increment | - |
| `ocPackagePalletCode` | text | NO |  | `-` |  | - |
| `ocPackagePalletDateCreation` | datetime | YES |  | `CURRENT_TIMESTAMP` | DEFAULT_GENERATED | - |

### Clave Primaria

- `idOcPackagePallet`

## Tablas que referencian a esta

| Tabla | Columna | Constraint |
|-------|---------|------------|
| [ocPackage](ocPackage.md) | `idOcPackagePallet` | ocPackage_idOCPackagePallet_ocPackagePallet_idOcPackagePallet |

## Índices

| Nombre | Tipo | Columnas |
|--------|------|----------|

## Notas

- **Auto-increment:** `idOcPackagePallet`
- **Columnas de tiempo:** `ocPackagePalletDateCreation`

---

[← Volver al índice de tablas](../tables.md)
