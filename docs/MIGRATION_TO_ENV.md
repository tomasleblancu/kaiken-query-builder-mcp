# Migración de config.json a .env

## ¿Por qué migrar?

Usar `.env` es más seguro que `config.json` porque:
- ✅ **Mejor seguridad**: Las credenciales no están en archivos JSON legibles
- ✅ **Ya está en .gitignore**: Protección automática contra commits accidentales
- ✅ **Estándar de la industria**: Formato universal (12-factor app)
- ✅ **Fácil de compartir**: Puedes tener `.env.local`, `.env.production`, etc.

## Pasos para migrar

### 1. Verifica tu config.json actual

```bash
cat config.json
```

Deberías ver algo como:
```json
{
  "database": {
    "host": "10.207.81.3",
    "port": 3306,
    "database": "KAIKEN_APP",
    "user": "AppConnect",
    "password": "tu-password-real"
  }
}
```

### 2. Copia las credenciales al .env

```bash
# Copia el template
cp .env.example .env

# Edita el archivo .env y agrega tu password real
nano .env
```

En el archivo `.env`, asegúrate de tener:
```bash
DB_HOST=10.207.81.3
DB_PORT=3306
DB_NAME=KAIKEN_APP
DB_USER=AppConnect
DB_PASSWORD=tu-password-real  # ← Cambia esto por tu password real
```

### 3. Prueba que funciona

```bash
source venv/bin/activate
python run_query.py -q "SELECT COUNT(*) FROM client"
```

Si ves resultados, ¡está funcionando con `.env`!

### 4. (Opcional) Elimina config.json

Una vez que confirmes que todo funciona con `.env`, puedes eliminar `config.json`:

```bash
# Opcional: haz backup primero
cp config.json config.json.backup

# Elimina el archivo
rm config.json
```

## Cómo funciona

El nuevo `run_query.py` carga la configuración en este orden:

1. **Prioridad 1**: Variables de entorno (`.env`)
   - Si todas las variables DB_* están definidas, usa esas

2. **Fallback**: `config.json`
   - Si no encuentra variables de entorno, usa config.json
   - Esto mantiene compatibilidad con el código existente

## Ventajas adicionales

### Múltiples ambientes

Puedes crear diferentes archivos de configuración:

```bash
# Desarrollo local
.env.local

# Producción
.env.production

# Testing
.env.test
```

Y cargar el correcto según el ambiente:

```bash
cp .env.local .env  # Para desarrollo
cp .env.production .env  # Para producción
```

### CI/CD

En sistemas de CI/CD (GitHub Actions, GitLab CI, etc.) puedes definir variables de entorno sin necesidad de archivos:

```yaml
env:
  DB_HOST: ${{ secrets.DB_HOST }}
  DB_PASSWORD: ${{ secrets.DB_PASSWORD }}
```

## Seguridad

### ✅ HACER:
- Usar `.env` para credenciales
- Mantener `.env` en `.gitignore`
- Compartir `.env.example` (sin credenciales reales)
- Rotar passwords periódicamente

### ❌ NO HACER:
- Commitear `.env` a git
- Compartir `.env` por email o Slack
- Usar las mismas credenciales en todos los ambientes
- Hardcodear passwords en el código

## Troubleshooting

### Error: "ModuleNotFoundError: No module named 'dotenv'"

```bash
source venv/bin/activate
pip install python-dotenv==1.0.0
```

### Error: "No se encontró configuración"

Asegúrate de tener al menos uno de estos:
- Archivo `.env` con todas las variables DB_*
- Archivo `config.json` con la estructura correcta

### Las queries no se conectan

Verifica que las credenciales en `.env` sean correctas:

```bash
# Muestra las variables cargadas (sin mostrar el password)
python -c "from dotenv import load_dotenv; import os; load_dotenv(); print(f'Host: {os.getenv(\"DB_HOST\")}, DB: {os.getenv(\"DB_NAME\")}')"
```

## Siguiente paso recomendado

Una vez migrado a `.env`, considera eliminar `config.json` de tu sistema y actualizar la documentación para que futuros desarrolladores usen `.env` desde el inicio.
