# Merged Patterns Directory Overview

## 1. Purpose Statement

This directory, `prompts/merged_patterns/`, contains prompt files that define "merged patterns." These patterns consolidate functionality from multiple, more granular individual patterns into broader categories. They are designed to provide a more streamlined and intuitive way for Cline to access its capabilities for common high-level tasks, allowing it to apply the most relevant specific sub-patterns based on user input and context.

## 2. Scope & Content Guidelines

### Content That Belongs Here:
*   **Merged Pattern Definitions (Markdown `.md`):** Files that outline a broad task category (e.g., "Summarize Content," "Analyze Content").
*   Each file typically describes the general goal, the types of inputs it can handle, the kinds of outputs it can produce, and may internally reference or invoke more specific patterns or use cases.
*   **Naming Convention:** Files generally follow a `996-NN_descriptive-name.md` pattern.

### Content That Does NOT Belong Here:
*   **Highly Specific Use Case Guides:** These belong in `prompts/use_cases/`.
*   **Core Agent Logic Prompts:** These belong in `prompts/agent_prompts/`.
*   **General Workflow Definitions:** These belong in `prompts/workflows/` or `prompts/core_workflows/`.

## 3. Key Files Overview

As of the last update, this directory contains the following merged patterns:

*   **`996-00_summarize-content.md`**: For generating concise summaries of various content types.
*   **`996-01_analyze-content.md`**: For analyzing and evaluating different types of content.
*   **`996-02_create-content.md`**: For generating new content, such as code, reports, and designs.
*   **`996-03_extract-information.md`**: For extracting specific data and insights from content.
*   **`996-04_visualize-data-concepts.md`**: For creating visual representations of data and ideas.
*   **`996-05_improve-refine-content.md`**: For enhancing and refining existing content.
*   **`996-06_utility-helper-tasks.md`**: For performing general utility and helper tasks.

*(This list should be kept current as merged patterns are added, modified, or renumbered.)*

## 4. Usage & Maintenance

*   These merged patterns are intended to be high-level entry points for common categories of tasks.
*   Cline can use these patterns to understand the general intent and then select more specific sub-patterns or use cases as needed.
*   The `prompt_inventory.yaml` file should include entries for these merged patterns to make them discoverable.
*   This `README.md` should be updated if the structure or key files within this directory change significantly.

---
Last Updated: 2025-05-11
