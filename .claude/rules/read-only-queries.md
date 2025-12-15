# Read-Only Query Policy

## CRITICAL RULE: ALWAYS USE MySQL SYNTAX

**ALL SQL queries MUST use MySQL syntax and MySQL-specific functions.**

The KAIKEN_APP database runs on MySQL. When generating SQL queries:

- ✅ Use MySQL functions: `CONCAT()`, `DATE_FORMAT()`, `IFNULL()`, `NOW()`, etc.
- ✅ Use MySQL syntax: backticks for identifiers, MySQL date functions, etc.
- ✅ Use MySQL-specific features when needed
- ❌ Do NOT use PostgreSQL syntax (`::`, `COALESCE()`, etc.)
- ❌ Do NOT use SQL Server syntax (`TOP`, `GETDATE()`, etc.)
- ❌ Do NOT use SQLite or other database syntax

**Example:**
```sql
-- ✅ CORRECT - MySQL syntax
SELECT CONCAT(firstName, ' ', lastName) AS fullName,
       DATE_FORMAT(createdAt, '%Y-%m-%d') AS fecha
FROM users
WHERE createdAt >= DATE_SUB(NOW(), INTERVAL 30 DAY)
LIMIT 10;

-- ❌ INCORRECT - PostgreSQL syntax
SELECT firstName || ' ' || lastName AS fullName,
       createdAt::date AS fecha
FROM users
WHERE createdAt >= NOW() - INTERVAL '30 days'
LIMIT 10;
```

## CRITICAL RULE: NO DATA MODIFICATION

**NEVER generate, suggest, or execute SQL queries that modify data in any way.**

### Prohibited Query Types

You must NEVER create queries that use any of the following commands:

- ❌ `INSERT` - No data insertion
- ❌ `UPDATE` - No data updates
- ❌ `DELETE` - No data deletion
- ❌ `DROP` - No dropping tables/databases
- ❌ `TRUNCATE` - No truncating tables
- ❌ `ALTER` - No schema modifications
- ❌ `CREATE` - No creating tables/databases
- ❌ `REPLACE` - No data replacement
- ❌ `MERGE` - No data merging
- ❌ `GRANT` - No permission changes
- ❌ `REVOKE` - No permission changes

### Allowed Query Types

Only the following read-only operations are permitted:

- ✅ `SELECT` - Read data
- ✅ `SHOW` - Show database information
- ✅ `DESCRIBE` / `DESC` - Show table structure
- ✅ `EXPLAIN` - Explain query execution plan

### Enforcement

1. **Before generating any query**, verify it only uses allowed commands
2. **If a user requests a modification query**, politely refuse and explain:
   - This database is read-only for this tool
   - Data modifications must be done through the main application
   - Suggest read-only alternatives to understand the data instead

3. **If uncertain**, default to refusing the request

### Examples

**❌ BAD - NEVER DO THIS:**
```sql
INSERT INTO client (nameClient, rut) VALUES ('Test', '12345678-9');
UPDATE client SET status = 0 WHERE idClient = 123;
DELETE FROM shop_orders WHERE status = 'cancelled';
```

**✅ GOOD - Always do this:**
```sql
SELECT * FROM client WHERE rut = '12345678-9' LIMIT 10;
SHOW TABLES LIKE 'client%';
DESCRIBE client;
EXPLAIN SELECT * FROM shop_orders WHERE status = 'cancelled';
```

### Response Template When User Requests Modification

When a user asks for INSERT, UPDATE, DELETE, or other modification queries, respond with:

> "I cannot generate queries that modify data (INSERT, UPDATE, DELETE, etc.). This Query Builder tool is configured for read-only access to protect the production database.
>
> If you need to modify data, please use the main KAIKEN_APP application.
>
> I can help you with:
> - SELECT queries to read and analyze data
> - Understanding the current state of the data
> - Finding specific records
> - Generating reports
>
> Would you like me to help you explore the data with a read-only query instead?"

## Rationale

This database contains production data for KAIKEN_APP. Allowing modifications through this query tool could:
- Corrupt business-critical data
- Break application functionality
- Violate data integrity constraints
- Cause audit trail issues

All data modifications should go through the proper application layer with validation, authentication, and audit logging.
