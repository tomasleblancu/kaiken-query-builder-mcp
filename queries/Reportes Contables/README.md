# Reportes Contables

Esta carpeta contiene queries SQL para generar reportes contables y financieros del sistema KAIKEN_APP.

## Queries Disponibles

1. **01_proyectos_licitaciones.sql** - Listado de proyectos y licitaciones con información financiera
2. **02_documentos_pago_ordenes_compra.sql** - Documentos de pago asociados a órdenes de compra con información de proveedores y métodos de pago (últimos 6 meses)
3. **03_facturas_compra_completo.sql** - Base de facturas de compra, notas de crédito y notas de débito con información tributaria y de conciliación (últimos 12 meses)
4. **04_facturas_venta_completo.sql** - Base de facturas de venta, notas de crédito y notas de débito con información de clientes y proyectos (últimos 12 meses)
5. **05_movimientos_bancarios_consolidado.sql** - Movimientos de cuentas bancarias con información de conciliación y saldos (últimos 6 meses)
6. **06_ordenes_compra_con_conciliacion.sql** - Órdenes de compra con información de conciliación de facturas, estados y análisis (últimos 12 meses)

## Cómo Ejecutar

```bash
# Activar entorno virtual
source venv/bin/activate

# Ejecutar una query específica
python run_query.py --file "queries/Reportes Contables/01_proyectos_licitaciones.sql"

# Obtener resultado en JSON
python run_query.py --file "queries/Reportes Contables/01_proyectos_licitaciones.sql" --json
```

## Convenciones

- Las queries están numeradas para mantener un orden lógico
- Todas las queries son de solo lectura (SELECT, SHOW, DESCRIBE)
- Los nombres de columnas usan alias descriptivos en español
