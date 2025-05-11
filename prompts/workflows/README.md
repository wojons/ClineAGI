# Workflows Directory Overview

## 1. Purpose Statement

This directory, `prompts/workflows/`, contains prompt files that define specific, often multi-step, workflows for common user requests or operational procedures that Cline, the AI Software Engineering Assistant, can execute. These are generally more task-oriented than the foundational processes in `prompts/core_workflows/` or the strict procedures in `prompts/protocols/`.

## 2. Scope & Content Guidelines

### Content That Belongs Here:
*   **Workflow Definitions (Markdown `.md`):** Files detailing the steps, logic, and prompts for user-facing or task-specific workflows.
    *   Examples include workflows for conducting research, managing a to-do list, analyzing comments, or generating summaries.
*   **Naming Convention:** Files may follow a `002-NN_workflow-descriptive-name.md` pattern, indicating their relation to general operational workflows.

### Content That Does NOT Belong Here:
*   **Core System Workflows:** These belong in `prompts/core_workflows/`.
*   **Formal, Complex Protocols:** These belong in `prompts/protocols/`.
*   **Specific Use Case Guides:** While a workflow might involve several use cases, the detailed prompts for individual use cases belong in `prompts/use_cases/`.
*   **Active Operational Rules (`.clinerules`):** If a workflow is primarily defined by a sequence of tool calls and logic rather than descriptive prompts for the LLM, it might be better suited as a `.clinerule` in `.clinerules/002_workflow/`.

## 3. Key Files Overview

As of the last update, this directory contains the following key files:

*   **`002-00_workflow-cline-for-research.md`**: Defines a workflow for how Cline should conduct research tasks.
*   **`002-03_workflow-todo-list.md`**: Outlines a workflow for managing to-do lists.
*   **`002-04_workflow-agility-story.md`**: A workflow related to agile methodologies or story creation/management.
*   **`002-05_workflow-analyze-comments.md`**: Defines a workflow for analyzing comments.
*   **`002-06_workflow-create-5-sentence-summary.md`**: A workflow for generating concise five-sentence summaries.
*   **`002-07_workflow-extract-jokes.md`**: Defines a workflow for extracting jokes from content.

*(This list should be kept current as workflows are added, modified, or renumbered.)*

## 4. Usage & Maintenance

*   Cline can reference these workflow prompts when a user's request aligns with a defined workflow.
*   These help standardize common multi-step tasks.
*   The `prompt_inventory.yaml` file should include entries for these workflows to make them discoverable.
*   This `README.md` should be updated if the structure or key files within this directory change significantly.

---
Last Updated: 2025-05-11
