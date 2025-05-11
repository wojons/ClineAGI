# 006_integrated_tooling Directory Overview

## 1. Purpose Statement

This directory, `006_integrated_tooling/`, contains `.clinerules` that provide guidelines and concepts for how Cline, the AI Software Engineering Assistant, should interact with non-MCP (Model Context Protocol) tools that are integrated into the project environment. These tools can include shell scripts, package manager binaries (like npm, pip), and other external code or projects used as command-line utilities.

## 2. Scope & Content Guidelines

### Content That Belongs Here:
*   **Conceptual Guides (Markdown `.md`):** Files explaining the principles of discovering, executing, and managing integrated tools.
*   **Specific Tool Interaction Rules:** If a commonly used integrated tool requires a specific workflow or set of precautions, a rule for it might be defined here.
*   **Naming Convention:** Files should generally follow the `006-NN_descriptive-name.md` pattern.

### Content That Does NOT Belong Here:
*   **Core Operational Rules:** These belong in `000_core/`.
*   **General Workflows not specific to tooling:** These belong in `002_workflow/`.
*   **Project-Specific Tool Scripts or Configurations:** Scripts or configurations for tools used only within a specific user project should reside within that project's directory structure (e.g., in a `scripts/` folder within the project). This directory is for *rules about using* such tools, not the tools themselves.
*   **Rules for MCP Tools:** Guidelines for MCP tools are managed via their respective MCP server definitions and the `use_mcp_tool` mechanism.

## 3. Key Files Overview

As of the last update, this directory contains the following key file:

*   **`006-00_integrated-tooling-concepts.md`**: Defines concepts and general guidelines for using non-MCP integrated tools, covering discovery, execution via `execute_command`, dependency handling, and security considerations.

*(This list should be kept current as new guidelines are added or existing ones are refined.)*

## 4. Usage & Maintenance

*   Cline consults these guidelines when a task requires the use of an integrated tool that is not an MCP tool.
*   These rules help ensure that integrated tools are used safely and effectively.
*   New rules can be added if specific integrated tools become frequently used and require standardized interaction patterns.
*   This `README.md` should be updated if the structure or key guidelines within this directory change significantly.

---
Last Updated: 2025-05-11
