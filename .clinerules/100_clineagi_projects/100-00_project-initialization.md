---
description: Guidelines for initializing a new user project within the ClineAGI projects/ directory.
author: Cline (AI Assistant)
version: 1.0
tags: ["workflow", "project-management", "initialization"]
globs: ["projects/*"]
---

# Project Initialization Workflow

## Objective

To guide Cline in creating a new user project within the `ClineAGI/projects/` directory, leveraging the project template system and setting up basic project-specific configurations.

## Trigger

This workflow is triggered when the user requests to create a new project.

## Workflow

1.  **Confirm Project Name and Type:**
    *   Ask the user for the desired name of the new project.
    *   Ask the user to select a project template structure (e.g., General Development, Data Science/Research, Content/Knowledge Base, Web Server) from the options defined in `memory-bank/project_template_structures.md`. If no type is specified, default to "General Development Project".
2.  **Create Project Directory:**
    *   Use the `execute_command` tool to create a new directory for the project within the `projects/` directory (e.g., `mkdir projects/{{PROJECT_NAME}}`).
3.  **Clone Project Template:**
    *   Use the `execute_command` tool to clone the project template repository into the new project directory.
    *   Command example: `git clone https://github.com/wojons/ClineAGI-Project-Template.git projects/{{PROJECT_NAME}}`
4.  **Rename Template Remote:**
    *   Use the `execute_command` tool to rename the default `origin` remote to `source` in the cloned repository.
    *   Command example: `cd projects/{{PROJECT_NAME}} && git remote rename origin source`
5.  **Create Project-Specific `.clinerules` Directory:**
    *   Use the `execute_command` tool to create the `.clinerules` directory within the new project.
    *   Command example: `mkdir projects/{{PROJECT_NAME}}/.clinerules`
6.  **Create Placeholder Project Rule:**
        *   Use the `write_to_file` tool to create a basic `README.md` or a placeholder rule file within the project's `.clinerules/` directory. This ensures the directory is tracked by Git and provides a starting point for project-specific rules.
        *   Content example:
            ```markdown
            # Project-Specific Rules for {{PROJECT_NAME}}

        This directory contains rules and guidelines specific to the <Project Name> project.

        ## 1. Project Overview
        [Brief description of the project]

        ## 2. Key Technologies
        [List of technologies used in this project]

        ## 3. Project-Specific Workflows
        [Document any workflows unique to this project]
        ```
7.  **Initialize Project Memory Bank:**
        *   Use the `execute_command` tool to create the project-specific `memory-bank` directory.
        *   Command example: `mkdir projects/{{PROJECT_NAME}}/memory-bank`
        *   Use the `write_to_file` tool to create the initial `projectbrief.md` in the project's memory bank.
        *   Content example:
            ```markdown
            # Project Brief for {{PROJECT_NAME}}

This document provides the foundational context for the {{PROJECT_NAME}} project.

## 1. Core Requirements and Goals
- [Initial core requirements and goals based on user input]

## 2. Project Scope
- [Initial scope definition]

## 3. Key Stakeholders
- [Initial list of key stakeholders, e.g., the user]

## 4. Definition of Done
- [Initial definition of what constitutes completion]
            ```
        *   Use the `write_to_file` tool to create the initial `activeContext.md` in the project's memory bank.
        *   Content example:
            ```markdown
            # Active Context for {{PROJECT_NAME}}

This document tracks the current focus, recent changes, and next steps for the {{PROJECT_NAME}} project.

## 1. Current Work Focus
- [Brief description of the current task or feature being worked on]

## 2. Recent Changes
- [Summary of the most recent significant changes]

## 3. Next Steps
- [Clear outline of the immediate next steps]

## 4. Active Decisions and Considerations
- [Any important decisions made or considerations for the current work]

## 5. Important Patterns and Preferences
- [Project-specific patterns or user preferences noted during development]

## 6. Learnings and Project Insights
- [Key learnings or insights gained during the current phase]
            ```
        *   Use the `write_to_file` tool to create the initial `progress.md` in the project's memory bank.
        *   Content example:
            ```markdown
            # Progress for {{PROJECT_NAME}}

This document tracks the overall progress, completed work, and remaining tasks for the {{PROJECT_NAME}} project.

## 1. What Works
- [Summary of implemented and verified functionality]

## 2. What's Left to Build
- [Outline of remaining features or tasks]

## 3. Current Status
- [Overall status of the project (e.g., Planning, Development, Testing)]

## 4. Known Issues
- [Any identified bugs or issues]

## 5. Evolution of Project Decisions
- [Notes on how key project decisions have evolved]
            ```
        *   Use the `write_to_file` tool to create the initial `raw_reflection_log.md` in the project's memory bank.
        *   Content example:
            ```markdown
            # Raw Reflection Log for {{PROJECT_NAME}}

This file contains detailed, timestamped entries of learnings, difficulties, and successes during tasks for the {{PROJECT_NAME}} project. Entries are candidates for consolidation into `consolidated_learnings.md`.
            ```
        *   Use the `write_to_file` tool to create the initial `consolidated_learnings.md` in the project's memory bank.
        *   Content example:
            ```markdown
            # Consolidated Learnings for {{PROJECT_NAME}}

This file contains curated, summarized, and actionable insights distilled from the raw reflection log for the {{PROJECT_NAME}} project.
            ```
        *   Use the `write_to_file` tool to create the initial `feedback.md` in the project's memory bank.
        *   Content example:
            ```markdown
            # Project Feedback for {{PROJECT_NAME}}

This file captures user feedback specific to the {{PROJECT_NAME}} project.

---
```
        *   Use the `write_to_file` tool to create the initial `user_preferences.md` in the project's memory bank.
        *   Content example:
            ```markdown
            # Project-Specific User Preferences for {{PROJECT_NAME}}

This file tracks user preferences that override global settings for the {{PROJECT_NAME}} project.

- `proactive_assistance_enabled`: `true`, `false`, or `inherit` (Default: `inherit` from global)
  - Overrides the global proactive assistance setting for this project.

---
            ```
        *   Use the `write_to_file` tool to create the initial `settings.yml` in the project's memory bank, populating it with basic project details.
        *   Content example:
            ```yaml
            # Project-Specific Settings

            # This file stores configurations specific to this project.
            # It is intended to centralize project details like linked repositories,
            # build commands, container settings, etc., for use by ClineAGI.

            projectName: "{{PROJECT_NAME}}"
            projectType: "{{PROJECT_TYPE}}" # e.g., "Web Server", "Data Science", "CLI Tool"

            versionControl:
              remoteRepositoryUrl: "" # URL of the project's primary remote Git repository
              defaultBranch: "" # e.g., "main", "develop"

            containerization:
              enabled: false # Set to true if using containers
              technology: "Docker" # e.g., "Docker", "Podman"
              imageName: "" # Default image name
              dockerfilePath: "Dockerfile" # Path relative to project root
              defaultPorts: [] # e.g., ["8080:80", "5432:5432"]

            buildCommands: # Common build/run/test scripts
              build: ""
              start: ""
              test: ""

            projectSpecific: # Flexible section for any other project-specific settings
              # Add custom key-value pairs here
            ```
8.  **Update Main Projects List:**
        *   Use the `write_to_file` tool to append an entry for the new project to the main `memory-bank/projects.md` file. The content should be a new row in the Markdown table, using the format `| {{PROJECT_NAME}} | {{CURRENT_DATE_YYYY_MM_DD}} | {{PROJECT_TYPE}} | projects/{{PROJECT_NAME}}/ | [Brief description of the project] |`. Ensure the table formatting is maintained.
9.  **Inform User:**
        *   Notify the user that the project has been initialized by cloning the template, Git remote set up, and the project-specific `.clinerules` directory and memory bank (including feedback and preferences files) have been created, and an entry added to `memory-bank/projects.md`.
        *   Explain that they can now add their own project-specific rules in `projects/{{PROJECT_NAME}}/.clinerules/` and update the descriptions in the project's memory bank files and the main `memory-bank/projects.md`.

## Dependencies

*   Existence of the `projects/` directory in the ClineAGI root.
*   Availability of `execute_command` and `write_to_file` tools.
*   User input for project name and type.

## Notes

*   Cline will need to remember the active project context to load project-specific `.clinerules` when working on a project. This will be handled by a separate rule (`100-01_project-context-switching.md`).
*   The user will need to manually set up their own `origin` remote for their project if they wish to push it to their personal GitHub or other remote repository. Cline can guide them on this using the `100-03_project-version-control.md` rule.
*   The new project repository will be configured with `wojons/ClineAGI-Project-Template` as a remote named `source` to allow users to pull future updates from the master template.
