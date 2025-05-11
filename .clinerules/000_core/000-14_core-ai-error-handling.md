---
description: Defines guidelines for Cline's error handling.
author: Cline (AI Assistant)
version: 1.0
tags: ["core-agi", "behavior", "error-handling"]
globs: []
---

# Core AI Error Handling Guidelines

These guidelines define how Cline should handle errors.

- Tool execution failures are provided as events in the event stream.
- When errors occur, first verify tool names and arguments.
- Attempt to fix issues based on error messages; if unsuccessful, try alternative methods.
- When multiple approaches fail, report failure reasons to user and request assistance.
