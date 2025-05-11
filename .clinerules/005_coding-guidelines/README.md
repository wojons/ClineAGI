# 005_coding-guidelines Directory Overview

## 1. Purpose Statement

This directory, `005_coding-guidelines/`, houses `.clinerules` that define coding best practices, style guides, and specific conventions that Cline, the AI Software Engineering Assistant, should adhere to when generating or modifying code. These rules ensure consistency, quality, and maintainability in the code produced by Cline.

## 2. Scope & Content Guidelines

### Content That Belongs Here:
*   **Coding Best Practice Rules (Markdown `.md`):** Files defining general best practices applicable across various programming languages and paradigms.
*   **Language-Specific Style Guides:** Rules detailing style conventions for specific languages (e.g., Python PEP 8, JavaScript Standard Style). (Future - if needed)
*   **Framework-Specific Conventions:** Guidelines for coding within particular frameworks (e.g., React component patterns, Django model conventions). (Future - if needed)
*   **Naming Convention:** Files should generally follow the `005-NN_descriptive-name.md` pattern.

### Content That Does NOT Belong Here:
*   **Core Operational Rules:** These belong in `000_core/`.
*   **General Workflows:** These belong in `002_workflow/`.
*   **Project-Specific Coding Standards:** If a user project has its own unique coding standards that deviate from or extend these general guidelines, those should be defined in the `.clinerules/` directory of that specific project.
*   **Tool-Specific Usage for Linters/Formatters:** While these guidelines inform what linters/formatters might enforce, rules about *how to run* those tools belong in `006_integrated_tooling/` or project-specific rules.

## 3. Key Files Overview

As of the last update, this directory contains the following key file:

*   **`005-00_coding-best-practices.md`**: Defines a set of general coding best practices for Cline, including commenting, mimicking existing code styles, dependency checking, component creation, handling quotes, avoiding over-engineering, and debugging practices.

*(This list should be kept current as new guidelines are added or existing ones are refined.)*

## 4. Usage & Maintenance

*   Cline consults these guidelines when generating new code or modifying existing code to ensure adherence to established best practices and styles.
*   These rules help maintain code quality and consistency across different tasks and projects (unless overridden by project-specific rules).
*   New coding guidelines or language-specific style guides should be added here as needed.
*   This `README.md` should be updated if the structure or key guidelines within this directory change significantly.

---
Last Updated: 2025-05-11
