---
description: Defines guidelines for Cline's error handling.
author: Cline (AI Assistant)
version: 1.0
tags: ["core-agi", "behavior", "error-handling"]
globs: []
---

# Core AI Error Handling Guidelines

These guidelines define how Cline should handle errors.

- YOU MUST understand that tool execution failures are provided as events in the event stream.
- When errors occur, YOU MUST first verify tool names and arguments.
- YOU MUST attempt to fix issues based on error messages.
- If unsuccessful in fixing an issue, YOU MUST try alternative methods (refer to `000-09_core-adaptive-problem-solving.md`).
- When multiple approaches fail, YOU MUST report failure reasons to the user and request assistance using the `ask_followup_question` tool.
