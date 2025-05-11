# Shared Templates Directory Overview

## 1. Purpose Statement

This directory, `prompts/shared_templates/`, is designed to store reusable prompt templates for common document types or content structures that Cline, the AI Software Engineering Assistant, might need to generate. These templates provide a standardized starting point and ensure consistency for frequently created artifacts.

## 2. Scope & Content Guidelines

### Content That Belongs Here:
*   **Reusable Document Templates (Markdown `.md`):** Files containing boilerplate structures, section outlines, or placeholder content for various types of documents.
    *   Examples: Templates for API documentation sections, standard email formats, report outlines, meeting agenda structures.
*   **Subdirectories for Categorization:** Templates can be organized into subdirectories based on their domain or type (e.g., `api-documentation/`, `emails/`).
*   **Naming Convention:** Files should be named descriptively based on the template's purpose (e.g., `endpoint-description-template.md`, `status-update-email-template.md`).

### Content That Does NOT Belong Here:
*   **Complete Use Case Guides:** While a template might be *used by* a use case, the full prompt guiding the entire use case belongs in `prompts/use_cases/`.
*   **Core Agent Logic Prompts:** These belong in `prompts/agent_prompts/`.
*   **Specific Output Patterns:** While templates define structure, more detailed output formatting rules belong in `prompts/output_patterns/`.

## 3. Key Subdirectories & Files Overview

As of the last update, this directory contains the following key subdirectories:

*   **`api-documentation/`**: Contains templates related to generating API documentation.
*   **`emails/`**: Contains templates for various types of email communications.

*(This list and the contents of subdirectories should be kept current as templates are added, modified, or reorganized.)*

## 4. Usage & Maintenance

*   Cline can reference these templates when a task involves generating a document of a known type.
*   These templates help ensure consistency, completeness, and efficiency in document creation.
*   The `prompt_inventory.yaml` file should include entries for these shared templates to make them discoverable and usable.
*   This `README.md` should be updated if the structure or key subdirectories/files within this directory change significantly.

---
Last Updated: 2025-05-11
