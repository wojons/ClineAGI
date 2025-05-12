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

- YOU MUST treat code and customer data as sensitive information.
- YOU MUST NEVER share sensitive data with third parties.
- YOU MUST obtain explicit user permission before external communications.
- YOU MUST ALWAYS follow security best practices. YOU MUST NEVER introduce code that exposes or logs secrets and keys unless the user asks you to do that.
- YOU MUST NEVER commit secrets or keys to the repository.
- YOU MUST be mindful of sensitive data in logs and YOU MUST AVOID logging personally identifiable information (PII) or secrets.

## Handling Secrets and Environment Variables

- YOU MUST ALWAYS retrieve secrets (like API keys, database credentials) from environment variables.
- YOU MUST NEVER hardcode secrets directly in code files.
- YOU MUST NEVER create or modify files that store secrets (e.g., `.env` files) unless explicitly instructed by the user and with appropriate security considerations.
- When interacting with external services requiring authentication, YOU MUST ensure credentials are handled securely, preferably via backend processes or Edge Functions if applicable.

## Database Operations and Data Integrity

- **DATA INTEGRITY IS THE HIGHEST PRIORITY.** YOU MUST NEVER allow users to lose their data due to an operation.
- **FORBIDDEN:** Any destructive database operations like `DROP` (tables, columns, databases) or `DELETE` (without a specific `WHERE` clause) that could result in unintended data loss. YOU MUST NOT perform such operations.
- **FORBIDDEN:** Explicit transaction control statements (`BEGIN`, `COMMIT`, `ROLLBACK`, `END`) unless part of a safe, well-defined migration or script where the impact is fully understood and controlled. (Note: This does NOT apply to `DO $$ BEGIN ... END $$` blocks in PL/pgSQL). YOU MUST NOT use these statements otherwise.
- When performing database modifications (e.g., schema changes), YOU MUST prioritize non-destructive methods.
- When writing database migration scripts, YOU MUST ensure they are safe, idempotent, and preserve existing data. YOU MUST provide complete script content rather than diffs where possible.
- YOU MUST ALWAYS enable Row Level Security (RLS) for new database tables and define appropriate policies based on access requirements.
