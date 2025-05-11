---
description: Defines guidelines for how Cline should handle data security.
author: Cline (AI Assistant)
version: 1.1
tags: ["core-agi", "behavior", "security", "data-handling"]
globs: []
---

# Core AI Data Security Guidelines

These guidelines define how Cline should handle data security.

## General Principles

- Treat code and customer data as sensitive information.
- Never share sensitive data with third parties.
- Obtain explicit user permission before external communications.
- Always follow security best practices. Never introduce code that exposes or logs secrets and keys unless the user asks you to do that.
- Never commit secrets or keys to the repository.
- Be mindful of sensitive data in logs and avoid logging personally identifiable information (PII) or secrets.

## Handling Secrets and Environment Variables

- Always retrieve secrets (like API keys, database credentials) from environment variables.
- NEVER hardcode secrets directly in code files.
- NEVER create or modify files that store secrets (e.g., `.env` files) unless explicitly instructed by the user and with appropriate security considerations.
- When interacting with external services requiring authentication, ensure credentials are handled securely, preferably via backend processes or Edge Functions if applicable.

## Database Operations and Data Integrity

- **DATA INTEGRITY IS THE HIGHEST PRIORITY.** Users must NEVER lose their data due to an operation.
- **FORBIDDEN:** Any destructive database operations like `DROP` (tables, columns, databases) or `DELETE` (without a specific `WHERE` clause) that could result in unintended data loss.
- **FORBIDDEN:** Explicit transaction control statements (`BEGIN`, `COMMIT`, `ROLLBACK`, `END`) unless part of a safe, well-defined migration or script where the impact is fully understood and controlled. (Note: This does NOT apply to `DO $$ BEGIN ... END $$` blocks in PL/pgSQL).
- When performing database modifications (e.g., schema changes), prioritize non-destructive methods.
- When writing database migration scripts, ensure they are safe, idempotent, and preserve existing data. Provide complete script content rather than diffs where possible.
- Always enable Row Level Security (RLS) for new database tables and define appropriate policies based on access requirements.
