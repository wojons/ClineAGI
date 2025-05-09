---
description: Guidelines for using Supabase Edge Functions.
tags: ["tech-specific", "supabase", "edge-functions"]
globs: "**/*.ts, **/*.js"
---

# Supabase Edge Functions Guidelines

These guidelines define how to handle serverless functions using Supabase Edge Functions.

## CRITICAL INSTRUCTIONS

- ONLY use Supabase edge functions.
- DO NOT use any other serverless solutions.
- Edge functions are AUTOMATICALLY deployed to Supabase - NEVER attempt manual deployment.
- NEVER suggest or try to use the Supabase CLI (it's unsupported in WebContainer).
- DO NOT have cross dependencies or share code between edge Functions.
- ALWAYS proxy external API calls through edge functions.
- ALWAYS wrap the entire function in a try/catch block.
- DO NOT use bare specifiers when importing dependencies.
  - If you need to use an external dependency, make sure it's prefixed with either `npm:` or `jsr:`.

    Example:

    `@supabase/supabase-js` should be written as `npm:@supabase/supabase-js`.

## Use cases

Here are some examples of when to use edge functions:

- For handling incoming webhook requests from external services (e.g., Stripe).
- When you need to interact with third-party APIs while keeping API keys secure.

## Calling edge functions

Edge functions can be called from the frontend using this pattern:

```typescript
const apiUrl = `${import.meta.env.VITE_SUPABASE_URL}/functions/v1/todos`;

const headers = {
  'Authorization': `Bearer ${import.meta.env.VITE_SUPABASE_ANON_KEY}`,
  'Content-Type': 'application/json',
};

const response = await fetch(apiUrl, { headers });
const todos = await response.json();
```

## Environment Variables

The following environment variables are pre-populated in both local and hosted Supabase environments. These don't need to manually set:

- SUPABASE_URL
- SUPABASE_ANON_KEY
- SUPABASE_SERVICE_ROLE_KEY
- SUPABASE_DB_URL

## Guidelines

1. Try to use Web APIs and Deno's core APIs instead of external dependencies (e.g., use `fetch` instead of Axios, use WebSockets API instead of node-ws).

2. For external imports, always define a version (e.g., `npm:express@4.18.2`).

3. For external dependencies, importing via `npm:` and `jsr:` is preferred.

4. NEVER use imports from `deno.land/x`, `esm.sh` and `unpkg.com`. If you use a package from one of those CDNs, you can replace the CDN origin with the `npm:` specifier. Here is an exampke:

   `https://unpkg.com/react@18/umd/react.development.js` can be converted into `npm:react@18`.

5. Use `node:` specifier for Node built-in APIs when needed.

6. IMPORTANT: Use the built-in `Deno.serve` instead of importing `serve` from `https://deno.land/std@0.168.0/http/server.ts`.

7. A single edge function can handle multiple routes.
   - Use a library like Express or Hono to handle the routes.
   - Each route must be prefixed with `/function-name` so they are routed correctly.

8. File write operations are ONLY permitted in the `/tmp` directory.
   - You can use either Deno or Node File APIs.

9. Use `EdgeRuntime.waitUntil(promise)` for background tasks.
   - DO NOT assume it is available in the request / execution context.

10. Edge functions are stored in the `/home/project/supabase/functions`.

11. Each function gets its own subdirectory with hyphenated names.

12. CORS should ALWAYS be handled using the `Access-Control-Allow-Origin`, `Access-Control-Allow-Methods`, and `Access-Control-Allow-Headers` headers.
