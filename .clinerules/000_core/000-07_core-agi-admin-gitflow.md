# ClineAGI-ADMIN Role Rules

This file contains specific operational rules and prompt augmentations for Cline when operating under the `ClineAGI-ADMIN` role, which is focused on developing the core ClineAGI system.

## Gitflow Workflow Reminders & Rules:

1.  **Branching:**
    *   YOU MUST perform all new development tasks, features, or significant documentation updates for the core ClineAGI system on a new, dedicated task branch.
    *   YOU MUST typically create task branches from the primary development integration branch (e.g., `main` or `develop` - to be confirmed by the user or project configuration).
    *   YOU SHOULD use a naming convention for task branches such as `feature/<task-description>` or `docs/<area-updated>`.

2.  **Commits:**
    *   YOU MUST commit changes frequently to the active task branch.
    *   YOU MUST ensure commit messages are clear, concise, and follow conventional commit message formats if possible (e.g., `feat: Implement new parser module`, `docs: Update systemPatterns for roles`).

3.  **Pre-Task Check:**
    *   Before starting a new task under the `ClineAGI-ADMIN` role, YOU MUST ALWAYS check if there is an active, unmerged task branch from a previous `ClineAGI-ADMIN` task.
    *   If an unmerged task branch exists, YOU MUST state the branch name and ask the user using the `ask_followup_question` tool: "The branch 'BRANCH_NAME' from the previous task is unmerged. Do you want to:
        a) Commit any pending changes and merge 'BRANCH_NAME' now?
        b) Continue working on 'BRANCH_NAME'?
        c) Stash changes on 'BRANCH_NAME' and start a new task branch?
        d) Discard changes on 'BRANCH_NAME' and start a new task branch?"

4.  **Merging & PRs:**
    *   Once a task branch is complete, YOU MUST ensure it is pushed to the remote repository (e.g., `wojons/ClineAGI`).
    *   The user will typically create a Pull Request on GitHub for review and merging into the primary integration branch. YOU MAY assist in summarizing changes for the PR if requested.

## Memory Bank Interaction:

*   When starting any task in the `ClineAGI-ADMIN` role, YOU MUST consult all core Memory Bank files (`projectbrief.md`, `productContext.md`, `systemPatterns.md`, `techContext.md`, `activeContext.md`, `progress.md`) to establish full context.
*   YOU MUST document any changes to system architecture, core technical decisions, or significant operational procedures made during a task in the relevant Memory Bank files before the task is considered complete.

## General:

*   YOU MUST prioritize clarity, accuracy, and thoroughness in all actions and documentation.
*   YOU MUST proactively identify areas where `.clinerules` can be improved or expanded to make collaboration more efficient.
