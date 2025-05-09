# Technical Context: ClineAGI

## 1. Core Technologies
-   **Operating System (Development Environment):** macOS Sonoma
-   **Default Shell (Development Environment):** bash
-   **Primary AI Assistant (Cline):** Capabilities include CLI execution, file system operations (read, write, list, search), code definition listing, browser interaction, and access to MCP-provided tools.
-   **Version Control:** Git.
    -   **Remote Repository:** The core `ClineAGI` project is hosted on GitHub at `https://github.com/wojons/ClineAGI.git`.
    -   **Workflow:** A Gitflow-like process is adopted for core development (see `systemPatterns.md`).
-   **Documentation Format:** Markdown for all Memory Bank files.
-   **Prompt & Rule Management:** A `.clinerules` system will be used for dynamic prompt and rule loading based on roles.

## 2. Development Setup & Tools
-   **Working Directory:** `/Users/lexykwaii/Code/ClineAGI` is the root directory for the core AGI project.
-   **Project Template Source:**
    -   **Remote URL:** `https://github.com/wojons/ClineAGI-Project-Template.git`
    -   **Local Clone Path:** `/Users/lexykwaii/Code/ClineAGI/ClineAGI-Project-Template/` (This directory is gitignored).
-   **`.clinerules` Directory:** Located at `/Users/lexykwaii/Code/ClineAGI/.clinerules`. This project-specific directory stores role-based prompts and operational rules (e.g., `ClineAGI-ADMIN_rules.md`). This directory itself IS version-controlled with the main ClineAGI repo.
-   **Information Intake Directories:**
    -   `intake/`: Located at `/Users/lexykwaii/Code/ClineAGI/intake/`. For user-provided files awaiting processing. Gitignored.
    -   `intake-archive/`: Located at `/Users/lexykwaii/Code/ClineAGI/intake-archive/`. For processed files. Gitignored.
-   **Cline's Toolset:** The tools available to Cline are the primary means of interacting with and modifying the project.
-   **User's IDE/Editor:** VSCode. Auto-formatting and linting are expected.

## 3. Role-Based Operations
-   **Concept:** Cline's operational mode, loaded prompts, and adherence to specific workflows (like Gitflow) will be determined by an active "role" (e.g., `ClineAGI-ADMIN`).
-   **Activation:** The mechanism for switching roles will be defined (e.g., user instruction).
-   **Configuration:** Role definitions and associated rules/prompts will be stored within the `.clinerules` system.

## 4. Technical Constraints & Considerations
-   **Cline's Session-Based Memory:** Cline's knowledge is reset between sessions. The Memory Bank is therefore CRITICAL for maintaining project continuity and context. Cline MUST read and rely on the Memory Bank at the start of each task.
-   **Tool Limitations:** Cline operates within the capabilities and limitations of its provided tools. For example, `cd` is not a standalone persistent command; path context must be managed per tool use.
-   **File System Access:** Cline's file operations are based on paths relative to the current working directory (`/Users/lexykwaii/Code/ClineAGI`) or absolute paths.
-   **Command Execution:** CLI commands are executed in new terminal instances. Long-running processes are possible, and their status will be reported.
-   **Modularity of `projects/` Repositories:** User projects within the `projects/` directory are intended to be independent Git repositories. This means they will have their own `.git` directories and will not be Git submodules of `ClineAGI` by default, to ensure maximum user flexibility in managing their own remote repositories and project histories. The main `ClineAGI` repo will need a `.gitignore` entry for `projects/*/` (or similar) to avoid tracking the content of these sub-repos, while still allowing the `projects` directory itself and its top-level `README.md` to exist.

## 5. Dependencies (Initial)
-   The core `ClineAGI` project itself has no external software dependencies at this initial stage, beyond the user's development environment (Git, shell, etc.) and Cline's operational environment.
-   Individual user projects within `projects/` may introduce their own dependencies as they are developed.

## 6. Tool Usage Patterns
-   **File Creation/Overwriting:** `write_to_file` for new files or substantial rewrites.
-   **Targeted File Edits:** `replace_in_file` for specific, localized changes.
-   **Information Gathering:** `list_files`, `read_file`, `search_files`, `list_code_definition_names`.
-   **Execution (`execute_command`):** For running scripts, build processes, or other CLI tasks, including:
    -   `git init`: Initialize a new Git repository.
    -   `git remote add origin <url>`: Connect local repository to a remote.
    -   `git remote add <name> <url>`: Add an additional remote repository (e.g., for template upstream).
    -   `git add .` or `git add <file>`: Stage changes for commit.
    -   `git commit -m "<message>"`: Commit staged changes.
    -   `git push -u origin <branch>` or `git push`: Push commits to remote.
    -   `git branch <branch-name>`: Create a new branch.
    -   `git checkout <branch-name>`: Switch to a different branch.
    -   `git checkout -b <branch-name>`: Create and switch to a new branch.
    -   `git merge <branch-name>`: Merge changes from another branch into the current branch.
    -   `git pull <remote> <branch>`: Fetch and integrate changes from a specific remote and branch.
    -   `git clone <url> <directory>`: Clone a remote repository into a new directory.
    -   `cp -R <source_directory>/. <destination_directory>/`: Copy contents of template to new project. (Note: Need a robust way to exclude the template's `.git` directory if the new project needs a fresh Git history, or to handle it if the template's history is desired as a starting point).
    -   `mv <source_path> <destination_path>`: Move files (e.g., from `intake/` to `intake-archive/`).
    -   `git status`: Check the status of the working directory and staging area.
-   **Verification/Testing:** `browser_action` for web-based components.
-   **MCP Tools:** Utilized as needed.
