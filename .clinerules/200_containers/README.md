# 200_containers Directory Overview

## 1. Purpose Statement

This directory, `200_containers/`, contains `.clinerules` that define workflows and guidelines for managing containerized environments for user projects, primarily focusing on Docker as the default technology. These rules cover the lifecycle of containerization, from technology selection and Dockerfile creation to image management and runtime operations.

## 2. Scope & Content Guidelines

### Content That Belongs Here:
*   **Containerization Workflows (Markdown `.md`):** Rules detailing processes for:
    *   Selecting and setting up containerization technology (e.g., Docker).
    *   Creating, understanding, and modifying Dockerfiles.
    *   Building, tagging, and managing container images.
    *   Running, stopping, inspecting, and executing commands in containers.
    *   Managing container networking (e.g., port mapping).
    *   Handling dependencies within containers.
    *   Guidance on selecting appropriate base images.
*   **Naming Convention:** Files should generally follow the `200-NN_descriptive-name.md` pattern.

### Content That Does NOT Belong Here:
*   **Core Operational Rules for ClineAGI System:** These belong in `000_core/`.
*   **Project-Specific Container Configurations:** Dockerfiles or specific container settings for a user project belong within that project's directory (e.g., `projects/<project_name>/Dockerfile`). This directory is for *general rules about managing* containerization.
*   **Rules for Interacting with an Existing Project Container:** While this directory covers setting up containers, rules specifically about how Cline interacts with an *already running and configured* project container are in `100_clineagi_projects/100-04_project-container-interaction.md`.

## 3. Key Files Overview

As of the last update, this directory contains the following key files:

*   **`200-00_container-technology-selection.md`**: Guidelines for assisting users in selecting and setting up containerization technology.
*   **`200-01_dockerfile-management.md`**: Guidelines for creating, understanding, and modifying Dockerfiles.
*   **`200-02_container-image-management.md`**: Guidelines for building, tagging, and managing container images.
*   **`200-03_container-runtime-operations.md`**: Guidelines for running, stopping, inspecting, and executing commands in containers.
*   **`200-04_container-networking.md`**: Guidelines for managing container networking, primarily port mapping.
*   **`200-05_container-dependency-management.md`**: Guidelines for installing and managing dependencies inside containers.
*   **`200-06_containerized-project-workflow.md`**: Guidelines for the overall workflow when working with a containerized user project.
*   **`200-07_base-image-selection-guidance.md`**: Guidelines for selecting appropriate base Docker images.

*(This list should be kept current as rules are added, modified, or renumbered.)*

## 4. Usage & Maintenance

*   These rules are activated when Cline is assisting with tasks related to setting up or managing containerized environments for user projects.
*   They help ensure a consistent and best-practice approach to containerization.
*   This `README.md` should be updated if the structure or key guidelines within this directory change significantly.

---
Last Updated: 2025-05-11
