# 100_clineagi_projects Directory Overview

## 1. Purpose Statement

This directory, `100_clineagi_projects/`, contains `.clinerules` that define workflows and guidelines specifically for managing user projects located within the main `ClineAGI/projects/` directory. These rules govern how Cline initializes new projects, switches context between them, manages project-specific rules and version control, and interacts with containerized environments for these projects.

## 2. Scope & Content Guidelines

### Content That Belongs Here:
*   **Project Lifecycle Management Rules (Markdown `.md`):** Rules detailing workflows for:
    *   Initializing new user projects (e.g., cloning from a template, setting up initial structure).
    *   Switching the active working context to a specific user project.
    *   Managing `.clinerules` within a specific project's directory.
    *   Handling Git version control operations within a project.
    *   Interacting with a project's dedicated container (if applicable).
    *   Deleting user projects.
*   **Guidance on Project Types:** Rules or pointers to guides that help Cline understand and adapt to different types of user projects (e.g., web applications, data science projects).
*   **Naming Convention:** Files should generally follow the `100-NN_descriptive-name.md` pattern.

### Content That Does NOT Belong Here:
*   **Core Operational Rules for ClineAGI System:** These belong in `000_core/`.
*   **General Workflows not specific to project management:** These belong in `002_workflow/`.
*   **Container Technology Setup/Management Rules (Generic):** General rules for Docker, etc., belong in `200_containers/`. This directory focuses on *project interaction* with containers.
*   **Actual User Project Files or Code:** These reside in `ClineAGI/projects/<project_name>/`.

## 3. Key Files Overview

As of the last update, this directory contains the following key files:

*   **`100-00_project-initialization.md`**: Guidelines for initializing a new user project.
*   **`100-01_project-context-switching.md`**: Guidelines for managing the active project context.
*   **`100-02_project-clinerules-management.md`**: Guidelines for managing project-specific `.clinerules`.
*   **`100-03_project-version-control.md`**: Guidelines for assisting users with Git operations within their projects.
*   **`100-04_project-container-interaction.md`**: Guidelines for interacting with a user project's dedicated container.
*   **`100-05_project-deletion.md`**: Guidelines for deleting a user project.
*   **`100-06_project-type-specific-guidance.md`**: Guidelines for incorporating project type-specific guidance.

*(This list should be kept current as rules are added, modified, or renumbered.)*

## 4. Usage & Maintenance

*   These rules are activated when Cline is performing operations related to the management of or work within a specific user project in the `ClineAGI/projects/` directory.
*   They ensure consistent project setup, context handling, and interaction patterns.
*   This `README.md` should be updated if the structure or key guidelines within this directory change significantly.

---
Last Updated: 2025-05-11
