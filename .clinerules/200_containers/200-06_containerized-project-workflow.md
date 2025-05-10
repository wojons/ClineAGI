---
description: Guidelines for the overall workflow when working with a containerized user project.
author: Cline (AI Assistant)
version: 1.0
tags: ["workflow", "container", "project"]
globs: ["projects/*"]
---

# Containerized Project Workflow

## Objective

To provide a high-level overview of the typical steps involved when working with a user project that is managed within a dedicated container.

## Workflow

1.  **Project Initialization:**
    *   If starting a new project, use the `100-00_project-initialization.md` workflow to create the project directory, copy the template, and initialize Git.
    *   If working on an existing project, ensure the project context is set using the `100-01_project-context-switching.md` workflow.
2.  **Container Technology Setup:**
    *   If container technology (Docker, etc.) is not already set up, use the `200-00_container-technology-selection.md` workflow to assist the user with installation.
3.  **Dockerfile Management:**
    *   If a Dockerfile doesn't exist or needs modification, use the `200-01_dockerfile-management.md` workflow to create or update it. This includes selecting an appropriate base image using the `200-07_base-image-selection-guidance.md` workflow.
4.  **Container Image Management:**
    *   Build or rebuild the container image based on the Dockerfile using the `200-02_container-image-management.md` workflow. Tagging the image is also part of this step.
5.  **Container Runtime Operations:**
    *   Run the container for the first time, or start it if it's stopped, using the `200-03_container-runtime-operations.md` workflow. This includes configuring necessary port mappings using the `200-04_container-networking.md` workflow and setting up volume mounts (e.g., `projects/<active_project_name>:/app`).
    *   Use the `200-03_container-runtime-operations.md` workflow to stop, restart, or check the status of the container as needed.
6.  **Dependency Management (Inside Container):**
    *   Install or update project dependencies or system-level tools inside the running container using the `200-05_container-dependency-management.md` workflow.
7.  **Execute Commands (Inside Container):**
    *   Run project-specific commands (build, test, run scripts, access shell) within the isolated container environment using the `docker exec` command as guided by the `100-04_project-container-interaction.md` workflow.
8.  **Version Control:**
    *   Manage project code changes using Git operations (staging, committing, pushing, pulling) as guided by the `100-03_project-version-control.md` workflow.
9.  **Project-Specific Rules:**
    *   Manage project-specific `.clinerules` within the project directory using the `100-02_project-clinerules-management.md` workflow to tailor Cline's behavior for this specific project.

## Dependencies

*   All other rules in the `100_clineagi_projects/` and `200_containers/` directories.

## Notes

*   This workflow provides a general sequence. The user may jump between steps as needed (e.g., modify Dockerfile, rebuild image, restart container).
*   Cline's role is to guide the user through these steps and execute the necessary commands using the specific rules defined in this category.
