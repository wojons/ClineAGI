# Active Context: ClineAGI - Integrating Community .clinerules & Finalizing Setup Phase

## 1. Current Work Focus
The current focus is on integrating community-provided `.clinerules` (guidelines for writing rules) and finalizing the documentation for the current setup phase. This involves:
-   Moving `writing-effective-clinerules.md` and `community-clinerules-contributing-guide.md` (renamed from README.md) from `intake/prompts-main/` to the project's `.clinerules/` directory. (Completed)
-   Archiving the processed `intake/prompts-main/` directory. (Completed)
-   Updating the Memory Bank (`systemPatterns.md`, `techContext.md`, `activeContext.md`, `progress.md`) to reflect these new `.clinerules` additions and the overall state. (This document update is in progress)

## 2. Recent Changes & Decisions
-   **Decision (Previous):** Intake system and initial `ClineAGI-ADMIN_rules.md` created and documented.
-   **Action (Previous):** Memory Bank updated for intake system and `.clinerules` initialization.
-   **Decision (New):** Incorporate provided `.clinerules` (guidelines for writing rules and community contribution guide) into the project's `.clinerules/` directory.
-   **Action (New):** Moved `writing-effective-clinerules.md` and `community-clinerules-contributing-guide.md` to `.clinerules/`.
-   **Action (New):** Archived `intake/prompts-main/`.
-   **Action (New):** `systemPatterns.md` and `techContext.md` updated to list the new `.clinerules` files.

## 3. Immediate Next Steps
1.  Complete the update of this file (`activeContext.md`).
2.  Update `memory-bank/progress.md` to reflect the integration of these new `.clinerules` files.
3.  Commit all new files (`.clinerules/writing-effective-clinerules.md`, `.clinerules/community-clinerules-contributing-guide.md`) and recent Memory Bank updates to the `feature/setup-operational-framework` branch.
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
