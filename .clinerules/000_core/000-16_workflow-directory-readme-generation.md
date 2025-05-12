---
description: Defines the workflow for generating a README.md file for a given directory, explaining its purpose, scope, and content rules.
author: Cline (AI Assistant)
version: 1.0
tags: ["workflow", "documentation", "readme", "project-organization"]
globs: ["*/**/README.md"] # Applies when working with any README in any subdirectory
---

# Workflow: Directory README.md Generation & Maintenance

## 1. Objective

YOU MUST generate and maintain a clear, concise, and informative `README.md` file for specified project directories. This README MUST explain the directory's purpose, the type of content it should contain, what it MUST NOT contain, and any relevant guidelines or rules for managing its contents. This promotes self-documenting directories and helps maintain project organization and focus.

## 2. Trigger

This workflow IS TRIGGERED when:
*   Explicitly requested by the user to generate or update a README for a specific directory.
*   As part of a broader project documentation or refactoring effort.
*   After significant changes are made to a directory's structure or purpose, requiring its README to be updated.

## 3. Key Stages & Processes Involved

### 3.1. Information Gathering & Analysis
1.  **Identify Target Directory:** YOU MUST confirm the full path to the directory for which the README is to be generated/updated.
2.  **List Directory Contents:** YOU MUST use the `list_files` tool to get a comprehensive list of all files and subdirectories within the target directory.
3.  **Analyze Contents & Naming Conventions:**
    *   YOU MUST examine the names of files and subdirectories to infer their purpose.
    *   YOU MUST note common prefixes, suffixes, or patterns in naming.
    *   YOU MUST identify the types of files present (e.g., `.md`, `.ts`, `.py`, `.yaml`, configuration files, code files, documentation).
4.  **Review Existing README (if updating):** If a `README.md` already exists, YOU MUST read its content using `read_file` to understand its current documented purpose.
5.  **Consult Broader Project Context (if necessary):**
    *   YOU SHOULD review `memory-bank/projectbrief.md` or other relevant high-level documentation to understand how this directory fits into the overall project architecture and goals.
    *   YOU SHOULD check `.clinerules/` for any existing rules that might govern this directory or its contents.

### 3.2. Defining Directory Scope & Purpose
1.  **Determine Primary Purpose:** Based on the analysis, YOU MUST articulate the main reason this directory exists and what role it plays in the project.
2.  **Define Scope of Content:**
    *   YOU MUST define what kind of files or information SHOULD be located in this directory.
    *   YOU MUST define what kind of files or information SHOULD NOT be located in this directory (e.g., "This directory is for core library code only; application-specific logic MUST go into `src/applications/`.").
3.  **Identify Key Subdirectories (if any):** YOU MUST briefly describe the purpose of important subdirectories.
4.  **Note Key Files (if any):** YOU MUST mention any particularly important files and their roles (e.g., an `index.ts` barrel file, a main configuration YAML).

### 3.3. Drafting the README.md Content
1.  **Title:** YOU MUST create a clear title, usually `# [Directory Name] Directory Overview` or similar.
2.  **Purpose Statement:** YOU MUST write a concise paragraph explaining the directory's primary purpose.
3.  **Scope & Content Guidelines:**
    *   YOU MUST clearly state what belongs in the directory.
    *   YOU MUST clearly state what does NOT belong in the directory.
    *   YOU SHOULD use bullet points for clarity if listing multiple types of content.
4.  **Subdirectory Overview (if applicable):**
    *   YOU MUST list key subdirectories and their one-line purpose.
    *   Example:
        ```
        - `/sub_dir_A/`: Stores X type of modules.
        - `/sub_dir_B/`: Contains Y configurations.
        ```
5.  **Key File Overview (if applicable):**
    *   YOU MUST list important files and their roles.
6.  **Usage/Maintenance Notes (Optional):**
    *   YOU SHOULD include any specific rules for naming files within this directory.
    *   YOU SHOULD include workflow for adding/modifying content in this directory.
    *   YOU SHOULD link to other relevant documentation or `.clinerules`.
7.  **"Last Updated" Timestamp (Optional but Recommended):** YOU SHOULD add a "Last Updated" timestamp.

### 3.4. Writing/Updating the README.md File
1.  YOU MUST use the `write_to_file` tool to create or overwrite the `README.md` in the target directory.
2.  If updating, YOU MUST ensure valuable existing information is preserved or thoughtfully integrated. The `replace_in_file` tool MAY be appropriate for minor updates to an existing README.

## 4. Inputs Required from User/System

*   **Target Directory Path:** (Provided by user or other process)
*   **Broader Project Context:** (From memory bank, existing rules, or user input)
*   **Specific Guidelines or Points to Emphasize:** (From user, if any)

## 5. Potential Challenges & Considerations

*   **Inferring Purpose:** For poorly organized or sparsely populated directories, inferring a clear purpose can be challenging. YOU MAY need to ask the user for clarification using `ask_followup_question`.
*   **Over-Documentation:** READMEs MUST be concise and high-level. YOU MUST AVOID duplicating detailed documentation that belongs elsewhere.
*   **Maintenance:** READMEs MUST be kept up-to-date as the directory's content or purpose evolves. This rule SHOULD be re-triggered when significant changes occur.

## 6. Metrics for Success (How to Evaluate Output)

*   **Clarity:** Is the README easy to understand?
*   **Accuracy:** Does it correctly describe the directory's current purpose and typical contents?
*   **Completeness:** Does it provide enough information for someone to understand how to use/manage the directory?
*   **Helpfulness:** Would this README help a developer (including future Cline or human developers) navigate and contribute to this part of the project effectively?
*   **Actionability:** Does it provide clear guidelines on what belongs (and doesn't belong) in the directory?
