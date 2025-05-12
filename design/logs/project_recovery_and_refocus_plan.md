# ClineAGI Project Recovery and Refocus Plan

**Date:** {{CURRENT_DATE_YYYY_MM_DD}}

## 1. Introduction

This document outlines a plan to address the user's concerns that the ClineAGI project has "lost its focus" and that "too much info got lost," aiming to identify and rectify "broken, missing, and needs to be improved" elements. This plan is based on the initial findings from the `clineagi_project_analysis_report.md`.

## 2. Identified Areas of Concern (Preliminary)

Based on the project structure and the user's statements, the following areas warrant investigation:

1.  **Information Integrity and Focus:**
    *   **Core Vision Alignment:** The primary goals and product definition in `memory-bank/projectbrief.md` and `memory-bank/productContext.md` may be outdated or unclear, leading to a diffuse project focus.
    *   **Information Siloing/Redundancy:** Multiple `README.md` files and potentially overlapping content between `.clinerules` and `prompts` could lead to inconsistencies and outdated information. The dual `prompt_inventory.md` and `prompt_inventory.yaml` needs clarification.
    *   **"Lost Information":** This could stem from incomplete Memory Bank updates, outdated rules/prompts, poor documentation linkage, or missing documentation for critical components.
2.  **Rule and Prompt Management:**
    *   **Clarity of Purpose:** The distinction between `.clinerules` (operational logic) and `prompts` (guidance for generation/interaction) needs to be consistently enforced.
    *   **Inventory Accuracy:** The `prompt_inventory.yaml` and `tools/scripts_inventory.yaml` must accurately reflect the available resources.
3.  **Core System Code (if applicable):**
    *   The structure and health of any primary application code for ClineAGI itself (potentially in `projects/clineagi-dev/`) need to be assessed if it exists beyond the rule/prompt engine.
4.  **Documentation Gaps:**
    *   Critical workflows or components might lack clear, up-to-date documentation.

## 3. Proposed Recovery and Refocus Plan

This plan will be executed iteratively.

### Phase 3.1: Re-establish Core Project Focus & Vision
    *   **Action:** Read and critically analyze `memory-bank/projectbrief.md` and `memory-bank/productContext.md`.
    *   **Tool:** `read_file`
    *   **Follow-up:** Use `ask_followup_question` to discuss these documents with the user. Confirm if they accurately reflect the current vision for ClineAGI. If not, collaboratively update them. This updated vision will guide subsequent steps.

### Phase 3.2: Audit and Refine `.clinerules` and `prompts`
    *   **Goal:** Ensure clarity, consistency, and alignment with the re-established project focus.
    *   **Step 3.2.1: `.clinerules` Review:**
        *   **Action:** Systematically review each subdirectory within `.clinerules/` (`000_core`, `002_workflow`, etc.). For each rule, assess its relevance, clarity, and consistency with the project vision.
        *   **Tools:** `list_files` (for each subdirectory), `read_file` (for each rule).
        *   **Output:** Identify rules that are outdated, redundant, unclear, or misaligned. Note them for revision or deprecation.
    *   **Step 3.2.2: `prompts` Review:**
        *   **Action:** Systematically review each subdirectory within `prompts/` (e.g., `agent_prompts`, `use_cases`). Assess relevance, clarity, and consistency.
        *   **Tools:** `list_files`, `read_file`.
        *   **Output:** Identify prompts that are outdated, redundant, unclear, or misaligned. Note them for revision or deprecation.
    *   **Step 3.2.3: Ensure `.clinerules` vs. `prompts` Distinction:**
        *   **Action:** During the review, specifically check if operational logic is correctly placed in `.clinerules` and guidance/templates in `prompts`.
        *   **Output:** Note any files that need to be moved or refactored.

### Phase 3.3: Verify Inventory Accuracy
    *   **Step 3.3.1: Prompt Inventory Audit:**
        *   **Action:** Read `prompts/prompt_inventory.yaml`. List all files in `prompts/` (recursively). Compare the inventory against actual files.
        *   **Tools:** `read_file`, `list_files`.
        *   **Output:** List of discrepancies (missing entries, broken paths, incorrect metadata) in `prompt_inventory.yaml`.
    *   **Step 3.3.2: Tool Script Inventory Audit:**
        *   **Action:** Read `tools/scripts_inventory.yaml`. List all files in `tools/scripts/`. Compare.
        *   **Tools:** `read_file`, `list_files`.
        *   **Output:** List of discrepancies in `tools/scripts_inventory.yaml`.
    *   **Step 3.3.3: Update Inventories:**
        *   **Action:** Based on audit findings, update `prompt_inventory.yaml` and `tools/scripts_inventory.yaml`.
        *   **Tool:** `replace_in_file` or `write_to_file`.

### Phase 3.4: Analyze Core ClineAGI Code (If Applicable)
    *   **Action:** Investigate `projects/clineagi-dev/` (or other potential locations if identified) for core application source code.
    *   **Tools:** `list_files` (recursive for `projects/clineagi-dev/`), `list_code_definition_names` (on source subdirectories found).
    *   **Output:** Summary of the core application's structure if found, to be added to the main analysis report.

### Phase 3.5: Documentation Linkage and Gap Analysis
    *   **Action:** Review key `README.md` files and core `memory-bank` documents. Identify missing links between related documents and any critical components/workflows lacking clear documentation.
    *   **Tools:** `read_file` (for multiple READMEs and memory bank files).
    *   **Output:** A list of documentation gaps and linkage improvements needed.

### Phase 3.6: Implement Changes and Consolidate Learnings
    *   **Action:** Based on the findings from previous phases, implement necessary changes (revising files, moving content, updating links).
    *   **Tools:** `replace_in_file`, `write_to_file`, `execute_command` (for moving files if necessary, e.g., `mv old_path new_path`).
    *   **Action:** Update `memory-bank/activeContext.md` and `memory-bank/progress.md` to reflect the recovery efforts.
    *   **Action:** Log all significant learnings and changes in `memory-bank/raw_reflection_log.md` and subsequently `memory-bank/consolidated_learnings.md` as per `000-05_core-continuous-improvement-protocol.md`.

### Phase 3.7: Final Report Update and User Review
    *   **Action:** Update the main `clineagi_project_analysis_report.md` (sections 5 and 6) with a summary of findings, actions taken, and recommendations.
    *   **Tool:** `replace_in_file`.
    *   **Action:** Present the updated analysis report and this recovery plan to the user for review and further direction.
    *   **Tool:** `attempt_completion`.

## 4. Timeline
(To be determined based on the complexity revealed in each phase)

---
*Plan drafted by ClineAGI*
