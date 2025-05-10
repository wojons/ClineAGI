---
description: Guidelines for creating, understanding, and modifying Dockerfiles for user projects.
author: Cline (AI Assistant)
version: 1.0
tags: ["workflow", "container", "dockerfile"]
globs: ["projects/*/Dockerfile"]
---

# Dockerfile Management Workflow

## Objective

To guide Cline in creating, understanding, and modifying Dockerfiles within user project directories to define the container environment.

## Trigger

This workflow is triggered when the user, while a project context is active, requests to:
- Create a Dockerfile for their project.
- Understand the contents of an existing Dockerfile.
- Modify an existing Dockerfile.
- Add specific instructions to a Dockerfile (e.g., install dependencies, set environment variables, copy files).

## Workflow

1.  **Confirm Active Project Context:** Ensure that a specific project context is currently active (as determined by the `100-01_project-context-switching.md` workflow). If no project context is active, inform the user that this workflow applies only within an active project and offer to help them switch to or create a project.
2.  **Identify User Request:** Determine the specific action the user wants to perform related to the Dockerfile (create, understand, modify).
3.  **Execute Action:**
    *   **Create Dockerfile:**
        *   If a Dockerfile doesn't exist in the project root (`projects/<active_project_name>/Dockerfile`), create a basic one.
        *   Use the `200-07_base-image-selection-guidance.md` workflow to help select an initial base image if the user hasn't specified one.
        *   Include basic instructions like setting a working directory (e.g., `WORKDIR /app`) and copying project files (`COPY . /app`).
        *   Use the `write_to_file` tool to create the file at `projects/<active_project_name>/Dockerfile`.
        *   Inform the user the Dockerfile has been created.
    *   **Understand Dockerfile:**
        *   Use the `read_file` tool to read the content of the Dockerfile at `projects/<active_project_name>/Dockerfile`.
        *   Present the content to the user and provide a summary or explanation of the key instructions (FROM, WORKDIR, COPY, RUN, CMD, EXPOSE, ENV, etc.).
    *   **Modify Dockerfile:**
        *   Ask the user for the specific changes they want to make.
        *   Use the `replace_in_file` or `write_to_file` tool as appropriate based on the nature and extent of the changes, targeting the file at `projects/<active_project_name>/Dockerfile`.
        *   Provide guidance on best practices for the requested changes (e.g., using multi-stage builds, minimizing layers, using specific versions for dependencies).
        *   Inform the user the Dockerfile has been modified.

## Dependencies

*   Active project context is set.
*   Availability of `write_to_file`, `read_file`, and `replace_in_file` tools.
*   Dependency on `200-07_base-image-selection-guidance.md` for base image selection.

## Notes

*   Dockerfiles are expected to be located at the root of the project directory (`projects/<active_project_name>/Dockerfile`).
*   Cline should provide explanations and guidance on Dockerfile best practices when creating or modifying the file.
