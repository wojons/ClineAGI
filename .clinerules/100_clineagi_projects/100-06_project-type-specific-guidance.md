---
description: Guidelines for incorporating project type-specific guidance from the prompts/ directory.
author: Cline (AI Assistant)
version: 1.0
tags: ["workflow", "project-management", "guidance"]
globs: ["projects/*"]
---

# Project Type Specific Guidance Workflow

## Objective

To guide Cline in identifying the active project's type and loading corresponding detailed guidance from the `prompts/project_types/` directory to inform task execution.

## Trigger

This workflow is triggered when a project context is activated (as determined by the `100-01_project-context-switching.md` workflow).

## Workflow

1.  **Confirm Active Project Context:** Ensure that a specific project context is currently active. If not, this workflow is not applicable.
2.  **Identify Project Type:** Determine the type of the active project. This information should be available from the project's entry in `memory-bank/projects.md` or potentially from the project's `memory-bank/projectbrief.md`.
3.  **Locate Project Definition File:** Based on the project type, determine the expected filename in the `prompts/project_types/` directory (e.g., "Web Server" type might correspond to `prompts/project_types/web-server-project.md`).
4.  **Verify File Existence:** Use the `list_files` tool or an `execute_command` to check if the corresponding project definition file exists in the `prompts/project_types/` directory.
5.  **Load Guidance:**
    *   If the project definition file exists, use the `read_file` tool to read its content.
    *   Incorporate the guidance from this file into the current task's context and decision-making process.
6.  **Inform User (Optional):** Briefly inform the user that project type-specific guidance has been loaded for the current project.

## Dependencies

*   Active project context is set.
*   Availability of `list_files` or `execute_command` tool.
*   Availability of `read_file` tool.
*   Existence of the `prompts/project_types/` directory.
*   Dependency on `100-01_project-context-switching.md` for context activation.
*   Dependency on `memory-bank/projects.md` or project-specific memory bank for project type information.

## Notes

*   This rule focuses on loading the guidance. The content of the project definition files themselves will be created separately.
*   The mapping between project type names and filenames in `prompts/project_types/` needs to be consistently followed.
