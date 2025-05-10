---
description: Guidelines for selecting appropriate base Docker images for user projects.
author: Cline (AI Assistant)
version: 1.0
tags: ["workflow", "container", "dockerfile", "image-selection"]
globs: ["projects/*/Dockerfile"]
---

# Base Image Selection Guidance Workflow

## Objective

To guide Cline in selecting an appropriate base Docker image (`FROM` instruction) for a user project's Dockerfile, considering project requirements and recommending lightweight options where suitable.

## Trigger

This workflow is triggered when:
- A new Dockerfile is being created for a project (as part of the `200-01_dockerfile-management.md` workflow).
- The user explicitly requests to change the base image of a project's Dockerfile.

## Workflow

1.  **Confirm Active Project Context:** Ensure that a specific project context is currently active (as determined by the `100-01_project-context-switching.md` workflow). If no project context is active, inform the user that this workflow applies only within an active project and offer to help them switch to or create a project.
2.  **Identify Project Requirements:**
    *   Analyze the project type (e.g., from `memory-bank/project_template_structures.md` if available, or ask the user).
    *   Identify the primary programming language(s) and necessary runtime environments (e.g., Python, Node.js, Java, Go, static HTML).
    *   Determine if any specific system-level dependencies or tools are required (e.g., compilers, databases, specific libraries).
3.  **Propose Base Image Options:**
    *   Based on the identified requirements, propose a few suitable base image options. Prioritize official images from Docker Hub.
    *   **Recommend Lightweight Options:** Suggest `*-slim` or `alpine` variants when possible (e.g., `python:3.9-slim`, `node:16-alpine`) and explain the benefits (smaller size, faster builds, reduced attack surface).
    *   **Suggest Full-Service Options:** Include images based on popular distributions like `ubuntu`, `debian`, or `centos` if the project requires a broader set of system tools or compatibility.
    *   **Consider Specific Frameworks/Technologies:** If the project uses a specific framework (e.g., Ruby on Rails, Django), suggest images tailored for that technology if available and appropriate.
    *   **Perform Web Search (if needed):** If the requirements are unusual or a clear base image isn't obvious, use the `brave_web_search` tool to research recommended base images for the specific technology stack or use case.
4.  **Ask User for Selection:** Present the proposed options to the user and ask them to select the desired base image.
5.  **Update Dockerfile:**
    *   Once the user selects an image, use the `replace_in_file` tool to update the `FROM` instruction in the project's Dockerfile (`projects/<active_project_name>/Dockerfile`). If creating a new Dockerfile, this will be the initial `FROM` line.
    *   Ensure the image tag (version) is included (e.g., `python:3.9-slim` instead of just `python`).
6.  **Inform User:** Inform the user that the base image has been set in the Dockerfile.

## Dependencies

*   Active project context is set.
*   Availability of `ask_followup_question` tool.
*   Availability of `replace_in_file` or `write_to_file` tool (depending on whether the Dockerfile exists).
*   Availability of `brave_web_search` tool for research.
*   Dependency on `200-01_dockerfile-management.md` for Dockerfile creation.

## Notes

*   Always include a specific version tag in the `FROM` instruction to ensure reproducible builds.
*   Educate the user on the trade-offs between lightweight and full-service images.
