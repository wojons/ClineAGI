# Prompts Directory Overview

## 1. Purpose Statement

This directory, `prompts/`, serves as the central repository for all prompt templates, patterns, workflows, and guides used by Cline, the AI Software Engineering Assistant. These resources are crucial for guiding Cline's understanding of tasks, structuring its reasoning, and generating high-quality, contextually appropriate responses and actions. The system relies on `prompt_inventory.yaml` in this directory to dynamically load relevant prompt resources.

## 2. Scope & Content Guidelines

### Content That Belongs Here:
*   **Markdown Files (`.md`):** All prompt resources are defined in Markdown.
*   **`prompt_inventory.yaml`:** The master YAML file that indexes all dynamically loadable prompts in this directory.
*   **Categorized Subdirectories:** Prompt resources are organized into subdirectories based on their type or domain (e.g., `agent_prompts/`, `use_cases/`, `prompt_styles/`).
*   **Prompt Definitions:** Each Markdown file should contain a specific prompt template, a detailed guide for a use case, a pattern for reasoning or output, or a workflow definition.

### Content That Does NOT Belong Here:
*   **Active Operational Rules (`.clinerules`):** These belong in the `.clinerules/` directory. While prompts guide *how* Cline thinks and responds, `.clinerules` define *what* Cline can do and the explicit steps for its core behaviors and tool usage.
*   **General Project Documentation:** High-level project briefs, product context, system patterns, tech context, and progress tracking belong in the `memory-bank/` directory.
*   **Project-Specific Code or Artifacts:** These should reside within the `projects/` subdirectories or other relevant project-specific locations.
*   **Log Files or Temporary Data:** These should be stored in `design/logs/` or other appropriate temporary/log locations.

## 3. Key Files & Subdirectory Overview

### Key Files:
*   **`prompt_inventory.yaml`**: The master index for all dynamically loadable prompts. This file is critical for the system's ability to select and use the appropriate prompt resources.
*   **`prompt_inventory.md`**: (Potentially a human-readable version or older format of the inventory, now superseded by `prompt_inventory.yaml` for dynamic loading).

### Main Subdirectories:
*   **`agent_prompts/`**: Contains core prompts related to the agent's fundamental reasoning and operational loops.
*   **`core/`**: (Purpose to be further defined based on content) - Likely contains foundational or shared prompt components.
*   **`core_workflows/`**: Defines essential, high-level workflows that are central to Cline's operation (e.g., intake processing).
*   **`merged_patterns/`**: Stores composite prompt patterns that combine multiple strategies or address broad task categories.
*   **`output_patterns/`**: Defines specific structures and guidelines for generating complex outputs.
*   **`planning_patterns/`**: Contains patterns related to task planning and decomposition.
*   **`project_types/`**: Holds detailed guidance and templates specific to different kinds of software projects.
*   **`prompt_inventory/`**: Contains supporting files for the prompt inventory system itself (e.g., `response-styles/`).
*   **`prompt_styles/`**: Provides guidelines and examples for various prompt engineering techniques.
*   **`protocols/`**: Defines formal protocols for complex, multi-step operations or interactions.
*   **`reasoning_patterns/`**: Focuses on patterns that guide the AI's reasoning process.
*   **`reference_documents/`**: Stores key reference materials that provide foundational knowledge or context for Cline, often migrated from `.clinerules`.
*   **`shared_templates/`**: Contains reusable templates for common document types.
*   **`tech_specific_guides/`**: Offers detailed guidance for working with specific technologies or frameworks, often migrated from `.clinerules`.
*   **`use_cases/`**: A comprehensive library of detailed prompts for specific content creation and management tasks, organized by sub-category.
*   **`workflows/`**: Defines specific, often multi-step, workflows for common user requests or operational procedures.

## 4. Usage & Maintenance

*   The `prompt_inventory.yaml` file is the primary mechanism for making prompts discoverable and usable by Cline. It must be kept up-to-date when new prompt files are added or existing ones are modified/moved.
*   Prompt files should be well-structured and clearly written to provide effective guidance to the AI.
*   This `README.md` should be updated if the structure or primary purpose of the `prompts/` directory changes significantly.

---
Last Updated: 2025-05-11
