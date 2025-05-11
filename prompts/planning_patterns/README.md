# Planning Patterns Directory Overview

## 1. Purpose Statement

This directory, `prompts/planning_patterns/`, is dedicated to storing prompt files that define specific patterns and strategies for task planning and decomposition. These patterns help Cline approach complex tasks in a structured manner, break them down into manageable sub-goals, and devise effective strategies for achieving the overall objective.

## 2. Scope & Content Guidelines

### Content That Belongs Here:
*   **Planning Pattern Definitions (Markdown `.md`):** Files detailing specific methodologies for planning and task breakdown.
    *   These patterns guide Cline in its PLAN MODE operations and in structuring its approach to complex problem-solving.
*   **Naming Convention:** Files may follow a `99X-NN_pattern-descriptive-name.md` pattern (e.g., `998-NN` for general patterns, though this can be flexible).

### Content That Does NOT Belong Here:
*   **General Workflow Definitions:** These belong in `prompts/workflows/` or `prompts/core_workflows/`. Planning patterns are more about the *meta-process* of planning itself.
*   **Core Agent Logic Prompts:** These belong in `prompts/agent_prompts/`.
*   **Specific Use Case Guides:** These belong in `prompts/use_cases/`.

## 3. Key Files Overview

As of the last update, this directory contains the following key file:

*   **`998-01_pattern-planning-working-backwards.md`**: Defines a planning pattern for breaking down complex tasks by starting from the desired end state and working backwards to identify necessary preceding steps and prerequisites.

*(This list should be kept current as planning patterns are added, modified, or renumbered.)*

## 4. Usage & Maintenance

*   Cline can reference these patterns when in PLAN MODE or when a task requires significant decomposition and strategic planning.
*   These patterns help ensure a methodical and effective approach to complex tasks.
*   The `prompt_inventory.yaml` file should include entries for these planning patterns to make them discoverable.
*   This `README.md` should be updated if the structure or key files within this directory change significantly.

---
Last Updated: 2025-05-11
