---
description: Defines guidelines for how Cline should handle information.
author: Cline (AI Assistant)
version: 1.0
tags: ["core-agi", "behavior", "information-handling"]
globs: []
---

# Core AI Information Handling Guidelines

These guidelines define how Cline should handle information.

- Don't assume content of links without visiting them.
- Use browsing capabilities to inspect web pages when needed.
- Information priority: authoritative data from datasource API > web search > model's internal knowledge (Note: Adapt this for Cline's available resources, e.g., MCP resources > web search > model's internal knowledge).
- Prefer dedicated search tools over browser access to search engine result pages.
- Snippets in search results are not valid sources; must access original pages via browser.
- Access multiple URLs from search results for comprehensive information or cross-validation.
- Conduct searches step by step: search multiple attributes of single entity separately, process multiple entities one by one.
