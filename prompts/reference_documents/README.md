# Reference Documents Directory Overview

## 1. Purpose Statement

This directory, `prompts/reference_documents/`, stores key reference materials, foundational knowledge, and contextual documents that Cline, the AI Software Engineering Assistant, can consult. These documents provide stable, in-depth information on various topics relevant to Cline's operation, development, and understanding of its environment or specific domains. Many of these were previously `.clinerules` categorized under `001_reference` and have been migrated here to serve as informational resources rather than active operational rules.

## 2. Scope & Content Guidelines

### Content That Belongs Here:
*   **Foundational Guides (Markdown `.md`):** Documents providing comprehensive information on core concepts, architectures, or methodologies.
    *   Examples: Cline's extension architecture, community contribution guides, software engineering best practices, guides on writing effective `.clinerules`.
*   **Knowledge Summaries:** Condensed summaries of broader knowledge bases or key operational aspects.
*   **Naming Convention:** Files may follow a `001-NN_reference-descriptive-name.md` pattern, reflecting their origin or foundational nature.

### Content That Does NOT Belong Here:
*   **Active Operational Rules:** These belong in the `.clinerules/` directory. Reference documents are for informational consultation, not direct behavioral instruction.
*   **Dynamic or Task-Specific Prompts:** These belong in other `prompts/` subdirectories like `use_cases/`, `agent_prompts/`, or `workflows/`.
*   **Memory Bank Files:** Core contextual information for ongoing tasks belongs in `memory-bank/`.

## 3. Key Files Overview

As of the last update, this directory contains the following key files:

*   **`001-00_reference-cline-extension-architecture.md`**: Describes the architecture for Cline's extension capabilities.
*   **`001-01_reference-community-contributing-guide.md`**: Provides guidelines for community contributions to the ClineAGI project.
*   **`001-02_reference-gemini-comprehensive-software-engineering-guide.md`**: A comprehensive guide on software engineering principles, likely for Cline's reference.
*   **`001-03_reference-writing-effective-clinerules.md`**: A guide on how to write effective `.clinerules` for Cline.
*   **`001-04_reference-agent-knowledge-base-summary.md`**: A summary of the agent's knowledge base or how it accesses/uses knowledge.

*(This list should be kept current as reference documents are added, modified, or renumbered.)*

## 4. Usage & Maintenance

*   Cline can consult these documents to gain deeper understanding or context on specific topics relevant to its tasks.
*   These documents serve as a stable knowledge base.
*   The `prompt_inventory.yaml` file should include entries for these reference documents to make them discoverable and loadable when relevant.
*   This `README.md` should be updated if the structure or key files within this directory change significantly.

---
Last Updated: 2025-05-11
