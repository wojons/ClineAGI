# Output Patterns Directory Overview

## 1. Purpose Statement

This directory, `prompts/output_patterns/`, stores prompt files that define specific structures, formats, and guidelines for generating complex or standardized outputs. These patterns help ensure that Cline produces well-organized, consistent, and high-quality results for tasks requiring specific output formats, such as research reports, technical documentation, or structured data.

## 2. Scope & Content Guidelines

### Content That Belongs Here:
*   **Output Pattern Definitions (Markdown `.md`):** Files detailing the desired structure, sections, styling, and content requirements for specific types of outputs.
    *   These patterns guide Cline in formatting its responses or generated files.
*   **Naming Convention:** Files may follow a `99X-NN_pattern-descriptive-name.md` pattern (e.g., `998-NN` for general patterns, though this can be flexible).

### Content That Does NOT Belong Here:
*   **General Content Generation Use Cases:** These belong in `prompts/use_cases/`. Output patterns focus on the *structure* of the output, while use cases focus on the *content generation task* itself.
*   **Core Agent Logic Prompts:** These belong in `prompts/agent_prompts/`.
*   **Merged Patterns for Broad Tasks:** These belong in `prompts/merged_patterns/`.

## 3. Key Files Overview

As of the last update, this directory contains the following key file:

*   **`998-00_pattern-structured-research-report.md`**: Defines a pattern for generating structured research reports, including guidelines for sections like Abstract, Introduction, Methodology, Results, Discussion, Conclusion, and References, as well as style and citation notes.

*(This list should be kept current as output patterns are added, modified, or renumbered.)*

## 4. Usage & Maintenance

*   Cline can reference these patterns when a task requires generating output in a specific, predefined format.
*   These patterns help maintain consistency and quality in generated documents and responses.
*   The `prompt_inventory.yaml` file should include entries for these output patterns to make them discoverable.
*   This `README.md` should be updated if the structure or key files within this directory change significantly.

---
Last Updated: 2025-05-11
