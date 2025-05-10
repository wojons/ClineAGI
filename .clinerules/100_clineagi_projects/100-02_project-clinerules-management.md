---
description: Guidelines for managing project-specific .clinerules within a user project directory.
author: Cline (AI Assistant)
version: 1.0
tags: ["workflow", "project-management", "clinerules"]
globs: ["projects/*/.clinerules/*"]
---

# Project .clinerules Management Workflow

## Objective

To guide Cline in assisting the user with managing the `.clinerules` files specific to an active user project.

## Trigger

This workflow is triggered when the user, while a project context is active, requests to:
- Create a new project-specific `.clinerule`.
- Read the content of a project-specific `.clinerule`.
- Modify an existing project-specific `.clinerule`.
- List the available project-specific `.clinerules`.
- Understand the purpose or application of project-specific `.clinerules`.

## Workflow

1.  **Confirm Active Project Context:** Ensure that a specific project context is currently active (as determined by the `100-01_project-context-switching.md` workflow). If no project context is active, inform the user that this workflow applies only within an active project and offer to help them switch to or create a project.
2.  **Identify User Request:** Determine the specific action the user wants to perform related to project `.clinerules` (create, read, modify, list, understand).
3.  **Execute Action:**
    *   **Create:**
        *   Ask the user for the desired filename (following the `NNN-MM_descriptive-name.md` convention) and a brief description for the new rule.
        *   Use the `write_to_file` tool to create the new file within the active project's `.clinerules/` directory (`projects/<active_project_name>/.clinerules/<filename>`). Include basic frontmatter (description, author, version, tags, globs) and a main heading.
        *   Inform the user the file has been created and is ready for content.
    *   **Read:**
        *   Ask the user for the filename of the rule they want to read.
        *   Use the `read_file` tool to read the content of the specified file (`projects/<active_project_name>/.clinerules/<filename>`).
        *   Present the file content to the user.
    *   **Modify:**
        *   Ask the user for the filename of the rule they want to modify and the changes they want to make.
        *   Use the `replace_in_file` or `write_to_file` tool as appropriate based on the nature and extent of the changes, targeting the file at `projects/<active_project_name>/.clinerules/<filename>`.
        *   Inform the user the file has been modified.
    *   **List:**
        *   Use the `list_files` tool to list the contents of the active project's `.clinerules/` directory (`projects/<active_project_name>/.clinerules/`).
        *   Present the list of files to the user.
    *   **Understand:**
        *   Explain the purpose of project-specific `.clinerules`: they augment or override global rules and provide guidance specific to the current project's technologies, workflows, or patterns.
        *   Suggest listing the existing rules or creating a new one to document project specifics.
4.  **Confirm Completion:** Inform the user that the requested action has been completed.

## Dependencies

*   Active project context is set.
*   Availability of `write_to_file`, `read_file`, `replace_in_file`, and `list_files` tools.
*   Availability of `ask_followup_question` tool (for clarifying requests or project context).

## Notes

*   This workflow operates *only* within the `.clinerules/` directory of the currently active project. It does not affect the global `.clinerules/` directory.
*   Users are responsible for the content and maintenance of their project-specific rules. Cline assists with the file management aspects.
*   The naming convention `NNN-MM_descriptive-name.md` should be encouraged for project rules for consistency.
