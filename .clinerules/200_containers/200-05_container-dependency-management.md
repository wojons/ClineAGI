---
description: Guidelines for installing and managing dependencies inside user project containers.
author: Cline (AI Assistant)
version: 1.0
tags: ["workflow", "container", "dependencies"]
globs: ["projects/*"]
---

# Container Dependency Management Workflow

## Objective

To guide Cline in assisting the user with installing and managing project dependencies within their active project's dedicated container.

## Trigger

This workflow is triggered when the user, while a project context is active, requests to:
- Install dependencies for their project.
- Add a new dependency to their project.
- Update existing dependencies.
- Install tools or packages inside the container.

## Workflow

1.  **Confirm Active Project Context:** Ensure that a specific project context is currently active (as determined by the `100-01_project-context-switching.md` workflow). If no project context is active, inform the user that this workflow applies only within an active project and offer to help them switch to or create a project.
2.  **Ensure Container is Running:** For installing dependencies inside the container, the container must be running. Check the container status first if necessary using the `200-03_container-runtime-operations.md` workflow. If not running, offer to start it.
3.  **Identify User Request:** Determine the specific dependency management action the user wants to perform (install all, add specific, update, install tool).
4.  **Determine Package Manager:** Identify the package manager used by the project or the container's base image (e.g., `apt`, `apk`, `yum`, `npm`, `yarn`, `pnpm`, `pip`, `poetry`, `bundler`, `cargo`). This may require inspecting the Dockerfile or asking the user.
5.  **Execute Action:** Use the `execute_command` tool with `docker exec -i <container_name>` to run the appropriate package manager command inside the container.

    *   **Install All Dependencies:**
        *   Command example (npm): `docker exec -i clineagi-project-<active_project_name> npm install`
        *   Command example (pip): `docker exec -i clineagi-project-<active_project_name> pip install -r requirements.txt`
        *   Command example (apt): `docker exec -i clineagi-project-<active_project_name> apt-get update && docker exec -i clineagi-project-<active_project_name> apt-get install -y <package_list_from_user_or_analysis>`
    *   **Add Specific Dependency:**
        *   Ask the user for the dependency name and version (if needed).
        *   Command example (npm): `docker exec -i clineagi-project-<active_project_name> npm install <dependency_name>`
        *   Command example (pip): `docker exec -i clineagi-project-<active_project_name> pip install <dependency_name>`
    *   **Update Dependencies:**
        *   Command example (npm): `docker exec -i clineagi-project-<active_project_name> npm update`
        *   Command example (pip): `docker exec -i clineagi-project-<active_project_name> pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U` (Example for updating all installed packages)
    *   **Install Tool/Package (System Level):**
        *   Ask the user for the package name.
        *   Command example (apt): `docker exec -i clineagi-project-<active_project_name> apt-get update && docker exec -i clineagi-project-<active_project_name> apt-get install -y <package_name>`

6.  **Inform User:** Inform the user that the dependency management command has been executed inside the container. If the command produces output, present it to the user.

## Dependencies

*   Active project context is set.
*   Availability of the `execute_command` tool.
*   Availability of the `ask_followup_question` tool (for clarifying dependencies or package manager).
*   Docker (or alternative container technology) must be installed and running.
*   The project's container must exist and be running.

## Notes

*   Cline needs to be able to identify the correct package manager based on the project type or Dockerfile. This may require adding logic or asking the user.
*   System-level package installations inside the container might require `apt-get update` first.
*   The `-i` flag in `docker exec` is important for interactive commands or commands that expect input.
