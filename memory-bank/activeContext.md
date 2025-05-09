# Active Context: ClineAGI - Finalizing .clinerules Management Structure

## 1. Current Work Focus
The current focus is on finalizing the setup of the `.clinerules` management structure, including ensuring all relevant files are in the active directory with the correct naming convention and updating the Memory Bank documentation. This involves:
-   Renaming `writing-effective-clinerules.md` to follow the naming convention. (Completed)
-   Copying `memory-bank.md` from the archive to the active `.clinerules/` directory with the correct naming. (Completed)
-   Renaming the original `000-00_core-agi-admin-gitflow.md` to accommodate the new `000-00` file. (Completed)
-   Updating the Memory Bank (`systemPatterns.md`, `techContext.md`, `activeContext.md`, `progress.md`) to reflect these latest changes to the `.clinerules` directory. (This document update is in progress)

## 2. Recent Changes & Decisions
-   **Decision (Previous):** Implement a structured `.clinerules` management system with an archive and naming convention.
-   **Action (Previous):** Created `/.clinerules_archive/`, copied existing rules, renamed active rules, updated Memory Bank, committed and pushed to `feature/setup-operational-framework`.
-   **Decision (New):** Ensure `writing-effective-clinerules.md` and `memory-bank.md` from archive are correctly named and located in the active `.clinerules/` directory.
-   **Action (New):** Renamed `/.clinerules/writing-effective-clinerules.md` to `001-03_reference-writing-effective-clinerules.md`.
-   **Action (New):** Copied `intake-archive/prompts-main/clinerules/memory-bank.md` to `/.clinerules/000-00_core-memory-bank-structure.md`.
-   **Action (New):** Renamed `/.clinerules/000-00_core-agi-admin-gitflow.md` to `000-10_core-agi-admin-gitflow.md`.
-   **Action (New):** `systemPatterns.md` and `techContext.md` updated to reflect these latest changes.

## 3. Immediate Next Steps
1.  Complete the update of this file (`activeContext.md`).
2.  Update `memory-bank/progress.md` to reflect these latest changes to the `.clinerules` directory.
3.  Commit the renaming of `writing-effective-clinerules.md`, the addition of `000-00_core-memory-bank-structure.md`, the renaming of `000-10_core-agi-admin-gitflow.md`, and the Memory Bank updates to the `feature/setup-operational-framework` branch.
4.  Push the updated `feature/setup-operational-framework` branch to the remote repository.
5.  Continue discussions to define the specifics of:
    -   Further content and structure for `.clinerules` (beyond the initial admin rules).
    -   Role definition and activation mechanisms.
    -   Gitflow primary integration branch, task branch naming, and merge/review process.
    -   The precise workflow for creating a new user project from the template.
    -   Merge conflict resolution strategy when updating projects from the template.
    -   How Cline will monitor and process files from the `intake/` directory.

## 4. Active Considerations & Questions
-   **`.clinerules` Location & Structure:** Clarification needed on whether `.clinerules` is project-specific (`/Users/lexykwaii/Code/ClineAGI/.clinerules`) or global (`/Users/lexykwaii/Documents/Cline/Rules`), and its internal organization.
-   **Role Definition & Switching:** How will roles be formally defined and how will I be instructed to switch between them?
-   **Gitflow Branching Strategy:** Confirm main integration branch (`main` vs. `develop`), task branch naming, and merge/review preferences.
-   **User Git Configuration:** (Noted previously, for user to address if desired).
-   **Robust Template Copying:** The `cp -R` command noted in `techContext.md` is basic. A more robust method for copying template contents (e.g., using `rsync` with excludes for `.git` or a script) will be needed for the actual project creation logic.

## 5. Important Patterns & Preferences (Emerging)
-   **Version Controlled Development:** All core changes follow a structured Git workflow.
-   **Explicit Operational Modes:** Roles will make operational contexts explicit.
-   **Document-Driven Development:** Memory Bank updates are integral to implementing new systems.
-   **Templating for Consistency:** Using a project template will ensure a consistent starting point for user projects.

## 6. Learnings & Project Insights
-   (Previous learnings about Git and operational structures remain valid).
-   Introducing a project template system adds another layer of structured process, beneficial for scalability and user experience.
-   The interaction between the core AGI, the template, and user projects will require careful design of Git remote configurations and update workflows.
