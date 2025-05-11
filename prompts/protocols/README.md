# Protocols Directory Overview

## 1. Purpose Statement

This directory, `prompts/protocols/`, stores prompt files that define formal protocols for complex, multi-step operations or interactions that Cline may need to undertake. These protocols provide structured guidance for sequences of actions, decision-making, and tool usage in specific, often technical, contexts.

## 2. Scope & Content Guidelines

### Content That Belongs Here:
*   **Protocol Definitions (Markdown `.md`):** Files detailing step-by-step procedures for complex tasks.
    *   These often involve interaction with external systems, development processes, or intricate analytical tasks.
*   **Naming Convention:** Files may follow a `NNN-MM_protocol-descriptive-name.md` pattern (e.g., `003-NN` for general protocols).

### Content That Does NOT Belong Here:
*   **Simple Workflow Definitions:** Shorter, less formal workflows belong in `prompts/workflows/` or `prompts/core_workflows/`. Protocols imply a higher degree of formality and complexity.
*   **Core Agent Logic Prompts:** These belong in `prompts/agent_prompts/`.
*   **Specific Use Case Guides:** These belong in `prompts/use_cases/`.

## 3. Key Files Overview

As of the last update, this directory contains the following key file:

*   **`003-00_protocol-mcp-development.md`**: Defines the protocol for Model Context Protocol (MCP) server development, including steps for planning, implementation, testing, and documentation.

*(This list should be kept current as protocols are added, modified, or renumbered.)*

## 4. Usage & Maintenance

*   Cline references these protocols when undertaking tasks that require a formal, step-by-step approach.
*   These documents ensure consistency and thoroughness in complex operations.
*   The `prompt_inventory.yaml` file should include entries for these protocols to make them discoverable.
*   This `README.md` should be updated if the structure or key files within this directory change significantly.

---
Last Updated: 2025-05-11
