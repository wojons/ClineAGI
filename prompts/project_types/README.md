# Project Types Directory Overview

## 1. Purpose Statement

This directory, `prompts/project_types/`, is intended to hold detailed prompt files and guidance specific to different kinds of software projects that Cline might work on (e.g., web server applications, data science projects, CLI tools, mobile apps, etc.). These prompts help Cline understand the common structures, technologies, best practices, and deliverables associated with each project type.

## 2. Scope & Content Guidelines

### Content That Belongs Here:
*   **Project Type Guides (Markdown `.md`):** Each file should focus on a specific type of software project.
    *   Content should include:
        *   Typical tech stacks and frameworks.
        *   Common directory structures and file organization.
        *   Key development phases and considerations.
        *   Best practices for that project type.
        *   Examples of common tasks or deliverables.
        *   Prompts or prompt snippets tailored to that project type.
*   **Naming Convention:** Files should be named descriptively based on the project type (e.g., `web-server-project.md`, `data-science-project.md`).

### Content That Does NOT Belong Here:
*   **General Workflow Definitions:** These belong in `prompts/workflows/` or `prompts/core_workflows/`.
*   **Specific Use Case Guides:** While a project type guide might reference use cases, the detailed use case prompts belong in `prompts/use_cases/`.
*   **Core Agent Logic Prompts:** These belong in `prompts/agent_prompts/`.

## 3. Key Files Overview

As of the last update, this directory is empty. It is expected to be populated with guides for various project archetypes.

*Example (Future Files):*
*   `web-server-project.md`
*   `data-science-project.md`
*   `cli-tool-project.md`
*   `mobile-app-project.md`

*(This list will be updated as project type guides are created.)*

## 4. Usage & Maintenance

*   When Cline initializes a new user project or switches context to an existing one, it can consult the relevant guide in this directory (if available) to better understand the project's nature and requirements.
*   The `.clinerules/100_clineagi_projects/100-06_project-type-specific-guidance.md` rule outlines how Cline incorporates this type-specific guidance.
*   The `prompt_inventory.yaml` file should include entries for these project type guides to make them discoverable.
*   This `README.md` should be updated if the structure or key files within this directory change significantly.

---
Last Updated: 2025-05-11
