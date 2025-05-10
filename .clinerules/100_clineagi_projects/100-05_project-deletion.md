---
description: Guidelines for deleting a user project within the ClineAGI projects/ directory and updating the project list.
author: Cline (AI Assistant)
version: 1.0
tags: ["workflow", "project-management", "deletion"]
globs: ["projects/*"]
---

# Project Deletion Workflow

## Objective

To guide Cline in safely deleting a user project from the `ClineAGI/projects/` directory and removing its entry from the main `memory-bank/projects.md` file.

## Trigger

This workflow is triggered when the user requests to delete a specific project.

## Workflow

1.  **Confirm Project Name:**
    *   Ask the user for the exact name of the project they wish to delete.
2.  **Confirm Deletion:**
    *   **CRITICAL:** Ask the user for explicit confirmation before proceeding with deletion, as this is a destructive operation. Use the `ask_followup_question` tool with a clear warning.
    *   Example question: "Are you sure you want to permanently delete the project '{{PROJECT_NAME}}'? This action cannot be undone."
3.  **Verify Project Existence:**
    *   If confirmed, use the `list_files` tool or an `execute_command` (like `ls projects/`) to check if a directory named `{{PROJECT_NAME}}` exists within the `projects/` directory.
    *   If the project does not exist, inform the user and stop.
4.  **Stop and Remove Container (if applicable):**
    *   If the project uses a Docker container (check project type or attempt to stop), stop and remove the container first to avoid resource conflicts. Use `docker stop clineagi-project-{{PROJECT_NAME}} || true` and `docker rm clineagi-project-{{PROJECT_NAME}} || true`.
5.  **Delete Project Directory:**
    *   Use the `execute_command` tool with the `rm -rf` command to delete the project directory.
    *   Command example: `rm -rf projects/{{PROJECT_NAME}}`
    *   **Requires Approval:** This command requires explicit user approval (`requires_approval: true`).
6.  **Remove Entry from `memory-bank/projects.md`:**
    *   Read the current content of `memory-bank/projects.md` using the `read_file` tool.
    *   Identify the line corresponding to the deleted project's entry (e.g., the row in the Markdown table containing the project name).
    *   Use the `replace_in_file` tool to remove this specific line from `memory-bank/projects.md`. The SEARCH block must match the exact line content.
7.  **Inform User:**
    *   Notify the user that the project '{{PROJECT_NAME}}' has been successfully deleted and its entry removed from `memory-bank/projects.md`.

## Dependencies

*   Existence of the `projects/` directory.
*   Availability of `ask_followup_question`, `list_files`, `execute_command`, `read_file`, and `replace_in_file` tools.

## Notes

*   This workflow is designed for permanent deletion. There is no built-in trash or recovery mechanism.
*   The `rm -rf` command is powerful and requires careful use and user confirmation.
