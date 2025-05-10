---
description: Guidelines for interacting with a user project's dedicated container within ClineAGI.
author: Cline (AI Assistant)
version: 1.0
tags: ["workflow", "project-management", "container"]
globs: ["projects/*"]
---

# Project Container Interaction Workflow

## Objective

To guide Cline in interacting with the dedicated container associated with the active user project, enabling isolated execution of project-specific commands and workflows.

## Trigger

This workflow is triggered when the user, while a project context is active, requests to:
- Execute a command inside the project's container.
- Start or stop the project's container.
- Check the status of the project's container.
- Install dependencies inside the project's container.
- Perform any action that requires an isolated environment provided by the container.

## Workflow

1.  **Confirm Active Project Context:** Ensure that a specific project context is currently active (as determined by the `100-01_project-context-switching.md` workflow). If no project context is active, inform the user that this workflow applies only within an active project and offer to help them switch to or create a project.
2.  **Identify User Request:** Determine the specific container action the user wants to perform.
3.  **Identify Container Name:** The container name for a project should follow a predictable pattern, e.g., `clineagi-project-<project_name>`. Confirm this naming convention or ask the user if a different name is used.
4.  **Ensure Container is Running (if required):** For actions like `docker exec`, the container must be running. Check the container status first if necessary. If not running, offer to start it using the `200-03_container-runtime-operations.md` workflow.
5.  **Execute Action:** Use the `execute_command` tool to run the appropriate Docker command targeting the project's container. Prepend the command with `cd projects/<active_project_name>/ &&` if the command needs to be run from the project directory (e.g., `docker build`, `docker run`), or just use the Docker command directly if it's a global command like `docker exec`.

    *   **Execute Command Inside Container:**
        *   Command: `docker exec -i clineagi-project-<active_project_name> <command_to_execute_inside_container>`
        *   Note: The `-i` flag is important for interactive commands.
    *   **Start Container:**
        *   Refer to the `200-03_container-runtime-operations.md` workflow.
    *   **Stop Container:**
        *   Refer to the `200-03_container-runtime-operations.md` workflow.
    *   **Check Container Status:**
        *   Command: `docker ps -a --filter name=clineagi-project-<active_project_name>`
    *   **Install Dependencies Inside Container:**
        *   This will typically involve using `docker exec` to run the appropriate package manager command (e.g., `apt-get install`, `npm install`, `pip install`) inside the container. Refer to the `200-05_container-dependency-management.md` workflow for specific guidance.
    *   **Other Container Actions:** For other container-related actions (build, run, etc.), refer to the relevant rules in the `200_containers/` directory.

6.  **Inform User:** Inform the user that the container command has been executed. If the command produces output, present it to the user.

## Dependencies

*   Active project context is set.
*   Availability of the `execute_command` tool.
*   Availability of the `ask_followup_question` tool (for clarifying container name or status).
*   Docker (or alternative container technology) must be installed and running.
*   The project's container must exist (created via `200-03_container-runtime-operations.md`).
*   Dependencies on rules in the `200_containers/` directory.

## Notes

*   This rule focuses on interacting with an *existing* project container. Rules in `200_containers/` handle the creation and management of the container itself.
*   The default container name convention `clineagi-project-<project_name>` should be used unless specified otherwise.
