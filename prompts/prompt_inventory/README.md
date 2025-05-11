# Prompt Inventory Supporting Files Directory Overview

## 1. Purpose Statement

This directory, `prompts/prompt_inventory/`, is designated for storing supporting files and resources related to the main `prompts/prompt_inventory.yaml` system. This includes guides on specific aspects of prompt construction or response generation that are referenced or utilized by the broader prompt inventory.

## 2. Scope & Content Guidelines

### Content That Belongs Here:
*   **Guides and Definitions (Markdown `.md`):** Files that provide detailed explanations or definitions for concepts used within the prompt inventory system.
    *   Example: Guides on different response styles that Cline can adopt.
*   **Supporting Resources:** Any other files that directly support the structure, maintenance, or understanding of the `prompt_inventory.yaml` and its entries.
*   **Subdirectories for Organization:** Further categorization of supporting files (e.g., `response-styles/`).

### Content That Does NOT Belong Here:
*   **Actual Prompt Files for Dynamic Loading:** These belong in their respective categorized subdirectories within `prompts/` (e.g., `prompts/use_cases/`, `prompts/agent_prompts/`).
*   **The Master `prompt_inventory.yaml` file:** This resides in the root of the `prompts/` directory.
*   **The `prompt_inventory.md` file:** This also resides in the root of the `prompts/` directory and serves as a human-readable overview or older version of the inventory.

## 3. Key Subdirectories & Files Overview

As of the last update, this directory contains:

*   **`response-styles/`**: A subdirectory containing guides for different response styles Cline can use (e.g., `research-report-guidelines.md`).

*(This list should be kept current as supporting files or subdirectories are added or modified.)*

## 4. Usage & Maintenance

*   Files in this directory provide deeper context or definitions for elements managed by the `prompt_inventory.yaml`.
*   They help ensure consistency and clarity in how prompts are designed and how responses are styled.
*   This `README.md` should be updated if the structure or key files within this directory change significantly.

---
Last Updated: 2025-05-11
