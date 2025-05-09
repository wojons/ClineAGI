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
-   **Version Control:** Git is the exclusive version control system. The core `ClineAGI` repository is hosted on GitHub at `wojons/ClineAGI`.
-   **Version Control Workflow:** A Gitflow-like process will be used for core `ClineAGI` development (see section below).
-   **Modularity:** The separation between the core AGI and user projects is a fundamental design principle.
-   **Memory Bank as Single Source of Truth:** All critical project information is centralized in `memory-bank/`.
-   **Iterative Development:** The AGI will be built incrementally.
-   **Role-Based Operations:** Project interactions and workflows will be governed by defined roles (e.g., `ClineAGI-ADMIN`).
-   **Dynamic Prompting (`.clinerules`):** My behavior and context will be dynamically managed through a `.clinerules` system.

## 3. Version Control Workflow (Gitflow Adaptation)
For the core `ClineAGI` repository, especially when operating under a role like `ClineAGI-ADMIN`:
-   **Task Branching:** Each distinct task or feature will be developed on a dedicated branch, typically created from the main development line (e.g., `main` or a `develop` branch).
-   **Frequent Commits:** Changes will be committed frequently to the task branch with clear, descriptive messages.
-   **Pre-Task Check:** Before starting a new task, if an existing task branch is unmerged, the user will be prompted to decide on merging the current branch or starting a new one.
-   **Merging:** Completed task branches will be merged back into the primary development integration branch. The specifics of review and merge (user-led vs. AI-assisted) will be refined.
-   **Remote Synchronization:** Changes will be regularly pushed to the `wojons/ClineAGI` remote repository on GitHub.

## 4. Role-Based Operational Model
-   **Purpose:** To tailor Cline's behavior, context, and operational procedures based on the current focus of work.
-   **Definition:** Roles (e.g., `ClineAGI-ADMIN` for core system work, project-specific roles for work within `projects/`) will be defined. These definitions will likely reside within the `.clinerules` system or the Memory Bank.
-   **Activation:** The mechanism for activating or switching roles will be defined (e.g., user command).
-   **Impact:** Activated roles will determine which prompts/rules from `.clinerules` are loaded, and may trigger specific workflows (like Gitflow for `ClineAGI-ADMIN`).

## 5. Prompt and Rule Management (`.clinerules`)
-   **Purpose:** To allow dynamic and context-aware management of Cline's guiding prompts and operational rules.
-   **Location:** A project-specific `.clinerules` directory at `/Users/lexykwaii/Code/ClineAGI/.clinerules` stores these configurations.
-   **Structure:** The directory is organized by role (e.g., `.clinerules/ClineAGI-ADMIN_rules.md`).
-   **Content:** Contains specific instructions, prompt segments, and rules that Cline will load based on the active role. Cline will collaboratively build and refine these rules. (Initial `ClineAGI-ADMIN_rules.md` created).

## 6. Information Intake System
-   **Purpose:** To provide a structured way for the user to pass information, articles, or prompts to Cline for processing.
-   **`intake/` Directory:** Located at `/Users/lexykwaii/Code/ClineAGI/intake/`. Users place files here for Cline to process. This directory is gitignored.
-   **`intake-archive/` Directory:** Located at `/Users/lexykwaii/Code/ClineAGI/intake-archive/`. After processing a file from `intake/`, Cline will move the original, unchanged file to this directory. This directory is gitignored.
-   **Processing Workflow:** Cline will check the `intake/` directory for new files, process them as instructed, and then archive them.

## 7. Project Templating System
-   **Purpose:** To provide a standardized baseline for new user projects created within the `ClineAGI/projects/` directory.
-   **Template Source:** A dedicated Git repository, `wojons/ClineAGI-Project-Template`, serves as the master template.
    -   A local clone of this template is maintained at `ClineAGI/ClineAGI-Project-Template/` (this path is ignored by the main `ClineAGI` Git repository).
-   **New Project Workflow:**
    1.  When a user requests a new project, ClineAGI will copy the contents of the local `ClineAGI/ClineAGI-Project-Template/` into a new subdirectory within `ClineAGI/projects/ (e.g., `ClineAGI/projects/new-project-name/`).
    2.  This new project directory will be initialized as its own Git repository.
    3.  The new project repository will be configured with `wojons/ClineAGI-Project-Template` as a remote (e.g., named `template-upstream`) to allow users to pull future updates from the master template.
    4.  Users can then set up their own `origin` remote for their project to point to their personal GitHub repository or other Git hosting service.
-   **Template Updates & Conflict Management:**
    -   Users can pull changes from `template-upstream` into their projects.
    -   ClineAGI will assist in managing merge conflicts that may arise during these updates. The exact mechanism for conflict resolution (e.g., presenting conflicts to the user, attempting automated resolution for common cases) will be refined.
-   **Template Management:** Updates to the `wojons/ClineAGI-Project-Template` itself will be managed collaboratively by the user and Cline, likely under a specific role or task context.

## 7. Component Relationships
-   The `ClineAGI` parent repository provides the foundational environment and potentially shared tools or APIs for the user projects.
-   User projects within `projects/` are consumers or specializations of the core AGI capabilities, or entirely separate endeavors managed within the same overarching structure. They do not directly modify the core AGI code but interact with it or operate alongside it.
-   The Memory Bank informs all development activities across both tiers.

## 4. Critical Implementation Paths (Initial)
-   **Memory Bank Initialization:** (Completed)
-   **`projects/` Directory Setup:** (Completed)
-   **Git Repository Initialization & Remote Setup:** (Completed for `wojons/ClineAGI`)
-   **`.gitignore` Configuration:** (Completed)
-   **Definition of Gitflow Process:** (Ongoing)
-   **Definition of Role-Based System:** (Ongoing, initial rules for `ClineAGI-ADMIN` started).
-   **`.clinerules` System Design:** (Ongoing, initial structure and file created).
-   **Project Templating System Implementation:** (Documented, logic definition pending).
-   **Information Intake System:** (Directories created, workflow defined).

## 9. Future Considerations
-   **Inter-Project Communication:** How will different user projects (or the core AGI and a user project) communicate if needed? (e.g., APIs, shared data formats).
-   **Dependency Management:** How will dependencies be managed for the core AGI versus individual projects?
-   **Standardization:** Will there be any enforced standards (e.g., for data formats, API contracts) for projects within the `projects/` directory to ensure interoperability with the core AGI, if desired?
