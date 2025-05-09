# Technical Context: ClineAGI

## 1. Core Technologies
-   **Operating System (Development Environment):** macOS Sonoma
-   **Default Shell (Development Environment):** bash
-   **Primary AI Assistant (Cline):** Capabilities include CLI execution, file system operations (read, write, list, search), code definition listing, browser interaction, and access to MCP-provided tools.
-   **Version Control:** Git. All components of ClineAGI (core and projects) will be managed using Git repositories.
-   **Documentation Format:** Markdown for all Memory Bank files.

## 2. Development Setup & Tools
-   **Working Directory:** `/Users/lexykwaii/Code/ClineAGI` is the root directory for the core AGI project.
-   **Cline's Toolset:** The tools available to Cline (as detailed in the system prompt) are the primary means of interacting with and modifying the project.
-   **User's IDE/Editor:** VSCode (implied by the environment details). Auto-formatting and linting may occur, and Cline must adapt to the final state of files after such modifications.

## 3. Technical Constraints & Considerations
-   **Cline's Session-Based Memory:** Cline's knowledge is reset between sessions. The Memory Bank is therefore CRITICAL for maintaining project continuity and context. Cline MUST read and rely on the Memory Bank at the start of each task.
-   **Tool Limitations:** Cline operates within the capabilities and limitations of its provided tools. For example, `cd` is not a standalone persistent command; path context must be managed per tool use.
-   **File System Access:** Cline's file operations are based on paths relative to the current working directory (`/Users/lexykwaii/Code/ClineAGI`) or absolute paths.
-   **Command Execution:** CLI commands are executed in new terminal instances. Long-running processes are possible, and their status will be reported.
-   **Modularity of `projects/` Repositories:** User projects within the `projects/` directory are intended to be independent Git repositories. This means they will have their own `.git` directories and will not be Git submodules of `ClineAGI` by default, to ensure maximum user flexibility in managing their own remote repositories and project histories. The main `ClineAGI` repo will need a `.gitignore` entry for `projects/*/` (or similar) to avoid tracking the content of these sub-repos, while still allowing the `projects` directory itself and its top-level `README.md` to exist.

## 4. Dependencies (Initial)
-   The core `ClineAGI` project itself has no external software dependencies at this initial stage, beyond the user's development environment (Git, shell, etc.) and Cline's operational environment.
-   Individual user projects within `projects/` may introduce their own dependencies as they are developed.

## 5. Tool Usage Patterns
-   **File Creation/Overwriting:** `write_to_file` will be used for creating new files or for substantial rewrites where the entire content is replaced.
-   **Targeted File Edits:** `replace_in_file` will be the default for making specific, localized changes to existing files, using precise SEARCH/REPLACE blocks.
-   **Information Gathering:** `list_files`, `read_file`, `search_files`, and `list_code_definition_names` will be used to understand the project structure and content.
-   **Execution:** `execute_command` for running scripts, build processes, or other CLI tasks.
-   **Verification/Testing:** `browser_action` may be used for testing web-based components or interfaces if they are developed.
-   **MCP Tools:** Utilized as needed when their specific capabilities are relevant to the task.
