# 002_workflow Directory Overview

## 1. Purpose Statement

This directory, `002_workflow/`, contains `.clinerules` that define specific, often multi-step, workflows for common user requests or operational procedures. These workflows guide Cline through a sequence of actions to achieve a particular goal. They are more specific than the foundational behaviors defined in `000_core/` but are generally applicable across various contexts rather than being tied to a single project or technology.

## 2. Scope & Content Guidelines

### Content That Belongs Here:
*   **Workflow Definitions (Markdown `.md`):** Each file should define a distinct workflow.
*   **Naming Convention:** Files should follow the `002-NN_workflow-descriptive-name.md` pattern.
*   **Content of Workflow Files:** Each rule should clearly outline:
    *   The **Objective** of the workflow.
    *   The **Trigger** conditions (when this workflow should be activated).
    *   The **Workflow Steps** in a logical sequence, detailing actions, tool usage, and decision points.
    *   Any **Dependencies** on other rules, tools, or system states.
    *   **Notes** or considerations for the workflow's execution.

### Content That Does NOT Belong Here:
*   **Core Foundational Rules:** These belong in `000_core/`.
*   **Project-Specific Workflows:** These should be in the `.clinerules/` directory of the specific project in `projects/`.
*   **Technology-Specific Guides or Workflows:** If a workflow is tightly coupled with a particular technology, it might be better placed in a dedicated tech-specific guide within `prompts/tech_specific_guides/` or a more specialized `.clinerules` category if it's an active rule.
*   **Simple, Single-Step Rules:** This directory is for more involved, sequential processes.

## 3. Key Files Overview

As of the last update, this directory contains the following workflows:

*   **`002-02_workflow-planning-mode.md`**: Defines the workflow and behavior for Cline when operating in PLAN MODE, including information gathering, solution architecture, and plan presentation.
*   **`002-08_workflow-project-commands.md`**: Defines the system for creating, storing, and invoking project-specific commands using Markdown files as prompts, accessible via a shorthand path (e.g., `@projects/my-project/cmd/my-command.md`).

*(This list should be kept current as workflows are added, modified, or renumbered.)*

## 4. Usage & Maintenance

*   These workflow rules are loaded by Cline and used to guide its execution when the trigger conditions are met.
*   New workflows should be clearly defined, following the established structure.
*   This `README.md` should be updated if the overall purpose or key workflows within this directory change significantly.

---
Last Updated: 2025-05-11
