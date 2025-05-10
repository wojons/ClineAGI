---
description: Guidelines for managing container networking, primarily port mapping, for user projects.
author: Cline (AI Assistant)
version: 1.0
tags: ["workflow", "container", "networking"]
globs: ["projects/*"]
---

# Container Networking Workflow

## Objective

To guide Cline in assisting the user with configuring network settings for their project's container, focusing on port mapping to expose container ports to the host.

## Trigger

This workflow is triggered when the user, while a project context is active, requests to:
- Expose a port from their container.
- Map a container port to a host port.
- Configure networking for their project's container.

## Workflow

1.  **Confirm Active Project Context:** Ensure that a specific project context is currently active (as determined by the `100-01_project-context-switching.md` workflow). If no project context is active, inform the user that this workflow applies only within an active project and offer to help them switch to or create a project.
2.  **Identify User Request:** Determine the specific networking requirement (e.g., map container port 80 to host port 8080).
3.  **Identify Container Name:** The container name for a project should follow a predictable pattern, e.g., `clineagi-project-<active_project_name>`.
4.  **Determine Port Mapping:** Ask the user for the container port and the desired host port. The format for Docker is `-p <host_port>:<container_port>`.
5.  **Execute Action:**
    *   **If running a new container:** Include the `-p` flag(s) in the `docker run` command as part of the `200-03_container-runtime-operations.md` workflow.
    *   **If modifying a running container:** Inform the user that port mappings cannot be changed on a running container. The container must be stopped and re-run with the new port mappings. Guide the user through stopping and re-running the container using the `200-03_container-runtime-operations.md` workflow, ensuring the new `-p` flags are included in the `docker run` command.
6.  **Inform User:** Inform the user that the port mapping has been configured (or that the container needs to be re-run).

## Dependencies

*   Active project context is set.
*   Availability of the `execute_command` tool.
*   Availability of the `ask_followup_question` tool (for clarifying port mappings).
*   Dependency on `200-03_container-runtime-operations.md` for running/re-running containers.
*   Docker (or alternative container technology) must be installed and running.

## Notes

*   Port mappings are typically defined when the container is first run.
*   Multiple `-p` flags can be used for multiple port mappings.
