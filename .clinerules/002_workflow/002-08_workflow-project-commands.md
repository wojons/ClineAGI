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

1.  **Identify Command Invocation:** Recognize user input starting with `@` followed immediately by a file path ending in `.md` or `.md.j2`.
2.  **Validate Path:** Ensure the provided path points to a Markdown file (or Jinja2 template) within a project's `cmd/` directory (e.g., `projects/<project_name>/cmd/<command_name>.md` or `projects/<project_name>/cmd/<command_name>.md.j2`).
3.  **Read Command File:** Use the `read_file` tool to read the content of the specified command file.
4.  **Template Rendering (if .j2 file):**
    *   If the file ends with `.md.j2`, it's a Jinja2 template.
    *   **Check for `jinja2-cli`:** Execute `jinja2 --version` to check if the `jinja2-cli` tool is installed.
    *   **If `jinja2-cli` is installed:**
        *   Identify necessary context variables (e.g., `project_name` from the active project context).
        *   Construct the `jinja2` command to render the template. Example: `jinja2 projects/<project_name>/cmd/<command_name>.md.j2 -D project_name=<active_project_name>`
        *   Execute the command using `execute_command`. The output of this command will be the rendered prompt.
    *   **If `jinja2-cli` is NOT installed (or rendering fails):**
        *   The LLM (Cline) must manually perform placeholder replacement. For example, replace `{{ project_name }}` with the active project's name.
        *   This manual replacement should be robust enough to handle common template variables.
5.  **Execute Command:** Treat the (potentially rendered) content from the command file as the user's prompt for the current turn and proceed with the agent loop (Analyze Events, Select Tools, etc.).

## Command Structure and Storage

-   **Location:** Command files are stored in the `cmd/` directory at the root of each project: `projects/<project_name>/cmd/`.
-   **Naming:**
    *   Static command files: `command-name.md`
    *   Jinja2 templated command files: `command-name.md.j2`
-   **Format:** Command files are plain Markdown (`.md`) or Jinja2-templated Markdown (`.md.j2`). The (rendered) content of the file is the prompt that Cline will execute.

## Invocation

-   Project commands are invoked using the `@` symbol followed immediately by the relative path to the command file from the ClineAGI root directory.
-   Syntax: `@<path_to_command_file>` (e.g., `@projects/my-project/cmd/status.md` or `@projects/my-project/cmd/status.md.j2`)
-   Example: `@projects/my-web-app/cmd/run-tests.md.j2`

## Custom Commands

-   Users can create their own custom commands for a project by adding new Markdown files to the project's `cmd/` directory.
-   These custom commands can contain any valid prompt instructions or workflows for Cline.

## Baseline Commands (Provided by `ClineAGI-Project-Template`)

The `ClineAGI-Project-Template` includes a set of standard baseline commands in its `cmd/` directory. When a new project is initialized, these commands are copied into the new project's `cmd/` folder.

-   `enter-project-context.md`: Prompt to guide Cline to switch to a specified project context.
-   `exit-project-context.md`: Prompt to guide Cline to return to the global/core context.
-   `update-memory-bank.md`: Prompt to initiate the memory bank update workflow for the current context.
-   `container-status.md`: Prompt to check the status of the active project's container (e.g., `projects/{{PROJECT_NAME}}`).
-   `container-start.md`: Prompt to start the active project's container (e.g., `projects/{{PROJECT_NAME}}`).
-   `container-stop.md`: Prompt to stop the active project's container (e.g., `projects/{{PROJECT_NAME}}`).
-   `container-build.md`: Prompt to build/rebuild the active project's container image (e.g., `projects/{{PROJECT_NAME}}`).
-   `container-remove.md`: Prompt to remove the active project's container (after stopping) (e.g., `projects/{{PROJECT_NAME}}`).

## Dependencies

-   Availability of the `read_file` tool.
-   Mechanism within Cline's agent loop to recognize the `@` prefix and load the specified file content as the next prompt.
-   Project context management workflow (`100-01_project-context-switching.md`).
