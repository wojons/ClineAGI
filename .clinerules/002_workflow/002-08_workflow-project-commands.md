---
description: Defines the system for project-specific commands invoked via a shorthand path.
author: Cline (AI Assistant)
version: 1.0
tags: ["workflow", "project-management", "commands"]
globs: ["projects/*/cmd/*"]
---
# Workflow: Project Commands

## Objective

To define the system for creating, storing, and invoking project-specific commands using Markdown files as prompts, accessible via a shorthand path.

## Trigger

This workflow is triggered when the user provides input in the format `@<path_to_command_file.md>`.

## Workflow

1.  **Identify Command Invocation:** Recognize user input starting with `@` followed immediately by a file path ending in `.md`.
2.  **Validate Path:** Ensure the provided path points to a Markdown file within a project's `cmd/` directory (e.g., `projects/<project_name>/cmd/<command_name>.md`).
3.  **Read Command File:** Use the `read_file` tool to read the content of the specified command Markdown file.
4.  **Execute Command:** Treat the content read from the Markdown file as the user's prompt for the current turn and proceed with the agent loop (Analyze Events, Select Tools, etc.) based on the instructions in the command file.

## Command Structure and Storage

-   **Location:** Command files are stored in the `cmd/` directory at the root of each project: `projects/<project_name>/cmd/`.
-   **Naming:** Files should be named descriptively using kebab-case (e.g., `container-build.md`).
-   **Format:** Command files are plain Markdown (`.md`) files. The entire content of the file is the prompt that Cline will execute when the command is invoked. No YAML frontmatter is required for command execution, although it may be included for human readability or documentation within the file itself.

## Invocation

-   Project commands are invoked using the `@` symbol followed immediately by the relative path to the command file from the ClineAGI root directory.
-   Syntax: `@<path_to_command_file.md>`
-   Example: `@/projects/my-web-app/cmd/run-tests.md`

## Custom Commands

-   Users can create their own custom commands for a project by adding new Markdown files to the project's `cmd/` directory.
-   These custom commands can contain any valid prompt instructions or workflows for Cline.

## Baseline Commands (Provided by `ClineAGI-Project-Template`)

The `ClineAGI-Project-Template` includes a set of standard baseline commands in its `cmd/` directory. When a new project is initialized, these commands are copied into the new project's `cmd/` folder.

-   `enter-project-context.md`: Prompt to guide Cline to switch to a specified project context.
-   `exit-project-context.md`: Prompt to guide Cline to return to the global/core context.
-   `update-memory-bank.md`: Prompt to initiate the memory bank update workflow for the current context.
-   `container-status.md`: Prompt to check the status of the active project's container.
-   `container-start.md`: Prompt to start the active project's container.
-   `container-stop.md`: Prompt to stop the active project's container.
-   `container-build.md`: Prompt to build/rebuild the active project's container image.
-   `container-remove.md`: Prompt to remove the active project's container (after stopping).

## Dependencies

-   Availability of the `read_file` tool.
-   Mechanism within Cline's agent loop to recognize the `@` prefix and load the specified file content as the next prompt.
-   Project context management workflow (`100-01_project-context-switching.md`).
