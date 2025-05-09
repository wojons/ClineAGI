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
-   **`.clinerules` Directory:** Located at `/Users/lexykwaii/Code/ClineAGI/.clinerules`. This project-specific directory stores the active operational rules. It IS version-controlled. Files follow the `NNN-MM_descriptive-name.md` convention.
    -   `000_core/000-00_core-memory-bank-structure.md`: Defines the core Memory Bank structure and workflows.
    -   `000_core/000-01_core-continuous-improvement-protocol.md`: Protocol for Cline's self-reflection and learning.
    -   `000_core/000-02_core-intake-processing.md`: Workflow for processing intake files.
    -   `000_core/000-03_core-prometheus-0-prompting.md`: Core prompting styles for Prometheus-0.
    -   `000_core/000-04_core-ai-response-styles.md`: Defines different response styles.
    -   `000_core/000-05_core-ai-response-requirements.md`: Critical response format and behavior rules.
    -   `000_core/000-06_core-ai-communication-guidelines.md`: Guidelines for communication with the user.
    -   `000_core/000-07_core-ai-tool-usage-guidelines.md`: Guidelines for using available tools.
    -   `000_core/000-09_core-ai-approach-to-work.md`: General approach to work and handling difficulties.
    -   `000_core/000-10_core-agi-admin-gitflow.md`: Gitflow workflow rules for ClineAGI-ADMIN.
    -   `000_core/000-13_core-ai-information-handling.md`: Guidelines for handling information.
    -   `000_core/000-14_core-ai-data-security.md`: Guidelines for data security.
    -   `000_core/000-15_core-ai-pop-quiz-handling.md`: Guidelines for handling "Pop Quizzes".
    -   `000_core/000-16_core-ai-agent-loop.md`: Defines Cline's agent loop and information processing.
    -   `000_core/000-17_core-ai-knowledge-management.md`: Guidelines for knowledge management and Memory Bank usage.
    -   `000_core/000-18_core-ai-visual-information.md`: Guidelines for handling visual information.
    -   `000_core/000-19_core-ai-writing-style.md`: Guidelines for writing style and documentation.
    -   `000_core/000-20_core-ai-error-handling.md`: Guidelines for error handling.
    -   `000_core/000-21_core-ai-response-modes.md`: Defines different response modes.
    -   `000_core/000-22_core-shell-command-preference.md`: Preference for using bash and shell commands.
    -   `001_reference/001-00_reference-cline-extension-architecture.md`: Documentation on the Cline extension architecture.
    -   `001_reference/001-01_reference-community-contributing-guide.md`: Guide for community contributions to a broader ruleset.
    -   `001_reference/001-02_reference-gemini-comprehensive-software-engineering-guide.md`: Comprehensive software engineering best practices.
    -   `001_reference/001-03_reference-writing-effective-clinerules.md`: Meta-guidelines for creating effective `.clinerules`.
    -   `002_workflow/002-00_workflow-cline-for-research.md`: Guidelines for using Cline as a research assistant.
    -   `002_workflow/002-01_workflow-cline-for-slides.md`: Instructions for working with Slidev projects.
    -   `002_workflow/002-02_workflow-planning-mode.md`: Workflow and behavior for Plan Mode.
    -   `002_workflow/002-03_workflow-todo-list.md`: Workflow for using a todo list file.
    -   `002_workflow/002-04_workflow-agility-story.md`: Guidelines for using the agility story pattern.
    -   `002_workflow/002-05_workflow-analyze-comments.md`: Guidelines for using the analyze comments pattern.
    -   `002_workflow/002-06_workflow-create-5-sentence-summary.md`: Guidelines for creating 5-sentence summaries.
    -   `002_workflow/002-07_workflow-extract-jokes.md`: Guidelines for extracting jokes.
    -   `003_protocol/003-00_protocol-mcp-development.md`: Protocol for developing MCP servers.
    -   `004_tech-specific/004-00_tech-specific-next-js-supabase.md`: Guidelines for Next.js apps with Supabase Auth.
-   **`.clinerules_archive/` Directory:** Located at `/Users/lexykwaii/Code/ClineAGI/.clinerules_archive/`. Stores copies of all `.clinerules` that have been used or developed, serving as a historical reference and source for future rule development. This directory is gitignored.
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
-   **Modularity of `projects/` Repositories:** User projects within the `projects/` directory are intended to be independent Git repositories. This means they will have their own `.git` directories and will not be Git submodules of `ClineAGI` by default, to allow maximum flexibility for the user to manage them, e.g., linking to their own private remotes. The main `ClineAGI` repo will need a `.gitignore` entry for `projects/*/` (or similar) to avoid tracking the content of these sub-repos, while still allowing the `projects` directory itself and its top-level `README.md` to exist.

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
-   **MCP Tools:** Utilized as needed.<environment_details>
# VSCode Visible Files
memory-bank/systemPatterns2.md

# VSCode Open Tabs
memory-bank/agent_self_programming_main_loop_prompt.md
memory-bank/systemPatterns2.md

# Current Time
5/9/2025, 1:55:09 PM (America/Los_Angeles, UTC-7:00)

# Context Window Usage
740,077 / 1,048.576K tokens used (71%)

# Current Mode
ACT MODE
</environment_details>
