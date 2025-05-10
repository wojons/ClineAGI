---
description: Defines concepts and guidelines for using non-MCP integrated tools like shell scripts, package managers, and external projects.
author: Cline (AI Assistant)
version: 1.0
tags: ["tooling", "integrated-tools", "workflow"]
globs: []
---

# Integrated Tooling Concepts

## Objective

To define how Cline can leverage non-MCP tools integrated directly into the project environment, such as shell scripts, package managers (npm, pip, etc.), and external code/projects used as tools.

## Concepts

1.  **Integrated Tools:** These are executable components or workflows that reside within the project or are accessible via the project's environment (e.g., installed via a package manager), but are not exposed as formal MCP tools.
    *   **Shell Scripts:** Custom scripts written in bash, Python, etc., located within the project directory (e.g., `scripts/build.sh`).
    *   **Package Manager Binaries:** Executables provided by project dependencies (e.g., `webpack`, `pytest`, `eslint`).
    *   **External Projects/Code:** Codebases or tools downloaded or included in the project that can be executed (e.g., a specific CLI tool downloaded into a `bin/` directory).

2.  **Discovery:** Integrated tools are typically discovered by:
    *   Examining project file structure (e.g., looking for a `scripts/` directory, `Makefile`, `package.json` scripts).
    *   Consulting project-specific documentation or memory bank entries.
    *   Inferring from project type and common practices (e.g., `npm` for Node.js, `pip` for Python).

3.  **Execution:** Integrated tools are primarily executed using the `execute_command` tool.

## Guidelines for Use

1.  **Prioritize Dedicated Tools:** Whenever a dedicated MCP tool or a core Cline tool (like `read_file`, `replace_in_file`) exists for a task, prefer it over using an integrated tool via `execute_command`.
2.  **Identify the Correct Command:** Determine the exact shell command needed to execute the integrated tool, including any necessary arguments or environment variables.
3.  **Execute via `execute_command`:** Use the `execute_command` tool, ensuring the command is run in the correct directory (prepending `cd <project_path> &&` if necessary).
4.  **Handle Dependencies:** If an integrated tool requires dependencies (e.g., a package manager binary), ensure those dependencies are installed in the environment where the command is executed (either the host or a container, as per project setup). Use the `200_containers/200-05_container-dependency-management.md` workflow if dependencies need to be installed inside a container.
5.  **Input/Output:** Be prepared to handle input (if the tool is interactive) and parse output from the `execute_command` result.
6.  **Security:** Exercise caution when executing arbitrary scripts or external code. Prioritize tools defined within the trusted project context.
7.  **Documentation:** Document commonly used integrated tools and their usage in the project's memory bank (`techContext.md` or a dedicated `tooling.md`).

## Use Cases

*   Running project build scripts (e.g., `npm run build`, `make`).
*   Executing project-specific test suites (e.g., `pytest`, `npm test`).
*   Running linters or formatters (e.g., `eslint --fix`, `black .`).
*   Invoking CLI tools installed as project dependencies.
*   Executing custom automation scripts within the project.

## Dependencies

*   Availability of the `execute_command` tool.
*   Project context management rules (`100_clineagi_projects/`).
*   Container management rules (`200_containers/`) if tools are containerized.
