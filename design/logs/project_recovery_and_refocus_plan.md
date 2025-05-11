# ClineAGI Project Recovery and Refocus Plan

**Date:** May 11, 2025
**Analyst:** Cline (AI Assistant)

## 1. Current Project Understanding Summary

Based on a review of core documentation (`README.md`, `.gitignore`), Memory Bank files (`projectbrief.md`, `productContext.md`, `activeContext.md`, `systemPatterns.md`, `techContext.md`, `progress.md`), key `.clinerules` (governing memory bank, tool usage, intake, response requirements, communication, continuous improvement), prompt inventories, use case inventories, and provided intake documents, the following understanding of the `clineagi-dev-project` has been established:

*   **Core Mission:** To collaboratively build an Artificial General Intelligence (AGI), with ClineAGI serving as a foundational "OS" and Cline (the AI) as the interactive development partner.
*   **Key Architecture:** A two-tiered system with a core ClineAGI repository and separate user projects. Knowledge persistence is critically reliant on the Memory Bank, and AI behavior is guided by a `.clinerules` system.
*   **Strengths:** A clear architectural vision and defined core processes for Memory Bank management, Gitflow, role-based operations, and information intake are documented.
*   **Primary Challenge (User Highlighted):** The project has "lost its focus," and there are issues with prompt clarity and token efficiency (specifically GitHub Issue #7).

## 2. Key Identified Issues & Gaps

The detailed analysis (documented in `design/logs/clineagi_project_analysis_report.md`) has revealed several areas needing attention:

*   **Outdated Information & Inconsistencies:**
    *   **Prompt Inventory Filename:** The system refers to `prompts/prompt_inventory.md` in some places (e.g., old recovery plan, `ClineAGI_Project_File_Directory_Inventory.md`), but the actual functional inventory is `prompts/prompt_inventory.yaml`. All references should be updated to `prompt_inventory.yaml`.
    *   **Redundancy in Core Docs:** `memory-bank/techContext.md` and `memory-bank/systemPatterns.md` have overlapping content regarding AGI concepts, constraints, and dependencies that needs streamlining. `techContext.md` also has several placeholder sections.
    *   **Project Listings:** Discrepancy between `memory-bank/projects.md` (lists 2 projects) and `projects/README.md` (lists 4 projects). `memory-bank/projects.md` should be the source of truth and updated.
    *   **Missing Project Files:** `projectbrief.md` and `activeContext.md` are missing for the `happy-friends` and `sad-friends` projects.
    *   **`replace_in_file` Diff Format:** Discrepancy in the description of the diff format for the `replace_in_file` tool between `000-04_core-ai-tool-usage-guidelines.md` and the main tool documentation (the latter being more current with `SEARCH`/`REPLACE` blocks).
    *   **`Cline Docs` Terminology:** The term "Cline Docs" is used in `000-00_core-memory-bank-structure.md` referring to `memory-bank/`; this should be standardized to "Memory Bank" for clarity.
    *   **`.gitignore` for Template:** Clarify the `.gitignore` handling for the local `ClineAGI-Project-Template/` clone.
    *   **`memory-bank-template-source/`:** The purpose of this directory (if it exists or is planned) is unclear.

*   **Incomplete Documentation & Placeholders:**
    *   **Root `README.md`:** Missing dependency installation and launch instructions, and potentially contact/contribution info.
    *   **Empty/Placeholder Directories in `prompts/`:**
        *   `prompts/project_types/` is empty.
        *   `prompts/shared_templates/api-documentation/` and `prompts/shared_templates/emails/` are empty.
    *   **`memory-bank/raw_reflection_log.md`:** Currently empty; needs to be actively used as per protocol.
    *   **User Onboarding/Tutorial:** A dedicated guide for first-time users of ClineAGI is missing.
    *   **VSCode Extension Internals:** While `001-00_reference-cline-extension-architecture.md` provides a good overview, more detailed diagrams or explanations for specific complex interactions within the VSCode extension could be beneficial for core development.

*   **Operational Clarity & Strategy:**
    *   **Rule/Prompt Prioritization Logic:** The exact algorithm or decision-making process for how Cline selects among multiple potentially relevant rules or prompts (beyond `weight` and `type` in `prompt_inventory.yaml`) is not explicitly documented.
    *   **Maintenance Strategy for `.clinerules` and `prompts/`:** A formal strategy for reviewing, updating, and deprecating items in these extensive libraries is needed.
    *   **Definition of "Core AGI Functionalities":** A clearer definition of what constitutes these functionalities and their interaction model with user projects is needed.
    *   **"Non-Disruptive Core Updates" Strategy:** The technical approach for this needs to be detailed.
    *   **Role Activation Mechanism:** How roles are activated and how this impacts rule/prompt loading needs to be explicitly documented.
    *   **Project Template Update Conflict Management:** The strategy for handling conflicts when users pull updates from the master project template needs to be defined.
    *   **Intake Log Decision:** Clarify whether a dedicated intake log is needed or if `activeContext.md` suffices.
    *   **User Review of New AGI Concepts:** The workflow for user review of new AGI concepts identified during intake processing needs to be formalized.

*   **Prompt System & Use Cases (Related to Issue #7 & #16):**
    *   **Prompt Management (Issue #7):** The current operational `prompts/prompt_inventory.yaml` needs to be fully leveraged for granular loading to improve token efficiency, as detailed in `design/logs/refined_prompt_management_plan.md`.
    *   **Prompt Clarity:** Many existing prompt files across various categories require review for clarity, consistency, and effectiveness.
    *   **Incomplete Use Case Definitions:** Many use cases listed in `prompts/prompt_inventory.yaml` (originating from the old inventory) point to files in `prompts/use_cases/` that may be placeholders or incomplete.

*   **Tooling & Examples:**
    *   **Practical Tool Examples:** More diverse and complex examples for `execute_command` (chaining, script error handling) and `use_mcp_tool` would be beneficial in `000-04_core-ai-tool-usage-guidelines.md`.
    *   **Prometheus-0 Cycle Example:** A concrete example of a fully "executed" Prometheus-0 planning/reasoning cycle would clarify its application.

## 3. Proposed High-Level Action Plan (YOLO Mode Approach)

To get the `clineagi-dev-project` back on track, focusing on clarity, efficiency, and addressing known issues:

**Phase 1: Foundational Cleanup & Documentation (Immediate Focus)**

1.  **Implement Prompt Management Refinement (Address Issue #7 - In Progress):**
    *   Action: Proceed with the steps outlined in `design/logs/refined_prompt_management_plan.md`. This involves:
        *   Restructuring `prompts/prompt_inventory.md` for granular loading.
        *   Reviewing and clarifying all existing prompt files in `prompts/prompt_styles/`, `prompts/project_types/`, etc.
        *   Developing and integrating new prompting style templates (ReAct, Self-Critique, etc.) into `prompts/agent_prompting_styles/`.
        *   Updating the core prompt loading mechanism.
    *   Output: Updated `prompts/prompt_inventory.md`, revised/new prompt files, updated analysis report.
    *   GitHub: Update Issue #7 with progress.

2.  **Update Core Documentation:**
    *   Action: Populate missing sections in `README.md` (Dependencies, Launch Instructions, Contact/Contribution).
    *   Action: Populate placeholder sections in `memory-bank/techContext.md` (Tool Usage Patterns, Critical Implementation Paths, Future Considerations). Review for redundancy with `systemPatterns.md`.
    *   Action: Correct `.gitignore` for `ClineAGI-Project-Template/`.
    *   Output: Updated `README.md`, `techContext.md`, `.gitignore`.
    *   GitHub: Create new issues for these documentation tasks or link to existing ones if applicable.

3.  **Standardize Terminology & Resolve Minor Discrepancies:**
    *   Action: Clarify "Cline Docs" reference in `000-00_core-memory-bank-structure.md` (recommend standardizing to "Memory Bank").
    *   Action: Resolve `replace_in_file` diff format discrepancy between `000-07_core-ai-tool-usage-guidelines.md` and main tool docs.
    *   Output: Updated `.clinerules` files.
    *   GitHub: Create issues for these clarifications.

**Phase 2: Enhancing Operational Clarity & Workflows**

4.  **Define Pending Processes:**
    *   Action: Document the mechanism for role activation.
    *   Action: Document the strategy for project template update conflict management.
    *   Action: Decide on and document the use of a dedicated intake log (vs. `activeContext.md`).
    *   Action: Document the workflow for user review of new AGI concepts from intake.
    *   Output: New/updated `.clinerules` or Memory Bank documents.
    *   GitHub: Create issues for these process definitions.

5.  **Populate Use Case Library:**
    *   Action: Begin systematically populating the detailed Markdown files for use cases listed in `.clinerules/999_01_use_case_inventory.md`, prioritizing those relevant to core ClineAGI functionality and software development assistance.
    *   Output: New files in `prompts/use_cases/`.
    *   GitHub: Link to Issue #16 and potentially create sub-tasks.

**Phase 3: Broader Project Review & Code-Level Analysis (Future Step)**

6.  **Full Codebase Scan & Analysis (If Still Needed):**
    *   Action: After addressing documentation and high-level structural issues, if specific problems persist or a deeper understanding of the VSCode extension code (`src/`) is required, perform a targeted scan of that codebase. This would involve using `list_files`, `read_file`, and `list_code_definition_names` on the `src/` directory (and potentially `projects/clineagi-dev/` if it contains its own source code distinct from the main extension).
    *   Output: Further updates to `design/logs/clineagi_project_analysis_report.md` with code-specific findings.
    *   GitHub: New issues based on code-level findings.

**Ongoing:**

*   Maintain `memory-bank/activeContext.md` and `memory-bank/progress.md` with current status.
*   Apply Continuous Improvement Protocol after completing significant parts of this plan.

This plan prioritizes fixing the prompt system (Issue #7) and clarifying existing documentation, which should provide a more stable and understandable foundation for further development and for addressing other GitHub issues.
