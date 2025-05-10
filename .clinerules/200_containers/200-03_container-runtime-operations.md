---
description: Guidelines for running, stopping, inspecting, and executing commands in user project containers.
author: Cline (AI Assistant)
version: 1.0
tags: ["workflow", "container", "runtime"]
globs: ["projects/*"]
---

# Container Runtime Operations Workflow

## Objective

To guide Cline in managing the lifecycle and interaction with the dedicated container for an active user project.

## Trigger

This workflow is triggered when the user, while a project context is active, requests to:
- Run the project's container.
- Start the project's container (if stopped).
- Stop the project's container.
- Restart the project's container.
- Check the status of the project's container.
- Execute a command inside the running container.

## Workflow

1.  **Confirm Active Project Context:** Ensure that a specific project context is currently active (as determined by the `100-01_project-context-switching.md` workflow). If no project context is active, inform the user that this workflow applies only within an active project and offer to help them switch to or create a project.
2.  **Identify User Request:** Determine the specific container runtime action the user wants to perform.
3.  **Identify Container Name:** The container name for a project should follow a predictable pattern, e.g., `clineagi-project-<active_project_name>`.
4.  **Execute Action:** Use the `execute_command` tool to run the appropriate Docker command. Prepend the command with `cd projects/<active_project_name>/ &&` if the command needs to be run from the project directory (e.g., `docker run`), or just use the Docker command directly if it's a global command like `docker ps` or `docker exec`.

    *   **Run Container (Initial Start):**
        *   Determine the image name (e.g., `clineagi-project-<active_project_name>`).
        *   Determine the container name (e.g., `clineagi-project-<active_project_name>`).
        *   Determine volume mount: `projects/<active_project_name>:/app` (or appropriate based on template/Dockerfile).
        *   Ask user for any necessary port mappings (e.g., `-p 8080:80`).
        *   Command: `cd projects/<active_project_name>/ && docker run -d --name clineagi-project-<active_project_name> -v projects/<active_project_name>:/app <port_mappings> clineagi-project-<active_project_name>` (Use `-d` for detached mode).
        *   Inform the user the container is starting.
    *   **Start Container (If Stopped):**
        *   Command: `docker start clineagi-project-<active_project_name>`
        *   Inform the user the container is starting.
    *   **Stop Container:**
        *   Command: `docker stop clineagi-project-<active_project_name>`
        *   Inform the user the container is stopping.
    *   **Restart Container:**
        *   Command: `docker restart clineagi-project-<active_project_name>`
        *   Inform the user the container is restarting.
    *   **Check Status:**
        *   Command: `docker ps -a --filter name=clineagi-project-<active_project_name>`
        *   Present the container status to the user.
    *   **Execute Command Inside Running Container:**
        *   Ensure container is running (check status first if unsure).
        *   Ask the user for the command to execute inside the container.
        *   Command: `docker exec -i clineagi-project-<active_project_name> <command_to_execute_inside_container>`
        *   Inform the user the command is being executed inside the container.

5.  **Inform User:** Inform the user that the Docker command has been executed. If the command produces output, present it to the user.

## Dependencies

*   Active project context is set.
*   Availability of the `execute_command` tool.
*   Availability of the `ask_followup_question` tool (for clarifying port mappings or commands to execute).
*   Docker (or alternative container technology) must be installed and running.
*   The project's container image must exist (built via `200-02_container-image-management.md`).

## Notes

*   The default container name convention `clineagi-project-<project_name>` should be used unless specified otherwise.
*   Volume mounts are crucial for accessing project code inside the container. The default mount point `/app` is used here, but the rule should be adaptable based on the project template/Dockerfile.
*   Running containers in detached mode (`-d`) is generally preferred for background services.
