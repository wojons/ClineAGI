# .clinerules Directory Overview

## 1. Purpose Statement

This directory, `.clinerules/`, serves as the central repository for all rules, protocols, workflows, and guidelines that govern the behavior and operational logic of Cline, the AI Software Engineering Assistant. These rules are critical for ensuring consistent, predictable, and effective task execution across various contexts.

## 2. Scope & Content Guidelines

### Content That Belongs Here:
*   **Markdown Files (`.md`):** All rules are defined in Markdown.
*   **Naming Convention:** Files generally follow a `NNN-MM_descriptive-name.md` pattern, where `NNN` is a category prefix (e.g., `000` for core, `100` for project management) and `MM` is a sub-identifier.
*   **Categorized Subdirectories:** Rules are organized into subdirectories based on their domain or area of application.
*   **Rule Definitions:** Each file should define a specific rule, workflow, protocol, or set of guidelines. This includes:
    *   Core operational logic.
    *   Workflow definitions for common tasks.
    *   Protocols for complex interactions (e.g., MCP development).
    *   Coding standards and best practices.
    *   Guidelines for project management and containerization.
    *   Meta-rules about the prompt system itself.

### Content That Does NOT Belong Here:
*   **General Project Documentation:** High-level project briefs, product context, system patterns, tech context, and progress tracking belong in the `memory-bank/` directory.
*   **Prompt Templates & Use Cases:** Specific prompt examples, templates for content generation, and detailed use case guides belong in the `prompts/` directory.
*   **Project-Specific Code or Artifacts:** Code, binaries, or other project deliverables should reside within the `projects/` subdirectories or other relevant project-specific locations.
*   **Log Files or Temporary Data:** These should be stored in `design/logs/` or other appropriate temporary/log locations.
*   **User-Specific Intake Files:** Raw intake files for processing belong in the `intake/` directory.

## 3. Subdirectory Overview

The `.clinerules/` directory is organized into the following main categories:

*   **`000_core/`**: Contains fundamental rules defining Cline's core behavior, self-improvement mechanisms, communication style, tool usage, error handling, and other foundational protocols. This also includes the overview of the prompt system (`000-99_prompt_system_overview.md`).
*   **`002_workflow/`**: Defines specific, often multi-step, workflows for common user requests or operational procedures that are not part of the absolute core but are frequently used.
*   **`005_coding-guidelines/`**: Houses rules related to coding best practices, style guides, and conventions Cline should follow when generating or modifying code.
*   **`006_integrated_tooling/`**: Contains guidelines for how Cline should interact with non-MCP tools that are integrated into the project environment (e.g., shell scripts, package manager binaries).
*   **`100_clineagi_projects/`**: Defines rules and workflows specifically for managing user projects within the `ClineAGI/projects/` directory, including initialization, context switching, version control, and container interaction.
*   **`101_project_management/`**: Focuses on rules related to broader project management tasks, such as task tracking with external systems (e.g., GitHub Issues).
*   **`200_containers/`**: Contains rules and workflows for managing containerized environments for projects, including Dockerfile management, image building, runtime operations, networking, and dependency management within containers.

*(Note: Some numbered categories like `001_reference`, `003_protocol`, `004_tech-specific`, `996_merged_patterns`, and `998_patterns` were recently removed or had their contents relocated to the `prompts/` directory as part of a reorganization effort to better distinguish between active operational rules and prompt/guidance resources.)*

## 4. Usage & Maintenance

*   When Cline starts a task, it loads relevant `.clinerules` based on the global context and any active project-specific context.
*   These rules are actively used to guide decision-making, tool selection, and response generation.
*   Modifications to these rules should be done carefully, as they directly impact Cline's behavior.
*   New rules should follow the established naming conventions and be placed in the appropriate subdirectory.
*   This `README.md` should be updated if the structure or primary purpose of the `.clinerules` directory changes significantly.

---
Last Updated: 2025-05-11
