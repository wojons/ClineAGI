# Projects Directory Overview

## 1. Purpose Statement

This directory, `projects/`, serves as the primary workspace for all individual user-defined projects that Cline, the AI Software Engineering Assistant, actively works on. Each subdirectory within `projects/` represents a distinct, self-contained project. This structure allows for focused development, project-specific configurations, and clear separation of concerns between different user initiatives.

## 2. Scope & Content Guidelines

### Content That Belongs Here:
*   **Project Subdirectories:** The primary content of this directory is a set of subdirectories, where each subdirectory is a unique project.
    *   Examples: `my-web-app/`, `data-analysis-pipeline/`, `research-notes-project/`.
*   **Standard Project Structure (within each subdirectory):** Each project subdirectory should ideally follow the structure provided by the `ClineAGI-Project-Template`. This typically includes:
    *   Its own `memory-bank/` for project-specific context, progress tracking, and learnings.
    *   Its own `.clinerules/` for project-specific operational rules and workflows that augment or override global ClineAGI rules.
    *   Source code, assets, documentation, and any other files specific to that project.
    *   A `cmd/` directory for project-specific command prompts.
*   **This `README.md` file:** Provides an overview of the `projects/` directory itself.

### Content That Does NOT Belong Here:
*   **Global ClineAGI System Files:** Core `.clinerules` for Cline's general operation, the global `memory-bank/` for the ClineAGI system, and the main `prompts/` directory (including `prompt_inventory.yaml`) belong in their respective top-level directories within the ClineAGI root.
*   **Loose Files:** Individual files not associated with a specific project should not be placed directly in the `projects/` directory. All work should be organized within a named project subdirectory.
*   **Temporary or Log Files for the Core System:** These belong in `design/logs/`. Project-specific logs should be within the respective project's directory structure if needed.

## 3. Current Project Subdirectories

As of the last update, this directory contains the following projects:

*   `big-dogs/`
*   `clineagi-dev/`
*   `happy-friends/`
*   `sad-friends/`

*(This list should be manually updated or dynamically generated if a more sophisticated project listing mechanism is implemented, e.g., via `memory-bank/projects.md`)*

## 4. Usage & Maintenance

*   **Project Initialization:** New projects should be created here, ideally using the `100-00_project-initialization.md` clinerule, which leverages the `ClineAGI-Project-Template`.
*   **Context Switching:** When working on a task, Cline should identify and switch to the relevant project context using the `100-01_project-context-switching.md` clinerule. This ensures project-specific rules and memory are loaded.
*   **Version Control:** Each project subdirectory is intended to be its own independent Git repository. Users are encouraged to manage version control for their projects accordingly. Cline can assist with Git operations within an active project context as per `100-03_project-version-control.md`.
*   **Project Deletion:** Projects can be removed using the `100-05_project-deletion.md` clinerule.
*   This `README.md` should be updated if the overall purpose or management guidelines for the `projects/` directory change.

---
Last Updated: 2025-05-11
