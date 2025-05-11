# Use Cases Directory Overview

## 1. Purpose Statement

This directory, `prompts/use_cases/`, serves as a comprehensive library of detailed prompt files, each tailored to a specific task or "use case" that Cline, the AI Software Engineering Assistant, can perform. These use case guides provide structured prompts, examples, and context to help Cline effectively execute a wide variety of content creation, management, analysis, and development tasks.

## 2. Scope & Content Guidelines

### Content That Belongs Here:
*   **Specific Use Case Guides (Markdown `.md`):** Each file should define a distinct, actionable use case.
    *   Content typically includes:
        *   A clear objective for the use case.
        *   The types of input Cline might expect.
        *   Detailed prompt structures, often incorporating placeholders for user-specific information.
        *   Examples of desired outputs.
        *   Any relevant context, constraints, or best practices for that specific task.
*   **Categorized Subdirectories:** Use cases are organized into logical subdirectories based on their domain or primary function (e.g., `content-creation-and-management/`, which itself contains further subcategories).
*   **Naming Convention:** Files should be named descriptively based on the use case (e.g., `code-snippet-generation.md`, `content-summarization.md`).

### Content That Does NOT Belong Here:
*   **General Prompting Techniques or Styles:** These belong in `prompts/prompt_styles/`.
*   **Core Agent Logic Prompts:** These belong in `prompts/agent_prompts/`.
*   **Broad Workflow Definitions:** While a use case might be part of a larger workflow, the definitions for those broader workflows belong in `prompts/workflows/` or `prompts/core_workflows/`.
*   **Reference Documents or Tech-Specific Guides:** These belong in `prompts/reference_documents/` or `prompts/tech_specific_guides/` respectively.

## 3. Key Subdirectories Overview

As of the last update, this directory's primary subdirectory is:

*   **`content-creation-and-management/`**: Contains a vast array of use cases related to generating, editing, analyzing, and managing various forms of content. This subdirectory is further organized into more granular categories such as:
    *   `brainstorming-idea-generation/`
    *   `code-generation-software-development/`
    *   `content-editing-and-refinement/`
    *   `creative-writing-storytelling/`
    *   `data-analysis-reporting/`
    *   `educational-content-courseware-development/`
    *   `legal-business-document-drafting/`
    *   `long-form-written-content-generation-and-augmentation/`
    *   `marketing-sales-content-strategy-planning/`
    *   `personal-productivity-organization/`
    *   `short-form-and-micro-content-creation/`
    *   `specialized-creative-content-forms/`
    *   `technical-writing-documentation/`

*(This list and the contents of subdirectories should be kept current as use cases are added, modified, or reorganized.)*

## 4. Usage & Maintenance

*   Cline leverages these use case guides when a user's request maps to a defined task.
*   The `prompt_inventory.yaml` file is critical for making these use cases discoverable and dynamically loadable by Cline based on triggers and context.
*   New use cases should be added to the appropriate subdirectory and meticulously documented.
*   This `README.md` should be updated if the overall structure or primary categories within the `prompts/use_cases/` directory change significantly.

---
Last Updated: 2025-05-11
