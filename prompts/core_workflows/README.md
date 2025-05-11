# Core Workflows Directory Overview

## 1. Purpose Statement

This directory, `prompts/core_workflows/`, stores prompt files that define essential, high-level workflows central to Cline's fundamental operations. These are distinct from more general or task-specific workflows found in `prompts/workflows/` or `.clinerules/002_workflow/`. Core workflows often represent automated or foundational processes that underpin how Cline interacts with its environment or manages information.

## 2. Scope & Content Guidelines

### Content That Belongs Here:
*   **Fundamental Workflow Prompts (Markdown `.md`):** Files containing prompts that detail the steps and logic for core operational processes.
    *   These workflows are typically deeply integrated into Cline's system.
*   **Naming Convention:** Files may follow a `NNN-MM_descriptive-name.md` pattern, often with a `000` prefix indicating their core nature.

### Content That Does NOT Belong Here:
*   **Agent-Specific Behavior Prompts:** These belong in `prompts/agent_prompts/`.
*   **General or User-Initiated Workflows:** These are typically found in `prompts/workflows/` or defined as active rules in `.clinerules/002_workflow/`.
*   **Use Case Guides:** These belong in `prompts/use_cases/`.

## 3. Key Files Overview

As of the last update, this directory contains the following key file:

*   **`000-02_workflow-intake-processing.md`**: Defines the automated workflow for processing files placed in the `intake/` directory, including how Cline should analyze, categorize, and integrate new information.

*(This list should be kept current as core workflows are added, modified, or renumbered.)*

## 4. Usage & Maintenance

*   Prompts in this directory are critical for some of Cline's most basic and important automated processes.
*   Modifications should be made with a thorough understanding of their impact on Cline's core operations.
*   This `README.md` should be updated if the structure or key files within this directory change significantly.

---
Last Updated: 2025-05-11
