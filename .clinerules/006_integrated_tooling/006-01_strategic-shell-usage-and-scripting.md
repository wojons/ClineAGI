# Strategic Shell Usage and Scripting Guidelines

## 1. Objective

To guide Cline in strategically utilizing shell commands (bash, zsh, etc.), system package managers (`apt`, `brew`, `npm`, `pip`, etc.), and generated scripts (shell, Python, etc.) for enhanced efficiency, power, and to leverage the mature ecosystem of system-level tools. This rule encourages "thinking outside the box" of built-in LLM tools when appropriate.

## 2. Core Principles

*   **Shell Power & Maturity:** Recognize that the system shell and its associated utilities have been developed and optimized over decades. For many tasks, especially file system operations, text processing, and batch jobs, native shell commands or existing CLI tools are often superior in performance and robustness to sequences of general-purpose LLM tools.
*   **Efficiency (Consider Big O):** Before defaulting to iterative tool use (e.g., multiple `read_file` calls), consider if a shell command or a short script could achieve the same result with better computational efficiency. Think about the potential Big O notation of your approach.
*   **Leverage Existing Tools & Packages:** The system has access to a vast ecosystem of packages via `npm`, `pip`, `apt`, `brew`, etc. Use web search (`brave_web_search` or equivalent) to find suitable CLI tools for the task at hand.
*   **Contextual Execution Environment:**
    *   **Project Container:** When operating within an active project context that has a container (e.g., Docker), assume the project's root is volume-mounted (typically at `/app`). Feel free to install necessary tools and packages *inside the container* using its package manager (e.g., `apt-get install -y <tool>`, `npm install -g <tool>`, `pip install <tool>`) without explicit user permission for each installation. The container is your dedicated workspace for that project.
    *   **Host System:** If not in a containerized project context, or if a tool needs to be installed on the host system, **ALWAYS** ask for explicit user permission (`requires_approval: true`) before attempting any installation.
*   **Script Generation for Complex Workflows:** For multi-step shell operations or when a one-liner becomes too complex, generate a shell script (`.sh`), Python script (`.py`), or script in another appropriate language. Write this script to a file and then execute it using `execute_command`. This is often more manageable and robust.
*   **Safety First:** Always assess the potential impact of shell commands. For commands that modify files, delete data, or have significant side effects, set `requires_approval: true` for the `execute_command` tool.

## 3. Workflow & Considerations

1.  **Analyze Task Requirements:**
    *   Could this task (or sub-task) be performed more efficiently or effectively using shell commands or an existing CLI tool?
    *   Does it involve batch processing, complex text manipulation, or interaction with system services where specialized tools excel?
2.  **Research (If Necessary):**
    *   Use web search to find appropriate shell commands, CLI tools, or packages for the task.
    *   Look for established, well-maintained tools.
3.  **Strategy Selection:**
    *   **One-liner:** Preferable for simple, common operations.
    *   **Generated Script:** Use for more complex sequences, conditional logic, or when readability and maintainability of the shell logic are important.
    *   **Built-in Tools:** Continue to use built-in tools like `read_file`, `replace_in_file` when they are the most direct and efficient method for simple, targeted operations on single files, or when their structured output/input is beneficial.
4.  **Installation (If Necessary):**
    *   **Container:** `docker exec -i <container_name> <package_manager_install_command <tool_name>>` or add to Dockerfile and rebuild if it's a persistent need.
    *   **Host:** Ask user for permission to install. Provide the installation command.
5.  **Command/Script Formulation:**
    *   Carefully construct the shell command or script content.
    *   Ensure proper quoting, escaping, and error handling (e.g., `set -e` in shell scripts).
    *   For scripts, include shebangs (e.g., `#!/bin/bash`, `#!/usr/bin/env python3`).
6.  **Execution:**
    *   Use the `execute_command` tool.
    *   If running a script, ensure it has execute permissions (`chmod +x script_path`) or call it with the interpreter (e.g., `bash script.sh`, `python script.py`).
    *   Always `cd` to the correct directory if paths are relative. For project containers, this is often `cd /app` (or the project root).
7.  **Output Parsing:** Be prepared to parse and interpret the output from shell commands or scripts.

## 4. Examples of Strategic Shell Usage

*   **Reading Multiple Files:** Instead of many `read_file` calls, use `find . -type f -name "*.txt" -print0 | xargs -0 cat` (or a safer variant if `xargs` is problematic, like a loop or `find ... -exec cat {} +`).
*   **Complex Text Search/Replace Across Files:** `grep`, `sed`, `awk` can be powerful.
    *   Example: `grep -rl "old_function_name" ./src | xargs sed -i 's/old_function_name/new_function_name/g'` (Use with extreme caution and `requires_approval: true`).
*   **Batch File Renaming/Moving:** Shell loops with `mv`.
*   **Checking System Information:** `df -h`, `free -m`, `uname -a`.
*   **Process Management:** `ps aux`, `kill`.

## 5. When to Prefer Built-in Tools

*   Simple, single-file reads where precise line ranges are needed (`read_file`).
*   Targeted, precise changes within a single file where the diff format is beneficial (`replace_in_file`).
*   When the overhead of writing and executing a script outweighs the benefit for a very simple task.
*   When a dedicated MCP tool offers a more structured or safer way to achieve the goal.

By thoughtfully integrating shell capabilities, Cline can become a more powerful, efficient, and versatile assistant.
