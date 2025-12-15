# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

**Query Builder** is an MCP (Model Context Protocol) server that enables Claude to execute read-only SQL queries against the KAIKEN_APP MySQL database (275 tables). It acts as a secure bridge between Claude and production data, allowing natural language database queries without direct database access.

**Architecture:** Claude Code → MCP Server (local Python) → Django REST API → MySQL Database

This tool is for **READ-ONLY access only**. All data modifications must go through the main KAIKEN_APP application.

## ⚠️ CRITICAL: Read-Only Query Policy

**NEVER generate, suggest, or execute queries that modify data.**

### Allowed Commands
- ✅ `SELECT` - Read data
- ✅ `SHOW` - Show database information
- ✅ `DESCRIBE` / `DESC` - Show table structure
- ✅ `EXPLAIN` - Explain query execution plan

### Prohibited Commands
- ❌ `INSERT`, `UPDATE`, `DELETE` - No data modifications
- ❌ `DROP`, `TRUNCATE`, `ALTER` - No schema changes
- ❌ `CREATE`, `REPLACE`, `MERGE` - No data/structure creation

**If a user requests a data modification query, politely refuse and suggest read-only alternatives to explore the data instead.**

### CRITICAL: Always Use MySQL Syntax

The KAIKEN_APP database runs on **MySQL**. Always use MySQL-specific syntax and functions:

- ✅ Use `CONCAT()`, `DATE_FORMAT()`, `IFNULL()`, `NOW()`, `DATE_SUB()`, `INTERVAL`
- ✅ Use backticks for identifiers when needed
- ❌ Do NOT use PostgreSQL syntax (`||`, `::`, `INTERVAL '30 days'`)
- ❌ Do NOT use SQL Server syntax (`TOP`, `GETDATE()`)

**Example:**
```sql
-- ✅ CORRECT - MySQL syntax
SELECT CONCAT(firstName, ' ', lastName) AS fullName,
       DATE_FORMAT(createdAt, '%Y-%m-%d') AS fecha
FROM users
WHERE createdAt >= DATE_SUB(NOW(), INTERVAL 30 DAY)
LIMIT 10;
```

See [.claude/rules/read-only-queries.md](.claude/rules/read-only-queries.md) for the complete policy.

## Development Commands

### Initial Setup

```bash
# Install dependencies using uv (modern Python package manager)
cd mcp
uv sync

# Configure API authentication (one-time setup)
cp .env.example .env
nano .env  # Add your Django API token: DJANGO_API_TOKEN=your-token-here
```

### MCP Server

The MCP server starts automatically when Claude Code loads this repository (configured via [.mcp.json](.mcp.json)).

**Manual testing:**
```bash
cd mcp
uv run mcp_server.py
```

**Debugging:**
```bash
# Check if MCP server is configured
cat .mcp.json

# Verify environment variables
cat .env

# Test dependencies
cd mcp && uv sync
```

### Working with Pre-built Reports

Six accounting reports are available in [queries/Reportes Contables/](queries/Reportes%20Contables/):

1. `01_proyectos_licitaciones.sql` - Projects and tenders with financial data
2. `02_documentos_pago_ordenes_compra.sql` - Payment documents (6 months)
3. `03_facturas_compra_completo.sql` - Purchase invoices (12 months)
4. `04_facturas_venta_completo.sql` - Sales invoices (12 months)
5. `05_movimientos_bancarios_consolidado.sql` - Bank movements (6 months)
6. `06_ordenes_compra_con_conciliacion.sql` - Purchase orders with reconciliation (12 months)

Execute via MCP tools:
- Use `list_query_files` to see all available query files
- Use `execute_query_file` with the file path to run a report
- Use `get_available_reports` to list the pre-built accounting reports

## Code Architecture

### MCP Server Implementation

**[mcp/mcp_server.py](mcp/mcp_server.py)** (402 lines) - Core MCP server

The server implements 6 MCP tools that Claude can invoke:

1. **execute_sql** - Execute raw SQL queries (SELECT, SHOW, DESCRIBE, EXPLAIN only)
2. **execute_query_file** - Execute queries from `.sql` files in `queries/`
3. **list_query_files** - List all available SQL files
4. **get_query_logs** - Retrieve recent query execution logs
5. **get_available_reports** - List pre-built accounting reports
6. **query_database_natural** - Query database schema using natural language

**Key Architecture Patterns:**

- **Async/await** - All HTTP calls to Django API use `httpx.AsyncClient`
- **Bearer Token Auth** - Authenticates with Django API using token from `.env`
- **Stdio Protocol** - Communicates with Claude Code via stdin/stdout using MCP protocol
- **Error Handling** - Comprehensive error handling for API failures, timeouts, file errors
- **API Proxy Pattern** - Server proxies requests to Django backend; no direct database access

**Critical Functions:**

```python
async def call_django_api(endpoint: str, method: str, data: dict) -> dict:
    """
    Proxies all database operations to Django REST API.
    - Uses Bearer token from DJANGO_API_TOKEN env var
    - Default URL: https://lab.kaiken.ai/api/mcp
    - 60-second timeout
    """

def read_query_file(file_path: str) -> str:
    """
    Safely reads SQL files from queries/ directory.
    - Prevents directory traversal attacks
    - Returns file contents as string
    """
```

**Data Flow:**
```
Claude request
  → MCP Server (mcp_server.py)
    → HTTP POST to Django API (https://lab.kaiken.ai/api/mcp/execute_sql/)
      → Django validates query (read-only check)
        → MySQL Database (KAIKEN_APP)
      ← Results as JSON
    ← Formatted response
  ← Displayed to user
```

### Configuration Files

**[.mcp.json](.mcp.json)** - MCP Server registration for Claude Code
```json
{
  "mcpServers": {
    "kaiken-query-builder": {
      "command": "uv",
      "args": ["--directory", "mcp", "run", "mcp_server.py"]
    }
  }
}
```

**[.env](.env)** (git-ignored) - Authentication and API configuration
```
DJANGO_API_TOKEN=your-token-here
DJANGO_API_URL=https://lab.kaiken.ai/api/mcp  # Optional, has default
```

**[mcp/pyproject.toml](mcp/pyproject.toml)** - Python dependencies
```toml
[project]
name = "kaiken-mcp"
requires-python = ">=3.10"
dependencies = ["mcp[cli]>=1.23.3"]
```

Uses `uv` package manager (not pip/conda) with lockfile at `mcp/uv.lock`.

### Database Structure

The KAIKEN_APP database has **275 tables** organized by business domain:

- **Shop/E-commerce** (shop_*) - 40 tables
- **Licitaciones** (licitacion*, tender*, selectedtender*) - 38 tables for public procurement
- **Órdenes de Compra** (oc*) - 28 tables for purchase orders
- **Invoicing** (invoice*, billing*, payment*) - 16 tables
- **Kaiken Lab** (kaiken_lab_*) - 11 tables for AI/ML (vectorization, chatbots)
- **Banking** (banking_*) - 11 tables for bank reconciliation
- **Projects** (project*) - 12 tables
- **Clients & Providers** (client*, provider*, supplier*) - CRM data
- **Products** (product*) - Product catalog
- **Django Framework** (auth_*, django_*) - Authentication, admin, sessions

**Table Documentation:**
- [docs/tables.md](docs/tables.md) - Index of all 275 tables organized by category
- [docs/tables/](docs/tables/) - Individual markdown files for each table with columns, foreign keys, indexes, and relationships

Use the `query_database_natural` MCP tool to ask questions about table structure and relationships in natural language.

## Working with This Repository

### Common User Requests

When users ask to query the database, use the MCP tools (they're automatically available when Claude Code loads this repo):

**Example 1: Ad-hoc query**
```
User: "Show me 10 clients from the database"
→ Use execute_sql tool with: SELECT * FROM client LIMIT 10
```

**Example 2: Pre-built report**
```
User: "Run the sales invoices report"
→ Use execute_query_file tool with: queries/Reportes Contables/04_facturas_venta_completo.sql
```

**Example 3: Explore schema**
```
User: "What's the structure of the shop_orders table?"
→ Use execute_sql tool with: DESCRIBE shop_orders
```

**Example 4: Natural language schema query**
```
User: "How are projects related to tenders?"
→ Use query_database_natural tool with the question
```

### Creating New Query Files

To add new reusable queries:

1. Create a `.sql` file in [queries/](queries/) or a subdirectory
2. Write the query using MySQL syntax
3. Add a comment at the top explaining the query's purpose
4. Users can execute it via `execute_query_file` MCP tool

**Example:**
```sql
-- queries/my_custom_report.sql
-- Description: Get active projects with their total invoiced amount

SELECT
    p.nameProyecto,
    COUNT(i.idInvoice) AS invoice_count,
    IFNULL(SUM(i.totalAmount), 0) AS total_invoiced
FROM project p
LEFT JOIN invoice i ON p.idProject = i.idProject
WHERE p.status = 1
GROUP BY p.idProject
ORDER BY total_invoiced DESC;
```

### Security Considerations

- **Never commit `.env`** - Contains production API token (already in `.gitignore`)
- **Read-only enforcement is multi-layered:**
  1. Claude Code policy (this file + `.claude/rules/read-only-queries.md`)
  2. MCP Server validation (validates query type before sending)
  3. Django API validation (backend validates all queries)
  4. Database user permissions (read-only MySQL user)
- **Bearer token authentication** - All API requests require valid token
- **No direct database access** - MCP server never connects directly to MySQL

### Package Management

This project uses **uv** (modern Python package manager), not pip/conda:

```bash
# Install dependencies
cd mcp && uv sync

# Add a new dependency
cd mcp && uv add package-name

# Remove a dependency
cd mcp && uv remove package-name

# Update dependencies
cd mcp && uv sync --upgrade
```

The `uv.lock` file ensures reproducible builds.

## Important Notes

### When Documentation is Outdated

If [docs/CLAUDE.md](docs/CLAUDE.md) references `run_query.py`, `config.json`, or direct database access, it's outdated. The project was migrated to the MCP Server architecture described in this file. The current implementation uses the Django API bridge, not direct MySQL connections.

### API Endpoint

The default Django API endpoint is `https://lab.kaiken.ai/api/mcp`. If this changes, update it in `.env`:

```
DJANGO_API_URL=https://new-url.com/api/mcp
```

### Troubleshooting

**MCP Server not starting:**
1. Check if `.env` exists with valid `DJANGO_API_TOKEN`
2. Verify `uv` is installed and dependencies are synced (`cd mcp && uv sync`)
3. Check `.mcp.json` configuration

**Authentication errors (401):**
- Token in `.env` is invalid or expired
- Check with: `cat .env`

**Query execution fails:**
- Verify query uses MySQL syntax (not PostgreSQL/SQL Server)
- Ensure query is read-only (SELECT, SHOW, DESCRIBE, EXPLAIN only)
- Check Django API is accessible: `curl -H "Authorization: Bearer YOUR_TOKEN" https://lab.kaiken.ai/api/mcp/health/`

### Documentation Resources

- [README.md](README.md) - Complete user guide in Spanish
- [docs/tables.md](docs/tables.md) - Complete table index with 275 tables
- [docs/tables/](docs/tables/) - Individual table documentation
- [queries/Reportes Contables/README.md](queries/Reportes%20Contables/README.md) - Pre-built reports documentation
- [.claude/rules/read-only-queries.md](.claude/rules/read-only-queries.md) - Read-only policy details
