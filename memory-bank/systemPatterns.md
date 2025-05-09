# System Patterns: ClineAGI

## 1. Overall Architecture
ClineAGI employs a two-tiered architecture:

-   **Tier 1: Core AGI System (`ClineAGI` Parent Repository)**
    -   This is the main Git repository for the project.
    -   It houses the foundational AGI intelligence, core logic, shared utilities, and the Memory Bank itself.
    -   Development in this tier is focused on building and enhancing the general capabilities of the AGI.
    -   Managed and updated collaboratively by the user and Cline.

-   **Tier 2: User Projects (`projects/` Directory)**
    -   A dedicated directory named `projects/` resides within the `ClineAGI` parent repository.
    -   This directory is intended to contain multiple, independent Git repositories, each representing a specific user project, dataset, or AGI application.
    -   Each sub-repository within `projects/` can have its own version control history, dependencies, and development lifecycle, isolated from the core AGI and other user projects.
    -   The `ClineAGI` parent repository's `.gitignore` file should be configured to ignore the contents of these sub-repositories (except perhaps their initial empty directories or placeholder READMEs if they are not true submodules initially) to prevent accidental commits of project-specific data into the core AGI repo. *Initial thought: these will be separate repos, not git submodules, to allow maximum flexibility for the user to manage them, e.g., linking to their own private remotes.*

## 2. Key Technical Decisions
-   **Version Control:** Git is the exclusive version control system for both the core `ClineAGI` repository and all individual user project repositories within `projects/`.
-   **Modularity:** The separation between the core AGI and user projects is a fundamental design principle. This promotes maintainability, allows for independent updates, and supports diverse user needs.
-   **Memory Bank as Single Source of Truth:** All critical project information, design rationale, architectural decisions, technical context, and progress tracking are centralized in the `memory-bank/` directory. This is essential for Cline's operation due to its session-based memory.
-   **Iterative Development:** The AGI will be built incrementally, with frequent collaboration, implementation, and documentation updates.

## 3. Component Relationships
-   The `ClineAGI` parent repository provides the foundational environment and potentially shared tools or APIs for the user projects.
-   User projects within `projects/` are consumers or specializations of the core AGI capabilities, or entirely separate endeavors managed within the same overarching structure. They do not directly modify the core AGI code but interact with it or operate alongside it.
-   The Memory Bank informs all development activities across both tiers.

## 4. Critical Implementation Paths (Initial)
-   **Memory Bank Initialization:** Establishing the core set of Memory Bank documents. (Current focus)
-   **`projects/` Directory Setup:** Creating the `projects/` directory and its initial `README.md`.
-   **Git Repository Initialization:** Ensuring the `ClineAGI` directory is a Git repository. (To be done by user or as a next step)
-   **`.gitignore` Configuration:** Properly configuring `.gitignore` in the `ClineAGI` root to exclude contents of project sub-repositories.

## 5. Future Considerations
-   **Inter-Project Communication:** How will different user projects (or the core AGI and a user project) communicate if needed? (e.g., APIs, shared data formats).
-   **Dependency Management:** How will dependencies be managed for the core AGI versus individual projects?
-   **Standardization:** Will there be any enforced standards (e.g., for data formats, API contracts) for projects within the `projects/` directory to ensure interoperability with the core AGI, if desired?
