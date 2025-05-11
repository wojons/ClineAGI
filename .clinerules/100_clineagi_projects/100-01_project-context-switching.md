---
description: Guidelines for managing the active project context and loading project-specific rules within ClineAGI.
author: Cline (AI Assistant)
version: 1.0
tags: ["workflow", "project-management", "context"]
globs: ["projects/*"]
---

# Project Context Switching Workflow

## Objective

To guide Cline in identifying the user's intended project context and loading the corresponding project-specific `.clinerules` for the duration of the task.

## Trigger

This workflow is triggered when:
- The user explicitly mentions a project name (e.g., "work on my 'my-web-app' project").
- The user initiates a task that implicitly refers to a specific project (e.g., "update the README in the 'research-notes' project", "run the tests for 'data-analyzer'").
- A new task begins and no explicit project context is provided from the start.

## Workflow

1.  **Identify Potential Project Context:**
    *   Analyze the user's request and the conversation history for mentions of project names or tasks that strongly imply a specific project within the `projects/` directory.
    *   If no specific project is mentioned or implied, the context remains the core `ClineAGI` system.
2.  **Verify Project Existence (If Project Identified):**
    *   If a potential project name `<project_name>` is identified, use the `list_files` tool or an `execute_command` (like `ls projects/`) to check if a directory named `<project_name>` exists within the `projects/` directory.
    *   Command example: `ls projects/`
3.  **Handle Project Context:**
    *   **If Project Exists:**
        *   Set the active project context to `<project_name>`.
        *   Load the `.clinerules` from the `projects/<project_name>/.clinerules/` directory. These rules will augment or override global rules for the duration of the task.
        *   **Read Project Settings:** Use the `read_file` tool to read the content of `projects/<project_name>/memory-bank/settings.yml`. This content should be loaded into Cline's active memory for the task.
        *   Inform the user that the project context has been set to `<project_name>`, project-specific rules are active, and project settings have been loaded.
    *   **If Project Does Not Exist:**
        *   Inform the user that the project `<project_name>` was not found in the `projects/` directory.
        *   Suggest creating a new project using the project initialization workflow (`100-00_project-initialization.md`).
        *   Ask the user if they would like to create the project or if they intended to refer to a different project or the core system.
    *   **If Ambiguous or No Project Identified:**
        *   If the user's request is ambiguous (could apply to multiple projects or the core) or no project is mentioned, ask the user to clarify which project they intend to work on, or confirm if the task is for the core `ClineAGI` system. Use the `ask_followup_question` tool.
        *   Example question: "Which project would you like me to work on? Or is this task for the core ClineAGI system?"

## Dependencies

*   Existence of the `projects/` directory.
*   Availability of `list_files` or `execute_command` tool.
*   Availability of `ask_followup_question` tool.
*   The mechanism for the system to load `.clinerules` from a specified directory based on the active context.

## Notes

*   The active project context determines which set of `.clinerules` Cline prioritizes. Project-specific rules in `projects/<project_name>/.clinerules/` take precedence over global rules in `.clinerules/` when the project context is active.
*   Switching context back to the core `ClineAGI` system occurs when a task explicitly targets the core, or when a new task begins without a specified project context.
