# Active Context: ClineAGI - Project Templating & Framework Refinement

## 1. Current Work Focus
The current focus is on integrating the project templating system and continuing to refine and document the operational framework. This involves:
-   Cloning the `wojons/ClineAGI-Project-Template` repository locally. (Completed)
-   Updating the root `.gitignore` to exclude the template source directory. (Completed)
-   Updating the Memory Bank (`systemPatterns.md`, `techContext.md`, `activeContext.md`, `progress.md`) to document:
    -   The new project templating system.
    -   Refinements to Gitflow, roles, and `.clinerules` documentation.
    (This document update is in progress)

## 2. Recent Changes & Decisions
-   **Decision (Previous):** `ClineAGI` project version-controlled on GitHub (`wojons/ClineAGI`), Gitflow adopted, roles and `.clinerules` to be implemented.
-   **Action (Previous):** Local Git repo initialized, remote added, initial commit pushed to `main`. Memory Bank updated for operational framework and pushed to `feature/setup-operational-framework` branch.
-   **Decision (New):** A project templating system using `wojons/ClineAGI-Project-Template` will be implemented.
-   **Action (New):** Cloned `wojons/ClineAGI-Project-Template` to `ClineAGI/ClineAGI-Project-Template/`.
-   **Action (New):** Updated `.gitignore` to exclude `ClineAGI-Project-Template/`.
-   **Action (New):** `systemPatterns.md` and `techContext.md` updated to include the project templating system.

## 3. Immediate Next Steps
1.  Complete the update of this file (`activeContext.md`).
2.  Update `memory-bank/progress.md` to reflect the introduction of the project templating system.
3.  Commit the `.gitignore` update and these Memory Bank updates (for templating system) to the `feature/setup-operational-framework` branch.
4.  Push the updated `feature/setup-operational-framework` branch to the remote repository.
5.  Continue discussions to define the specifics of:
    -   `.clinerules` directory location and structure.
    -   Role definition and activation.
    -   Gitflow primary integration branch, task branch naming, and merge/review process.
    -   The precise workflow for creating a new user project from the template, including how ClineAGI will automate this.
    -   Merge conflict resolution strategy when updating projects from the template.

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
