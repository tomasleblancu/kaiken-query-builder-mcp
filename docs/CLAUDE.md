# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Query Builder is a Python-based tool for executing SQL queries against the KAIKEN_APP MySQL database. The database contains 275 tables covering multiple business domains including e-commerce, procurement, projects, invoicing, and AI/ML capabilities.

## ⚠️ CRITICAL: Read-Only Query Policy

**This tool is for READ-ONLY database access only. NEVER generate queries that modify data.**

See [.claude/rules/read-only-queries.md](.claude/rules/read-only-queries.md) for the complete policy.

### Allowed Query Types
- ✅ `SELECT` - Read data
- ✅ `SHOW` - Show database information
- ✅ `DESCRIBE` / `DESC` - Show table structure
- ✅ `EXPLAIN` - Explain query execution plan

### Prohibited Query Types
- ❌ `INSERT`, `UPDATE`, `DELETE` - No data modifications
- ❌ `DROP`, `TRUNCATE`, `ALTER` - No schema changes
- ❌ `CREATE`, `REPLACE`, `MERGE` - No data/structure creation
- ❌ `GRANT`, `REVOKE` - No permission changes

**If a user requests a data modification query, politely refuse and suggest read-only alternatives.**

## Development Commands

### Environment Setup

```bash
# Create and activate virtual environment
python3 -m venv venv
source venv/bin/activate

# Install dependencies
pip install -r requirements.txt
```

### Running Queries

```bash
# Execute query from file
python run_query.py --file queries/example.sql

# Execute query directly
python run_query.py --query "SELECT * FROM client LIMIT 10"
python run_query.py -q "SHOW TABLES"

# Get JSON output
python run_query.py --file queries/example.sql --json
```

### Generating Documentation

```bash
# Basic documentation generation (no API key required)
python scripts/generate_table_docs.py

# AI-powered documentation (requires OpenAI API key)
export OPENAI_API_KEY='your-api-key'
python scripts/generate_table_docs_ai.py
```

## Code Architecture

### Core Components

**[run_query.py](run_query.py)** - Main query execution engine
- Loads database configuration from `config.json`
- Supports both file-based (`--file`) and inline (`--query`) SQL execution
- Returns results in formatted output or JSON
- Handles connection pooling and proper resource cleanup
- Automatically detects query type (SELECT, INSERT, UPDATE, etc.) and formats output accordingly

**[scripts/generate_table_docs.py](scripts/generate_table_docs.py)** - Basic documentation generator
- Uses pattern matching to infer table purposes
- Generates markdown files for each table in `tables/` directory
- Extracts columns, foreign keys, indexes, and relationships from MySQL Information Schema
- Fast but produces generic descriptions

**[scripts/generate_table_docs_ai.py](scripts/generate_table_docs_ai.py)** - AI-powered documentation generator
- Uses OpenAI GPT-4o-mini to generate contextual descriptions
- Processes tables in batches of 10 to optimize API calls
- Cost: ~$0.50-$1.00 for all 275 tables
- Produces high-quality, context-aware descriptions based on column names and relationships

### Configuration

**config.json** (git-ignored)
- Database connection parameters (host, port, user, password)
- MySQL options (charset: utf8mb4, init_command for sql_mode)
- Query builder settings (maxQueryLength, timeout, enableLogging)

Note: `config.json` contains production credentials and must never be committed to git.

**.env** (git-ignored, optional)
- `OPENAI_API_KEY` - Required only for AI-powered documentation generation
- Database credentials can also be stored here as an alternative to config.json

### Database Structure

The KAIKEN_APP database has 275 tables organized into major modules:

- **Django Framework** (auth_*, django_*) - Authentication, admin, sessions
- **Shop/E-commerce** (shop_*) - 40 tables for online store functionality
- **Licitaciones** (licitacion*, tender*, selectedtender*) - 38 tables for public procurement
- **Órdenes de Compra** (oc*) - 28 tables for purchase orders
- **Kaiken Lab** (kaiken_lab_*) - 11 tables for AI/ML features (vectorization, chatbots)
- **Banking** (banking_*) - 11 tables for bank reconciliation
- **Projects** (project*) - 12 tables for project management
- **Invoicing** (invoice*, billing*, payment*) - 16 tables for billing and payments
- **Clients & Providers** (client*, provider*, supplier*) - Customer and vendor management
- **Products** (product*) - Product catalog management

### Directory Structure

```
Query-builder/
├── run_query.py              # Main query execution script
├── config.json               # Database config (git-ignored)
├── requirements.txt          # Python dependencies
├── .env                      # Environment variables (git-ignored)
│
├── queries/                  # SQL query files
│   └── example.sql
│
├── scripts/                  # Utility scripts
│   ├── generate_table_docs.py        # Basic doc generator
│   └── generate_table_docs_ai.py     # AI-powered doc generator
│
├── tables/                   # Auto-generated table documentation (275 files)
│   ├── client.md
│   ├── shop_orders.md
│   └── ...
│
└── tables.md                 # Index of all tables organized by category
```

## Working with Queries

### Creating New Queries

1. Create a `.sql` file in the `queries/` directory
2. Write your SQL query with proper formatting
3. Execute with: `python run_query.py --file queries/your_query.sql`

### Query Best Practices

- Always use `LIMIT` when exploring tables to avoid large result sets
- Reference the table documentation in `tables/` to understand schemas and relationships
- Use foreign key information from docs to write correct JOIN statements
- The database uses utf8mb4 charset and STRICT_TRANS_TABLES sql_mode

### Finding Tables and Columns

All table documentation is auto-generated and includes:
- Column names, types, and constraints
- Primary keys and foreign keys (with clickable links to related tables)
- Indexes
- Row counts and statistics
- Tables that reference each table

Start with [tables.md](tables.md) to find tables by category, then navigate to individual table docs for details.

## Important Notes

### Security

- **Never commit `config.json`** - Contains production database credentials
- **Never commit `.env`** - May contain API keys and sensitive data
- Both files are in `.gitignore` and should remain git-ignored
- Use `.env.example` as a template for new environments

### Database Access

- The database is read-accessible via the AppConnect user
- Credentials are in `config.json` (not tracked in git)
- Connection parameters include specific MySQL options (charset, sql_mode)
- Always ensure the virtual environment is activated before running scripts

### Documentation Updates

When the database schema changes:
1. Regenerate documentation using one of the generator scripts
2. Basic generator is faster and free (use for frequent updates)
3. AI generator produces better descriptions (use for production docs)
4. Documentation files in `tables/` should not be manually edited (they are auto-generated)

### Python Dependencies

- `mysql-connector-python==8.2.0` - MySQL database connectivity
- `openai==1.54.0` - OpenAI API for AI-powered documentation (optional)
- `python-dotenv==1.0.0` - Environment variable management

Virtual environment is required - always activate with `source venv/bin/activate` before running any Python scripts.
