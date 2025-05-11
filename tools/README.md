# Tools Directory Overview

## 1. Purpose Statement

This directory, `tools/`, is intended to house utility scripts, supplementary executables, and related inventories that can be leveraged by Cline or the user to perform various development, analysis, or automation tasks. These tools are generally expected to be callable via the `execute_command` tool or used as part of more complex workflows defined in `.clinerules`.

## 2. Scope & Content Guidelines

### Content That Belongs Here:
*   **`scripts/` Subdirectory:** Contains shell scripts (Bash, Python, etc.), Node.js scripts, or other executable files.
    *   These scripts should be well-documented, ideally with comments explaining their purpose, arguments, and usage.
*   **`scripts_inventory.yaml` (or similar):** An inventory file, analogous to `prompts/prompt_inventory.yaml`, that catalogs the available scripts in `tools/scripts/`. This inventory should include:
    *   `name`: A human-readable name for the script.
    *   `path`: The relative path to the script file within `tools/scripts/`.
    *   `description`: A brief explanation of what the script does.
    *   `type`: e.g., `shell_script`, `python_script`.
    *   `triggers`: Optional keywords for discovery.
    *   `arguments`: Description of expected arguments.
    *   `example_usage`: A sample command to run the script.
*   **Other Tool-Related Resources:** Potentially, subdirectories for other types of tools or compiled binaries if needed in the future.

### Content That Does NOT Belong Here:
*   **Core ClineAGI Source Code:** This belongs in `src/` or within the `projects/clineagi-dev/` structure.
*   **Project-Specific Scripts:** Scripts that are only relevant to a single user project should reside within that project's own `scripts/` or `tools/` directory (e.g., `projects/my-web-app/scripts/`). This `tools/` directory is for globally available utilities.
*   **MCP Server Definitions or Code:** These have their own dedicated management and deployment mechanisms.

## 3. Current Key Subdirectories & Files

*   **`scripts/`**: For storing executable script files.
*   **`scripts_inventory.yaml`**: The inventory file cataloging scripts in `tools/scripts/`.

## 4. Usage & Maintenance

*   Scripts in this directory should be designed for general utility.
*   The `scripts_inventory.yaml` must be kept up-to-date as scripts are added, modified, or removed.
*   Cline can use the `scripts_inventory.yaml` to discover available scripts and understand how to use them.
*   This `README.md` should be updated if the structure or primary purpose of the `tools/` directory changes significantly.

---
Last Updated: 2025-05-11
