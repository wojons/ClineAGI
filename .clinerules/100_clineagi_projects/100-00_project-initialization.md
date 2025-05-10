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
    *   Use the `execute_command` tool to create a new directory for the project within the `projects/` directory (e.g., `mkdir projects/<project_name>`).
3.  **Copy Template Contents:**
    *   Use the `execute_command` tool to copy the contents of the local project template (`ClineAGI-Project-Template/`) into the new project directory. Ensure the `.git` directory from the template is NOT copied, as the new project will have its own Git repository.
    *   Command example: `cp -R ClineAGI-Project-Template/. projects/<project_name>/ && rm -rf projects/<project_name>/.git`
4.  **Initialize Git Repository:**
    *   Use the `execute_command` tool to initialize a new Git repository within the new project directory.
    *   Command example: `cd projects/<project_name> && git init`
5.  **Configure Template Remote:**
    *   Use the `execute_command` tool to add the `wojons/ClineAGI-Project-Template` repository as a remote named `template-upstream`.
    *   Command example: `cd projects/<project_name> && git remote add template-upstream https://github.com/wojons/ClineAGI-Project-Template.git`
6.  **Create Project-Specific `.clinerules` Directory:**
    *   Use the `execute_command` tool to create the `.clinerules` directory within the new project.
    *   Command example: `mkdir projects/<project_name>/.clinerules`
7.  **Create Placeholder Project Rule:**
    *   Use the `write_to_file` tool to create a basic `README.md` or a placeholder rule file within the project's `.clinerules/` directory. This ensures the directory is tracked by Git and provides a starting point for project-specific rules.
    *   Content example:
        ```markdown
        # Project-Specific Rules for <Project Name>

        This directory contains rules and guidelines specific to the <Project Name> project.

        ## 1. Project Overview
        [Brief description of the project]

        ## 2. Key Technologies
        [List of technologies used in this project]

        ## 3. Project-Specific Workflows
        [Document any workflows unique to this project]
        ```
8.  **Inform User:**
    *   Notify the user that the project has been initialized, the template copied, Git set up, and the project-specific `.clinerules` directory created.
    *   Explain that they can now add their own project-specific rules in `projects/<project_name>/.clinerules/`.

## Dependencies

*   Existence of the `projects/` directory in the ClineAGI root.
*   Existence of the local `ClineAGI-Project-Template/` directory.
*   Availability of `execute_command` and `write_to_file` tools.
*   User input for project name and type.

## Notes

*   Cline will need to remember the active project context to load project-specific `.clinerules` when working on a project. This will be handled by a separate rule (`100-01_project-context-switching.md`).
*   The user will need to manually set up their own `origin` remote for their project if they wish to push it to their personal GitHub or other remote repository. Cline can guide them on this using the `100-03_project-version-control.md` rule.
