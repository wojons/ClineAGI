---
description: Guidelines for building, tagging, and managing container images for user projects.
author: Cline (AI Assistant)
version: 1.0
tags: ["workflow", "container", "image"]
globs: ["projects/*/Dockerfile"]
---

# Container Image Management Workflow

## Objective

To guide Cline in building, tagging, and managing container images based on a project's Dockerfile.

## Trigger

This workflow is triggered when the user, while a project context is active, requests to:
- Build a container image for their project.
- Rebuild a container image after Dockerfile changes.
- Tag a container image.
- List existing container images.

## Workflow

1.  **Confirm Active Project Context:** Ensure that a specific project context is currently active (as determined by the `100-01_project-context-switching.md` workflow). If no project context is active, inform the user that this workflow applies only within an active project and offer to help them switch to or create a project.
2.  **Confirm Dockerfile Exists:** Ensure a Dockerfile exists in the project root (`projects/<active_project_name>/Dockerfile`). If not, suggest creating one using the `200-01_dockerfile-management.md` workflow.
3.  **Identify User Request:** Determine the specific image action the user wants to perform (build, rebuild, tag, list).
4.  **Execute Action:** Use the `execute_command` tool to run the appropriate Docker command within the active project's directory (`projects/<active_project_name>/`). Prepend the command with `cd projects/<active_project_name>/ &&`.

    *   **Build/Rebuild Image:**
        *   Determine the image name (e.g., `clineagi-project-<active_project_name>`).
        *   Command: `cd projects/<active_project_name>/ && docker build -t clineagi-project-<active_project_name> .`
        *   Inform the user the image build has started.
    *   **Tag Image:**
        *   Ask the user for the desired tag (e.g., `latest`, `v1.0.0`).
        *   Command: `docker tag clineagi-project-<active_project_name> clineagi-project-<active_project_name>:<tag>`
        *   Inform the user the image has been tagged.
    *   **List Images:**
        *   Command: `docker images` (or `docker images clineagi-project-<active_project_name>`)
        *   Present the list of images to the user.

5.  **Inform User:** Inform the user that the Docker command has been executed. If the command produces output, present it to the user.

## Dependencies

*   Active project context is set.
*   Availability of the `execute_command` tool.
*   Availability of the `ask_followup_question` tool (for clarifying tags).
*   Docker (or alternative container technology) must be installed and running.
*   A Dockerfile must exist in the project root.

## Notes

*   Image names will follow the convention `clineagi-project-<project_name>`.
*   Building an image requires the Docker daemon to be running.
