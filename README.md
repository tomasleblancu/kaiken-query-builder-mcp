# 📊 Query Builder - KAIKEN_APP

**Consulta la base de datos de KAIKEN usando lenguaje natural con Claude**

---

## 📖 ¿Qué es esto?

Query Builder te permite hacer preguntas sobre la base de datos de KAIKEN en lenguaje natural. **Claude crea las consultas SQL, las ejecuta a modo de prueba, y te presenta los resultados** para que hagas lo que necesites con ellos (copiar, analizar, exportar, etc.).

**Ejemplo:**
- Tú: *"Muéstrame 10 clientes"*
- Claude:
  1. Crea la query: `SELECT * FROM client LIMIT 10`
  2. La ejecuta contra la base de datos
  3. Te muestra los resultados en un formato fácil de leer
  4. Tú decides qué hacer con esos datos

**No necesitas saber SQL** - Claude se encarga de escribir y ejecutar las consultas por ti.

---

## 🎯 Instalación

> **⚠️ ¿Primera vez usando terminal?** No te preocupes, te guiaremos paso a paso.

Elige tu método de instalación:

- **[⚡ Instalación Rápida (5 minutos)](#-instalación-rápida-con-comandos)** - Todo con comandos (recomendado)
- **[📋 Instalación Paso a Paso (15 minutos)](#-instalación-paso-a-paso)** - Explicación detallada de cada paso

---

## ⚡ Instalación Rápida (con comandos)

**La forma más rápida de instalar todo lo necesario.**

### 🍎 En Mac

Abre el Terminal ([¿Cómo?](#11-abrir-el-terminal)) y ejecuta estos comandos:

```bash
# 1. Instalar Homebrew (si no lo tienes)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# 2. Instalar Git, Python, uv y VSCode de una vez
brew install git python@3.11 uv visual-studio-code

# 3. Crear carpeta dev y clonar el repositorio
cd ~ && mkdir -p dev && cd dev
git clone git@github.com:tomasleblancu/kaiken-query-builder-mcp.git
cd kaiken-query-builder-mcp

# 4. Instalar dependencias del proyecto
cd mcp && uv sync && cd ..

# 5. Crear archivo de configuración
cp .env.example .env

# 6. Abrir VSCode
code .
```

**Ahora:**
1. Instala la extensión "Claude Code" en VSCode (`⌘+Shift+X`, busca "Claude Code")
2. Edita el archivo `.env` y pega tu token de API ([¿Cómo obtenerlo?](#322-obtener-tu-token-de-api))
3. [Verifica que funciona](#43-verificar-que-todo-funciona)

---

### 🪟 En Windows

Abre PowerShell **como Administrador** ([¿Cómo?](#11-abrir-el-terminal)) y ejecuta estos comandos:

```powershell
# 1. Verificar que Winget está instalado (viene con Windows 10/11)
winget --version

# Si no lo tienes, actualiza Windows o descárgalo desde Microsoft Store

# 2. Instalar Git, Python, uv y VSCode de una vez
winget install --id Git.Git -e
winget install --id Python.Python.3.11 -e
powershell -c "irm https://astral.sh/uv/install.ps1 | iex"
winget install --id Microsoft.VisualStudioCode -e

# 3. IMPORTANTE: Cerrar y volver a abrir PowerShell para que los comandos funcionen

# 4. Crear carpeta dev y clonar el repositorio
cd ~ ; mkdir dev ; cd dev
git clone git@github.com:tomasleblancu/kaiken-query-builder-mcp.git
cd kaiken-query-builder-mcp

# 5. Instalar dependencias del proyecto
cd mcp ; uv sync ; cd ..

# 6. Crear archivo de configuración
copy .env.example .env

# 7. Abrir VSCode
code .
```

**Ahora:**
1. Instala la extensión "Claude Code" en VSCode (`Ctrl+Shift+X`, busca "Claude Code")
2. Edita el archivo `.env` y pega tu token de API ([¿Cómo obtenerlo?](#322-obtener-tu-token-de-api))
3. [Verifica que funciona](#43-verificar-que-todo-funciona)

---

<details>
<summary><b>🪟 Alternativa: Usando Chocolatey en Windows</b></summary>

Si prefieres usar Chocolatey en lugar de Winget:

```powershell
# 1. Instalar Chocolatey (si no lo tienes)
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# 2. Instalar todo
choco install git python311 vscode -y
powershell -c "irm https://astral.sh/uv/install.ps1 | iex"

# 3. Cerrar y volver a abrir PowerShell

# 4-7. Seguir los pasos 4-7 de la instalación con Winget (arriba)
```

</details>

---

## 📋 Instalación Paso a Paso

**Si prefieres entender cada paso o si la instalación rápida no funcionó.**

### Paso 1: Preparar tu Computadora

### 1.1 Abrir el Terminal

<details>
<summary><b>🍎 Si tienes Mac</b></summary>

Hay 3 formas de abrir el Terminal:

**Opción A - Spotlight (más rápido):**
1. Presiona `⌘ + Espacio`
2. Escribe "terminal"
3. Presiona Enter

**Opción B - Launchpad:**
1. Abre Launchpad (icono del cohete en el Dock)
2. Busca "Terminal" en la carpeta "Otros"
3. Haz clic en Terminal

**Opción C - Finder:**
1. Abre Finder
2. Ve a: Aplicaciones → Utilidades → Terminal
3. Haz doble clic en Terminal

✅ **Verificación:** Se abre una ventana negra o blanca con texto.

</details>

<details>
<summary><b>🪟 Si tienes Windows</b></summary>

Hay 3 formas de abrir PowerShell:

**Opción A - Búsqueda (más rápido):**
1. Presiona la tecla `Windows` (⊞)
2. Escribe "powershell"
3. Haz clic en "Windows PowerShell"

**Opción B - Menú Inicio:**
1. Haz clic derecho en el botón de Inicio
2. Selecciona "Windows PowerShell" o "Terminal"

**Opción C - Ejecutar:**
1. Presiona `Windows + R`
2. Escribe "powershell"
3. Presiona Enter

✅ **Verificación:** Se abre una ventana azul con texto.

</details>

---

### 1.2 Instalar Git (si no lo tienes)

Git es necesario para descargar el código del proyecto. Vamos a verificar si ya lo tienes instalado.

<details>
<summary><b>🍎 En Mac</b></summary>

**Verificar si ya tienes Git:**
```bash
git --version
```

**✅ Si ves algo como "git version 2.x.x":** Ya lo tienes instalado, puedes saltar al siguiente paso.

**❌ Si dice "comando no encontrado":** Necesitas instalarlo.

**Para instalar Git:**

**Opción A - Xcode Command Line Tools (recomendado):**
```bash
xcode-select --install
```

Se abrirá una ventana emergente:
1. Haz clic en "Instalar"
2. Acepta los términos
3. Espera a que termine (puede tomar 5-10 minutos)
4. Cuando termine, verifica: `git --version`

**Opción B - Con Homebrew:**
```bash
brew install git
```

</details>

<details>
<summary><b>🪟 En Windows</b></summary>

**Verificar si ya tienes Git:**
```powershell
git --version
```

**✅ Si ves algo como "git version 2.x.x":** Ya lo tienes instalado, puedes saltar al siguiente paso.

**❌ Si dice "comando no encontrado":** Necesitas instalarlo.

**Para instalar Git:**

1. Ve a [git-scm.com/download/win](https://git-scm.com/download/win)
2. La descarga debería empezar automáticamente
3. Ejecuta el instalador descargado (`Git-2.x.x-64-bit.exe`)
4. En la instalación:
   - Haz clic en "Next" en todas las pantallas (las opciones por defecto están bien)
   - Asegúrate de que "Git from the command line and also from 3rd-party software" esté seleccionado
5. Haz clic en "Install"
6. Espera a que termine
7. **Importante:** Cierra PowerShell y ábrelo de nuevo
8. Verifica la instalación: `git --version`

</details>

✅ **Verificación:** El comando `git --version` debe mostrar una versión de Git instalada.

---

### 1.3 Crear una Carpeta para Proyectos

Vamos a crear una carpeta llamada "dev" donde guardaremos el proyecto.

<details>
<summary><b>🍎 En Mac</b></summary>

Copia y pega estos comandos en el Terminal (presiona Enter después de cada uno):

```bash
# Ir a tu carpeta de usuario
cd ~

# Crear carpeta "dev"
mkdir dev

# Entrar a la carpeta
cd dev
```

✅ **Verificación:** Escribe `pwd` y presiona Enter. Deberías ver algo como: `/Users/TuNombre/dev`

</details>

<details>
<summary><b>🪟 En Windows</b></summary>

Copia y pega estos comandos en PowerShell (presiona Enter después de cada uno):

```powershell
# Ir a tu carpeta de usuario
cd ~

# Crear carpeta "dev"
mkdir dev

# Entrar a la carpeta
cd dev
```

✅ **Verificación:** Escribe `pwd` y presiona Enter. Deberías ver algo como: `C:\Users\TuNombre\dev`

</details>

---

### 1.4 Clonar el Repositorio

Ahora vamos a descargar el código del proyecto desde GitHub.

<details>
<summary><b>🍎 En Mac</b></summary>

```bash
# Clonar el repositorio
git clone git@github.com:tomasleblancu/kaiken-query-builder-mcp.git

# Entrar a la carpeta del proyecto
cd kaiken-query-builder-mcp
```

</details>

<details>
<summary><b>🪟 En Windows</b></summary>

```powershell
# Clonar el repositorio
git clone git@github.com:tomasleblancu/kaiken-query-builder-mcp.git

# Entrar a la carpeta del proyecto
cd kaiken-query-builder-mcp
```

</details>

✅ **Verificación:** Escribe `ls` (Mac) o `dir` (Windows). Deberías ver carpetas como `mcp`, `docs`, `queries`.

---

## 📦 Paso 2: Instalar Requisitos

### 2.1 Instalar Python 3.10 o superior

<details>
<summary><b>🍎 En Mac</b></summary>

**Verificar si ya lo tienes:**
```bash
python3 --version
```

Si ves algo como "Python 3.10.x" o superior, **ya lo tienes instalado ✅**

**Si no lo tienes, instálalo:**

Con Homebrew (recomendado):
```bash
# Si no tienes Homebrew, instálalo primero:
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Luego instala Python:
brew install python@3.11
```

O descárgalo desde [python.org](https://www.python.org/downloads/)

</details>

<details>
<summary><b>🪟 En Windows</b></summary>

**Verificar si ya lo tienes:**
```powershell
python --version
```

Si ves algo como "Python 3.10.x" o superior, **ya lo tienes instalado ✅**

**Si no lo tienes:**
1. Ve a [python.org/downloads](https://www.python.org/downloads/)
2. Descarga "Python 3.11" (el botón amarillo grande)
3. Ejecuta el instalador
4. ⚠️ **MUY IMPORTANTE:** Marca la casilla "Add Python to PATH"
5. Haz clic en "Install Now"
6. Espera a que termine
7. Reinicia PowerShell

</details>

---

### 2.2 Instalar uv (gestor de paquetes)

<details>
<summary><b>🍎 En Mac</b></summary>

**Con Homebrew (recomendado):**
```bash
brew install uv
```

**Sin Homebrew:**
```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```

**Verificar instalación:**
```bash
uv --version
```

Deberías ver algo como "uv 0.x.x"

</details>

<details>
<summary><b>🪟 En Windows</b></summary>

```powershell
# Instalar uv
powershell -c "irm https://astral.sh/uv/install.ps1 | iex"
```

**Verificar instalación:**
```powershell
uv --version
```

Deberías ver algo como "uv 0.x.x"

⚠️ **Si dice "comando no encontrado":**
1. Cierra PowerShell
2. Ábrelo de nuevo (como administrador)
3. Intenta otra vez

</details>

---

### 2.3 Instalar Claude Code (VSCode)

1. **Instalar VSCode** (si no lo tienes):
   - Ve a [code.visualstudio.com](https://code.visualstudio.com/)
   - Descarga e instala VSCode para tu sistema

2. **Instalar la extensión Claude Code:**
   - Abre VSCode
   - Presiona `⌘+Shift+X` (Mac) o `Ctrl+Shift+X` (Windows)
   - Busca "Claude Code"
   - Haz clic en "Install" en la extensión de Anthropic
   - Espera a que se instale

✅ **Verificación:** Deberías ver un ícono de Claude en la barra lateral izquierda de VSCode

---

## 🚀 Paso 3: Configurar el Proyecto

### 3.1 Instalar Dependencias del Proyecto

<details>
<summary><b>🍎 En Mac</b></summary>

```bash
# Asegúrate de estar en la carpeta del proyecto
cd ~/dev/kaiken-query-builder-mcp

# Entrar a la carpeta mcp
cd mcp

# Instalar dependencias
uv sync
```

</details>

<details>
<summary><b>🪟 En Windows</b></summary>

```powershell
# Asegúrate de estar en la carpeta del proyecto
cd ~\dev\kaiken-query-builder-mcp

# Entrar a la carpeta mcp
cd mcp

# Instalar dependencias
uv sync
```

</details>

✅ **Verificación:** Deberías ver mensajes como:
```
Resolved X packages in Xms
Installed X packages in Xms
```

---

### 3.2 Configurar tu Token de API

#### 3.2.1 Crear el archivo de configuración

<details>
<summary><b>🍎 En Mac</b></summary>

```bash
# Regresar a la carpeta raíz del proyecto
cd ~/dev/kaiken-query-builder-mcp

# Copiar el archivo de ejemplo
cp .env.example .env
```

</details>

<details>
<summary><b>🪟 En Windows</b></summary>

```powershell
# Regresar a la carpeta raíz del proyecto
cd ~\dev\kaiken-query-builder-mcp

# Copiar el archivo de ejemplo
copy .env.example .env
```

</details>

✅ **Verificación:** Escribe `ls .env` (Mac) o `dir .env` (Windows). Deberías ver el archivo `.env` listado.

---

#### 3.2.2 Obtener tu Token de API

1. Abre tu navegador
2. Ve a [https://lab.kaiken.ai/admin](https://lab.kaiken.ai/admin)
3. Inicia sesión con tu cuenta de Kaiken
4. Ve a tu perfil o configuración de API
5. **Copia tu token de autenticación** (empieza con `eyJ...`)

⚠️ **Importante:** No cierres esta página todavía, necesitarás pegar el token en el siguiente paso.

---

#### 3.2.3 Editar el archivo .env con tu Token

<details>
<summary><b>🍎 En Mac</b></summary>

**Opción A - Con nano (más fácil):**
```bash
nano .env
```

1. Busca la línea que dice: `DJANGO_API_TOKEN=tu-token-aqui`
2. Borra `tu-token-aqui`
3. Pega tu token real (el que copiaste)
4. Guarda: Presiona `Ctrl+O`, luego `Enter`
5. Salir: Presiona `Ctrl+X`

**Opción B - Con VSCode (más visual):**
```bash
code .env
```

1. Se abre VSCode con el archivo .env
2. Busca la línea: `DJANGO_API_TOKEN=tu-token-aqui`
3. Reemplaza `tu-token-aqui` con tu token real
4. Guarda: Presiona `⌘+S`

</details>

<details>
<summary><b>🪟 En Windows</b></summary>

**Opción A - Con Notepad:**
```powershell
notepad .env
```

1. Busca la línea que dice: `DJANGO_API_TOKEN=tu-token-aqui`
2. Borra `tu-token-aqui`
3. Pega tu token real (el que copiaste)
4. Guarda: `Archivo → Guardar`
5. Cierra Notepad

**Opción B - Con VSCode (más visual):**
```powershell
code .env
```

1. Se abre VSCode con el archivo .env
2. Busca la línea: `DJANGO_API_TOKEN=tu-token-aqui`
3. Reemplaza `tu-token-aqui` con tu token real
4. Guarda: Presiona `Ctrl+S`

</details>

**Ejemplo de cómo debería verse:**
```
DJANGO_API_TOKEN=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxMjM0fQ.abc123...
```

✅ **Verificación:** Tu archivo `.env` debe tener tu token real (una cadena larga de letras y números).

---

## 🎮 Paso 4: Iniciar Claude Code

### 4.1 Abrir el proyecto en VSCode

<details>
<summary><b>🍎 En Mac</b></summary>

```bash
# Asegúrate de estar en la carpeta del proyecto
cd ~/dev/kaiken-query-builder-mcp

# Abrir VSCode en esta carpeta
code .
```

</details>

<details>
<summary><b>🪟 En Windows</b></summary>

```powershell
# Asegúrate de estar en la carpeta del proyecto
cd ~\dev\kaiken-query-builder-mcp

# Abrir VSCode en esta carpeta
code .
```

</details>

⚠️ **Si dice "comando 'code' no encontrado":**
1. Abre VSCode manualmente desde el menú de aplicaciones
2. Ve a `Archivo → Abrir Carpeta` (o `File → Open Folder`)
3. Busca y selecciona la carpeta `kaiken-query-builder-mcp`
4. Haz clic en "Abrir"

✅ **Verificación:** VSCode se abre mostrando las carpetas del proyecto en la barra lateral izquierda.

---

### 4.2 Activar Claude Code

**Hay 2 formas de iniciar Claude:**

**Opción A - Con el menú de comandos:**
1. Presiona `⌘+Shift+P` (Mac) o `Ctrl+Shift+P` (Windows)
2. Escribe "Claude"
3. Selecciona "Claude Code: Start Chat"
4. Presiona Enter

**Opción B - Con el ícono (más fácil):**
1. Busca el ícono de Claude en la barra lateral izquierda
2. Haz clic en él
3. La interfaz de chat de Claude se abre

✅ **Verificación:** Deberías ver una ventana de chat con el logo de Claude y un campo para escribir mensajes.

---

### 4.3 Verificar que Todo Funciona

**¡Momento de la verdad!** Vamos a probar que todo está configurado correctamente.

En el chat de Claude, escribe exactamente esto:

```
Ejecuta esta query: SELECT DATABASE();
```

Presiona Enter y espera unos segundos.

**✅ Si todo funciona correctamente, verás:**
- Un mensaje de Claude diciendo que está ejecutando la query
- Un resultado que muestra: `KAIKEN_APP`

**🎉 ¡Felicidades! Tu Query Builder está funcionando correctamente.**

**❌ Si ves un error:**
- Ve a la sección [Solución de Problemas](#️-solución-de-problemas)
- O pregúntale directamente a Claude: *"¿Por qué no funciona?"*

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
