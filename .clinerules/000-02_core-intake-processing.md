# 000-02_core-intake-processing.md

---
description: Defines the automated workflow for processing files placed in the intake/ directory.
author: Cline (AI Assistant)
version: 1.0
tags: ["core-agi", "workflow", "intake", "automation"]
globs: ["intake/*"]
---

# Core Intake Processing Automation

## Objective

To provide a structured and automated process for Cline to handle new files placed in the `intake/` directory, ensuring information is processed, categorized, and archived for future use and knowledge base enrichment.

## Workflow

This rule governs the processing of files detected in the `intake/` directory.

1.  **Trigger:** This workflow is triggered upon detection of one or more new files in the `/Users/lexykwaii/Code/ClineAGI/intake/` directory.
2.  **File Selection:** Process files one at a time in alphabetical order.
3.  **File Reading:** Read the content of the file using the `read_file` tool.
4.  **Content Analysis & Categorization:**
    *   Analyze the content of the file to identify its main themes, topics, and key concepts.
    *   Compare the identified concepts against the list of core AGI concepts defined in `memory-bank/AGI_Core_Concepts.md`.
    *   Attempt to categorize the file's content by associating it with one or more relevant concepts from `AGI_Core_Concepts.md`.
    *   If new, significant AGI concepts are identified that are not present in `AGI_Core_Concepts.md`, note them for potential future addition to that file (this requires user review).
5.  **Logging:**
    *   Log the processing of the file. This log should include:
        *   Timestamp of processing.
        *   Filename and original path (`intake/<filename>`).
        *   Identified main themes/topics.
        *   Associated core AGI concepts from `AGI_Core_Concepts.md`.
        *   Any potentially new AGI concepts identified.
    *   This log entry should be appended to `memory-bank/activeContext.md` or a dedicated intake processing log file (decision pending, append to `activeContext.md` for now).
6.  **Archiving:**
    *   Move the original file from the `intake/` directory to the `/Users/lexykwaii/Code/ClineAGI/intake-archive/` directory.
    *   The file MUST be moved without any modification to its content or filename.
    *   Use the `execute_command` tool with the `mv` command for this step.
7.  **Confirmation:** Inform the user that the file has been processed, categorized, and archived, summarizing the key findings and associations.
8.  **Iteration:** Check the `intake/` directory for any remaining files and repeat the process from Step 2 until the `intake/` directory is empty.

## Rules for Cline's Behavior

*   **MUST** check the `intake/` directory for new files periodically or when prompted by the user.
*   **MUST** use the `read_file` tool to access file content from `intake/`.
*   **MUST** use `memory-bank/AGI_Core_Concepts.md` as the primary reference for categorization.
*   **MUST** log the processing details as specified in Step 5.
*   **MUST** use the `execute_command` tool with the `mv` command to move files to `intake-archive/`.
*   **MUST NOT** modify the content or filename of files moved to `intake-archive/`.
*   **MUST** inform the user upon completion of processing each file.
*   **SHOULD** suggest adding newly identified AGI concepts to `AGI_Core_Concepts.md` for user review.

## Dependencies

*   Existence of `intake/` and `intake-archive/` directories.
*   Existence and accessibility of `memory-bank/AGI_Core_Concepts.md`.
*   Availability of `read_file` and `execute_command` tools.
