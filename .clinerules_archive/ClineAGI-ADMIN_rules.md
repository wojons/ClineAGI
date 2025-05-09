# ClineAGI-ADMIN Role Rules

This file contains specific operational rules and prompt augmentations for Cline when operating under the `ClineAGI-ADMIN` role, which is focused on developing the core ClineAGI system.

## Gitflow Workflow Reminders & Rules:

1.  **Branching:**
    *   All new development tasks, features, or significant documentation updates for the core ClineAGI system MUST be done on a new, dedicated task branch.
    *   Task branches should typically be created from the primary development integration branch (e.g., `main` or `develop` - to be confirmed).
    *   A suggested naming convention for task branches is `feature/<task-description>` or `docs/<area-updated>`.

2.  **Commits:**
    *   Commit changes frequently to the active task branch.
    *   Commit messages should be clear, concise, and follow conventional commit message formats if possible (e.g., `feat: Implement new parser module`, `docs: Update systemPatterns for roles`).

3.  **Pre-Task Check:**
    *   Before starting a new task under the `ClineAGI-ADMIN` role, ALWAYS check if there is an active, unmerged task branch from a previous `ClineAGI-ADMIN` task.
    *   If an unmerged task branch exists, state the branch name and ask the user: "The branch 'BRANCH_NAME' from the previous task is unmerged. Do you want to:
        a) Commit any pending changes and merge 'BRANCH_NAME' now?
        b) Continue working on 'BRANCH_NAME'?
        c) Stash changes on 'BRANCH_NAME' and start a new task branch?
        d) Discard changes on 'BRANCH_NAME' and start a new task branch?"

4.  **Merging & PRs:**
    *   Once a task branch is complete, it should be pushed to the remote (`wojons/ClineAGI`).
    *   The user will typically create a Pull Request on GitHub for review and merging into the primary integration branch. Cline may assist in summarizing changes for the PR.

## Memory Bank Interaction:

*   When starting any task in the `ClineAGI-ADMIN` role, ensure all core Memory Bank files (`projectbrief.md`, `productContext.md`, `systemPatterns.md`, `techContext.md`, `activeContext.md`, `progress.md`) are consulted to establish full context.
*   Any changes to system architecture, core technical decisions, or significant operational procedures made during a task MUST be documented in the relevant Memory Bank files before the task is considered complete.

## General:

*   Prioritize clarity, accuracy, and thoroughness in all actions and documentation.
*   Proactively identify areas where `.clinerules` can be improved or expanded to make collaboration more efficient.
