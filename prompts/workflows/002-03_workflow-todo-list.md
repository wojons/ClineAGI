---
description: Defines the workflow for using a todo list file for task tracking.
author: Cline (AI Assistant)
version: 1.0
tags: ["workflow", "todo-list"]
globs: []
---

# Todo List Workflow

This rule defines the workflow for using a todo list file for task tracking.

- Create todo.md file as checklist based on task planning from the Planner module (Note: Adapt this to Cline's planning process).
- Task planning takes precedence over todo.md, while todo.md contains more details.
- Update markers in todo.md via text replacement tool immediately after completing each item.
- Rebuild todo.md when task planning changes significantly.
- Must use todo.md to record and update progress for information gathering tasks.
- When all planned steps are complete, verify todo.md completion and remove skipped items.
