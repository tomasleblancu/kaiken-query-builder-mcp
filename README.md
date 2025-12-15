# 📊 Query Builder - KAIKEN_APP

**Consulta la base de datos de KAIKEN usando lenguaje natural con Claude**

---

## 📖 ¿Qué es esto?

Query Builder te permite hacer preguntas sobre la base de datos de KAIKEN en lenguaje natural, y Claude ejecuta las consultas SQL automáticamente.

**Ejemplo:**
- Tú: *"Muéstrame 10 clientes"*
- Claude: Ejecuta `SELECT * FROM client LIMIT 10` y te muestra los resultados

**No necesitas saber SQL** - Claude se encarga de todo.

---

## 🎯 Instalación Rápida (5 minutos)

### Requisitos Previos

Antes de empezar, necesitas tener instalado:

#### 1. **Python 3.10 o superior**

Verifica si lo tienes:
```bash
python3 --version
```

Si no lo tienes, descárgalo desde [python.org](https://www.python.org/downloads/)

#### 2. **uv (gestor de paquetes Python)**

Instálalo con:
```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```

O si usas macOS con Homebrew:
```bash
brew install uv
```

Verifica la instalación:
```bash
uv --version
```

#### 3. **Claude Code**

Instálalo desde la extensión de VSCode:
1. Abre VSCode
2. Ve a Extensiones (⌘+Shift+X en Mac, Ctrl+Shift+X en Windows)
3. Busca "Claude Code"
4. Instala la extensión oficial de Anthropic

---

## 🚀 Configuración Paso a Paso

### Paso 1: Instalar Dependencias del Proyecto

Abre una terminal en la carpeta del proyecto y ejecuta:

```bash
cd mcp
uv sync
```

✅ **Verificación:** Deberías ver un mensaje como `Resolved X packages in Xms`

---

### Paso 2: Configurar tu Token de API

#### 2.1 Crea tu archivo de configuración

```bash
# Regresa a la carpeta raíz del proyecto
cd ..

# Copia el archivo de ejemplo
cp .env.example .env
```

#### 2.2 Obtén tu token de API

1. Ve a [https://lab.kaiken.ai/admin](https://lab.kaiken.ai/admin)
2. Inicia sesión con tu cuenta de Kaiken
3. Ve a tu perfil o configuración de API
4. Copia tu token de autenticación

#### 2.3 Configura el token

Abre el archivo `.env` con tu editor favorito:

```bash
nano .env
```

Cambia esta línea:
```
DJANGO_API_TOKEN=tu-token-aqui
```

Por tu token real:
```
DJANGO_API_TOKEN=eyJ0eXAiOiJKV1QiLCJhbGc...
```

Guarda el archivo (Ctrl+O, Enter, Ctrl+X en nano)

✅ **Verificación:** Tu archivo `.env` debe tener tu token real

---

### Paso 3: Iniciar Claude Code

#### 3.1 Abre el proyecto en VSCode

```bash
# Abre VSCode en la carpeta del proyecto
code .
```

#### 3.2 Activa Claude Code

1. Presiona `Cmd+Shift+P` (Mac) o `Ctrl+Shift+P` (Windows)
2. Escribe "Claude Code"
3. Selecciona "Claude Code: Start Chat"

O simplemente haz clic en el ícono de Claude en la barra lateral de VSCode.

✅ **Verificación:** Deberías ver la interfaz de chat de Claude

---

### Paso 4: Verificar que Todo Funciona

Escribe esto en el chat de Claude:

```
Ejecuta esta query: SELECT DATABASE();
```

Si ves un resultado como `KAIKEN_APP`, **¡todo está funcionando correctamente!** 🎉

---

## 💬 Cómo Usar

### Ejemplos Básicos

Una vez configurado, simplemente habla con Claude en lenguaje natural:

#### Ver datos de tablas

```
Tú: "Muéstrame 10 clientes"
```
Claude ejecuta: `SELECT * FROM client LIMIT 10`

```
Tú: "¿Cuántos proyectos hay en total?"
```
Claude ejecuta: `SELECT COUNT(*) FROM Proyecto`

```
Tú: "Lista los últimos 5 proyectos creados"
```
Claude ejecuta: `SELECT * FROM Proyecto ORDER BY fechaInicio DESC LIMIT 5`

#### Explorar la base de datos

```
Tú: "¿Qué tablas hay disponibles?"
```
Claude ejecuta: `SHOW TABLES`

```
Tú: "Describe la estructura de la tabla client"
```
Claude ejecuta: `DESCRIBE client`

```
Tú: "¿Cómo se relacionan las tablas project y invoice?"
```
Claude usa la herramienta de exploración de esquema

#### Reportes predefinidos

```
Tú: "Lista los reportes contables disponibles"
```
Claude muestra los 6 reportes

```
Tú: "Ejecuta el reporte de facturas de venta"
```
Claude ejecuta: `queries/Reportes Contables/04_facturas_venta_completo.sql`

---

## 📋 Reportes Contables Listos para Usar

En la carpeta `queries/Reportes Contables/` hay 6 reportes predefinidos:

| # | Archivo | Qué incluye |
|---|---------|-------------|
| **01** | `proyectos_licitaciones.sql` | Proyectos Kaiken Lab con información financiera |
| **02** | `documentos_pago_ordenes_compra.sql` | Pagos de órdenes de compra (últimos 6 meses) |
| **03** | `facturas_compra_completo.sql` | Facturas de compra con conciliación (12 meses) |
| **04** | `facturas_venta_completo.sql` | Facturas de venta con clientes y proyectos (12 meses) |
| **05** | `movimientos_bancarios_consolidado.sql` | Movimientos bancarios con conciliación (6 meses) |
| **06** | `ordenes_compra_con_conciliacion.sql` | Órdenes de compra con análisis (12 meses) |

**Para ejecutarlos:** Simplemente pídele a Claude que ejecute el reporte por nombre o número.

---

## 📂 Crear tus Propias Queries

### Opción 1: Pedir a Claude que cree la query

```
Tú: "Crea una query que muestre los proyectos activos con su monto total facturado"
```

Claude escribirá la query y la ejecutará automáticamente.

### Opción 2: Guardar queries para reutilizar

1. Crea un archivo `.sql` en la carpeta `queries/`
2. Escribe tu query con un comentario descriptivo:

```sql
-- mi_reporte.sql
-- Descripción: Proyectos activos con monto total facturado

SELECT
    p.nameProyecto,
    COUNT(i.idInvoice) AS total_facturas,
    IFNULL(SUM(i.totalAmount), 0) AS monto_total
FROM project p
LEFT JOIN invoice i ON p.idProject = i.idProject
WHERE p.status = 1
GROUP BY p.idProject
ORDER BY monto_total DESC;
```

3. Pídele a Claude que lo ejecute:
```
Tú: "Ejecuta mi_reporte.sql"
```

---

## ⚠️ Reglas Importantes

### ✅ SÍ Puedes:
- Leer datos con `SELECT`
- Ver estructura con `SHOW`, `DESCRIBE`, `EXPLAIN`
- Crear archivos `.sql` en `queries/`
- Hacer todas las preguntas que quieras

### ❌ NO Puedes:
- Modificar datos: `INSERT`, `UPDATE`, `DELETE`
- Cambiar estructura: `DROP`, `ALTER`, `CREATE`
- Ninguna operación que modifique la base de datos

**¿Por qué?** Esta herramienta es solo para **consultar** datos. Cualquier cambio debe hacerse desde la aplicación principal de KAIKEN para mantener la integridad de los datos.

Claude rechazará automáticamente cualquier query que intente modificar datos.

---

## 🔍 Explorar las Tablas

### Ver documentación de tablas

La base de datos tiene **275 tablas**. Cada tabla está documentada en [`docs/tables/`](docs/tables/)

**Tablas principales:**
- `client` - Clientes
- `project` - Proyectos
- `invoice` - Facturas
- `shop_orders` - Órdenes de la tienda
- `oc_ordenes_compra` - Órdenes de compra
- Y [272 más...](docs/tables.md)

**Ver documentación completa:** [`docs/tables.md`](docs/tables.md)

---

## 🛠️ Solución de Problemas

### ❌ Claude dice "No puedo ejecutar queries"

**Causa:** El servidor MCP no está iniciado o no está configurado.

**Solución:**
1. Verifica que el archivo `.env` existe y tiene tu token
2. Cierra y vuelve a abrir VSCode
3. Verifica que `.mcp.json` existe en la raíz del proyecto

---

### ❌ Error 401 (No autorizado)

**Causa:** Token de API inválido o vacío.

**Solución:**
```bash
# Verifica tu archivo .env
cat .env
```

Tu token debe verse así:
```
DJANGO_API_TOKEN=eyJ0eXAiOiJKV1QiLCJhbGc...
```

Si está vacío o dice `tu-token-aqui`, regresa al Paso 2.

---

### ❌ Error 404 (No encontrado)

**Causa:** La URL del backend es incorrecta.

**Solución:** Por defecto usa `https://lab.kaiken.ai/api/mcp`

Si necesitas cambiarla, agrega esta línea en `.env`:
```
DJANGO_API_URL=https://tu-url-personalizada.com/api/mcp
```

---

### ❌ Queries muy lentas

**Causa:** Consulta compleja o tabla muy grande.

**Solución:**
- Agrega `LIMIT` a tus queries: `SELECT * FROM tabla LIMIT 100`
- Pregúntale a Claude: *"Optimiza esta query para que sea más rápida"*

---

### ❌ "No such table"

**Causa:** El nombre de la tabla está mal escrito o no existe.

**Solución:**
```
Tú: "¿Qué tablas hay disponibles?"
```
Verifica el nombre correcto en la lista.

---

## 🏗️ Cómo Funciona (Técnico)

```
┌─────────────────┐
│   Tú (Usuario)  │
└────────┬────────┘
         │
         │ "Muéstrame 10 clientes"
         ▼
┌─────────────────┐
│  Claude Code    │  ← Interpreta tu pregunta
└────────┬────────┘
         │
         │ SELECT * FROM client LIMIT 10
         ▼
┌─────────────────┐
│  MCP Server     │  ← Servidor local (mcp/mcp_server.py)
│  (Python)       │
└────────┬────────┘
         │
         │ HTTP POST con token Bearer
         ▼
┌─────────────────┐
│ Django Backend  │  ← Valida y ejecuta la query
│ (lab.kaiken.ai) │
└────────┬────────┘
         │
         │ SQL Query
         ▼
┌─────────────────┐
│ MySQL Database  │  ← Base de datos KAIKEN_APP
│  (275 tablas)   │
└────────┬────────┘
         │
         │ Resultados
         ▼
┌─────────────────┐
│  Tú (Usuario)   │  ← Claude te muestra los resultados
└─────────────────┘
```

**Seguridad:**
- ✅ Sin acceso directo a MySQL
- ✅ Autenticación con token Bearer
- ✅ Solo queries de lectura permitidas
- ✅ Validación en múltiples capas

---

## 📚 Estructura del Proyecto

```
Query-builder/
│
├── 📄 README.md                    ← Esta guía
├── 📄 .env                         ← Tu token (NO subir a git)
├── 📄 .env.example                 ← Plantilla
├── 📄 .mcp.json                    ← Config del servidor MCP
│
├── 📂 mcp/                         ← Código del servidor MCP
│   ├── mcp_server.py               ← Servidor principal
│   ├── pyproject.toml              ← Dependencias
│   └── uv.lock                     ← Versiones bloqueadas
│
├── 📂 queries/                     ← Tus queries SQL
│   └── 📂 Reportes Contables/      ← 6 reportes predefinidos
│       ├── 01_proyectos_licitaciones.sql
│       ├── 02_documentos_pago_ordenes_compra.sql
│       ├── 03_facturas_compra_completo.sql
│       ├── 04_facturas_venta_completo.sql
│       ├── 05_movimientos_bancarios_consolidado.sql
│       └── 06_ordenes_compra_con_conciliacion.sql
│
├── 📂 docs/                        ← Documentación
│   ├── tables.md                   ← Índice de 275 tablas
│   └── tables/                     ← Doc de cada tabla
│
└── 📂 .claude/                     ← Config de Claude
    └── rules/                      ← Reglas de comportamiento
```

---

## 🎓 Casos de Uso Reales

### 1. Análisis Financiero
```
Tú: "Muéstrame el total facturado por proyecto en los últimos 6 meses"
```

### 2. Gestión de Clientes
```
Tú: "¿Qué clientes no han hecho pedidos en los últimos 90 días?"
```

### 3. Control de Inventario
```
Tú: "Lista los productos con stock bajo (menos de 10 unidades)"
```

### 4. Reportes Ejecutivos
```
Tú: "Ejecuta el reporte de movimientos bancarios consolidado"
```

### 5. Exploración de Datos
```
Tú: "¿Cuántos usuarios hay registrados en el sistema?"
```

---

## 🔒 Seguridad y Privacidad

### ✅ Tu Token Está Protegido
- El archivo `.env` **NO** se sube a GitHub (está en `.gitignore`)
- Solo tú tienes acceso a tu token

### ⚠️ Nunca Compartas:
- Tu archivo `.env`
- Tu token de API
- Capturas de pantalla que muestren tu token

### 🛡️ Permisos
Este sistema tiene permisos de **solo lectura**:
- ✅ Puede leer datos
- ❌ No puede modificar datos
- ❌ No puede eliminar datos
- ❌ No puede crear tablas

---

## 💡 Tips y Mejores Prácticas

### 1. Sé Específico
❌ "Dame datos de clientes"
✅ "Muéstrame los 10 clientes más recientes con su nombre, email y fecha de registro"

### 2. Usa LIMIT
❌ `SELECT * FROM client`
✅ `SELECT * FROM client LIMIT 100`

### 3. Pregunta Primero
Si no conoces la estructura:
```
Tú: "¿Qué columnas tiene la tabla client?"
```

### 4. Guarda Queries Útiles
Si usas una query frecuentemente, guárdala en `queries/` para reutilizarla.

### 5. Explora Incrementalmente
```
1. "¿Qué tablas están relacionadas con proyectos?"
2. "Describe la tabla project"
3. "Muéstrame un ejemplo de datos de project"
4. "Ahora dame los proyectos activos con sus facturas"
```

---

## 📞 Soporte

### ¿Necesitas Ayuda?

1. **Primero:** Revisa la sección [Solución de Problemas](#️-solución-de-problemas)
2. **Segundo:** Pregúntale a Claude: *"¿Por qué no funciona esto?"*
3. **Tercero:** Consulta la [documentación de tablas](docs/tables.md)
4. **Último:** Contacta al equipo técnico de Kaiken

### Recursos Adicionales

- **[Documentación de tablas](docs/tables.md)** - Todas las tablas documentadas
- **[Reportes contables](queries/Reportes%20Contables/)** - Queries predefinidas
- **[CLAUDE.md](CLAUDE.md)** - Guía técnica para desarrolladores

---

## 🎉 ¡Listo!

Ya puedes empezar a consultar la base de datos de KAIKEN con lenguaje natural.

**Primeros pasos sugeridos:**

1. Explora las tablas disponibles:
   ```
   "¿Qué tablas hay disponibles?"
   ```

2. Ve un ejemplo de datos:
   ```
   "Muéstrame 5 registros de la tabla client"
   ```

3. Ejecuta un reporte predefinido:
   ```
   "Ejecuta el reporte de proyectos y licitaciones"
   ```

**¡Disfruta consultando datos con Claude!** 🚀

---

*Última actualización: 2025-12-15*
*Proyecto interno Kaiken*
