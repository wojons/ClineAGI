# Tech-Specific Guides Directory Overview

## 1. Purpose Statement

This directory, `prompts/tech_specific_guides/`, houses detailed guides and prompt resources for working with specific technologies, frameworks, libraries, or platforms. These guides help Cline understand the nuances, best practices, common commands, and typical project structures associated with particular technologies. Many of these were previously `.clinerules` categorized under `004_tech-specific` and have been migrated here to serve as informational resources and prompt enhancers.

## 2. Scope & Content Guidelines

### Content That Belongs Here:
*   **Technology Guides (Markdown `.md`):** Each file should focus on a specific technology (e.g., Slidev, Next.js, Supabase, Tailwind CSS, Shadcn/UI, Stripe).
    *   Content typically includes:
        *   Overview of the technology.
        *   Setup and installation notes.
        *   Common commands and CLI usage.
        *   Key concepts and architectural patterns.
        *   Best practices for development and integration.
        *   Troubleshooting tips for common issues.
        *   Example prompts or prompt snippets tailored to that technology.
*   **Naming Convention:** Files may follow a `NNN-MM_tech-specific-descriptive-name.md` pattern (e.g., `002-NN` or `004-NN`).

### Content That Does NOT Belong Here:
*   **General Project Type Guides:** These belong in `prompts/project_types/`. While a tech guide might be relevant to a project type, project type guides are broader.
*   **Core Agent Logic Prompts:** These belong in `prompts/agent_prompts/`.
*   **Active Operational Rules (`.clinerules`):** These belong in the `.clinerules/` directory. Tech-specific guides are primarily for informational support and prompt enrichment.

## 3. Key Files Overview

As of the last update, this directory contains the following key files:

*   **`002-01_guide-slidev-projects.md`**: A guide for working with Slidev presentation projects.
*   **`004-00_tech-specific-next-js-supabase.md`**: Guide for integrating Next.js with Supabase.
*   **`004-01_tech-specific-tailwind-css.md`**: Guide for using Tailwind CSS.
*   **`004-02_tech-specific-shadcn-ui.md`**: Guide for working with Shadcn/UI components.
*   **`004-03_tech-specific-supabase-edge-functions.md`**: Guide for developing Supabase Edge Functions.
*   **`004-04_tech-specific-stripe-integration.md`**: Guide for integrating Stripe payments.

*(This list should be kept current as tech-specific guides are added, modified, or renumbered.)*

## 4. Usage & Maintenance

*   Cline can consult these guides when a task involves a specific technology covered.
*   These guides help ensure Cline uses technologies correctly and follows best practices.
*   The `prompt_inventory.yaml` file should include entries for these guides to make them discoverable and loadable when relevant.
*   This `README.md` should be updated if the structure or key files within this directory change significantly.

---
Last Updated: 2025-05-11
