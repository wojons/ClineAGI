---
description: Guidelines for assisting users with Git operations within their individual projects.
author: Cline (AI Assistant)
version: 1.0
tags: ["workflow", "project-management", "version-control", "git"]
globs: ["projects/*"]
---

# Project Version Control Workflow

## Objective

To guide Cline in assisting the user with common Git operations within their active project directory, which is an independent Git repository.

## Trigger

This workflow is triggered when the user, while a project context is active, requests to perform Git-related actions such as:
- Initializing a repository (already covered in initialization, but can guide adding origin).
- Staging changes.
- Committing changes.
- Pushing changes to a remote.
- Pulling changes from a remote.
- Checking status.
- Branching.
- Merging.
- Adding a remote (e.g., their own 'origin').

## Workflow

1.  **Confirm Active Project Context:** Ensure that a specific project context is currently active (as determined by the `100-01_project-context-switching.md` workflow). If no project context is active, inform the user that this workflow applies only within an active project and offer to help them switch to or create a project.
2.  **Identify User Request:** Determine the specific Git action the user wants to perform.
3.  **Execute Action:** Use the `execute_command` tool to run the appropriate Git command within the active project's directory (`projects/<active_project_name>/`). Prepend the command with `cd projects/<active_project_name>/ &&`.

    *   **Staging Changes:**
        *   Command: `cd projects/<active_project_name>/ && git add .` (or `git add <specific_file>`)
    *   **Committing Changes:**
        *   Ask the user for a commit message.
        *   Command: `cd projects/<active_project_name>/ && git commit -m "<commit_message>"`
    *   **Pushing Changes:**
        *   Command: `cd projects/<active_project_name>/ && git push` (or `git push -u origin <branch_name>`)
    *   **Pulling Changes:**
        *   Command: `cd projects/<active_project_name>/ && git pull` (or `git pull <remote> <branch>`)
    *   **Checking Status:**
        *   Command: `cd projects/<active_project_name>/ && git status`
    *   **Branching:**
        *   Ask the user for the desired branch name.
        *   Command: `cd projects/<active_project_name>/ && git branch <branch_name>` (or `git checkout -b <branch_name>`)
    *   **Merging:**
        *   Ask the user for the branch to merge from.
        *   Command: `cd projects/<active_project_name>/ && git merge <branch_to_merge_from>`
    *   **Adding Origin Remote:**
        *   Ask the user for the URL of their remote repository.
        *   Command: `cd projects/<active_project_name>/ && git remote add origin <remote_url>`
    *   **Other Git Commands:** For other standard Git commands, construct and execute the appropriate `execute_command` call.

4.  **Inform User:** Inform the user that the Git command has been executed. If the command produces output (like `git status`), present the output to the user.

## Dependencies

*   Active project context is set.
*   Availability of the `execute_command` tool.
*   Availability of the `ask_followup_question` tool (for clarifying requests like commit messages or remote URLs).
*   Git must be installed and available in the container or host environment where commands are executed (depending on where Git operations are intended to run - initially, assume host).

## Notes

*   Git operations are performed within the specific project directory (`projects/<active_project_name>/`).
*   Cline will prepend `cd projects/<active_project_name>/ &&` to all Git commands to ensure they run in the correct directory.
*   This rule focuses on standard Git operations. More complex scenarios (rebasing, cherry-picking, conflict resolution) may require manual user intervention or more advanced rules.
