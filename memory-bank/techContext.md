# Technical Context: ClineAGI

## 1. Core Technologies
-   **Primary Development Languages:** TypeScript/JavaScript (primarily for VSCode extension and potential future web UI components).
-   **Operating System (Development Environment):** macOS Sonoma
-   **Default Shell (Development Environment):** bash
-   **Primary AI Assistant (Cline):** Capabilities include CLI execution, file system operations (read, write, list, search), code definition listing, browser interaction, and access to MCP-provided tools.
-   **LLM Integration:** Integration with multiple LLM APIs (e.g., OpenAI, Anthropic, Google Gemini) is a core component.
-   **Version Control:** Git.
    -   **Remote Repository:** The core `ClineAGI` project is hosted on GitHub at `wojons/ClineAGI.git`.
    -   **Workflow:** A Gitflow-like process is adopted for core development (see `systemPatterns.md`).
-   **Documentation Format:** Markdown for all Memory Bank files.
-   **Prompt & Rule Management:** A `.clinerules` system for dynamic prompt and rule loading based on roles and context.
    -   **`.clinerules` Directory:** Located at the root of the ClineAGI project (`<CLINEAGI_ROOT>/.clinerules/`). This directory stores the active operational rules and IS version-controlled. Files follow the `NNN-MM_descriptive-name.md` convention within subdirectories.
    -   **`.clinerules_archive/` Directory:** Located at the root of the ClineAGI project (`<CLINEAGI_ROOT>/.clinerules_archive/`). Stores copies of all `.clinerules` that have been used or developed. Gitignored.
    -   **`prompts/` Directory:** A comprehensive library of use cases, workflows, reference documents, and other guiding materials, indexed by `prompts/prompt_inventory.yaml` for dynamic loading.
-   **Information Intake Directories:**
    -   `intake/`: Located at the root of the ClineAGI project (`<CLINEAGI_ROOT>/intake/`). For user-provided files awaiting processing. Gitignored.
    -   `intake-archive/`: Located at the root of the ClineAGI project (`<CLINEAGI_ROOT>/intake-archive/`). For processed files. Gitignored.
-   **Containerization:** Docker (for containerization of user projects or core services if needed).
-   **User's IDE/Editor:** VSCode. Auto-formatting and linting are expected.
-   **CLI Tooling:**
    -   A suite of shell scripts located in `tools/scripts/` provides command-line access to core functionalities.
    -   These scripts are inventoried in `tools/scripts_inventory.yaml`.
-   **Future/Potential Technologies:**
    -   **UI Framework:** e.g., React/Next.js for potential Web UI components.
    -   **Vector Database:** e.g., Pinecone, Weaviate for advanced Retrieval Augmented Generation (RAG) capabilities.

## 2. AGI Agent Technical Concepts (Prometheus-0)
-   **Planning:** Hierarchical Task Networks (HTN), PDDL Integration, Monte Carlo Tree Search (MCTS).
-   **Reasoning:** Neuro-Symbolic (NeSy) AI, Knowledge Graphs (KGs), Causal Reasoning.
-   **Verification & Reliability:** Formal Methods, Automated Testing, Runtime Monitoring, Sandboxing & Safety Mechanisms.
-   **Self-Awareness & Metacognition:** Uncertainty Quantification, Introspection & Self-Evaluation, Recognizing Knowledge Gaps.
-   **Tool Integration:** Function Calling, Dynamic Tool Generation, Grounding.
    *(Detailed in `systemPatterns.md` and agent-specific prompts)*

## 3. Technical Constraints & Considerations
-   **Cline's Session-Based Memory:** The Memory Bank is CRITICAL.
-   **Tool Limitations:** Cline operates within its provided tool capabilities.
-   **File System Access:** Relative to CWD (assumed to be `<CLINEAGI_ROOT>`) or absolute paths (use sparingly, prefer placeholders like `<CLINEAGI_ROOT>`).
-   **Command Execution:** New terminal instances for each command.
-   **Modularity of `projects/` Repositories:** Independent Git repositories.
    *(Detailed in `systemPatterns.md`)*

## 4. Dependencies (Initial)
-   Core `ClineAGI` project: User's development environment (Git, shell), Cline's operational environment.
-   User projects in `projects/` may introduce their own dependencies.

## 5. Tool Usage Patterns
-   Key tools include `write_to_file`, `replace_in_file`, `read_file`, `list_files`, `search_files`, `execute_command`, `browser_action`, and MCP tools.
-   Shell scripts in `tools/scripts/` (e.g., `read-file-content.sh`, `write-to-file.sh`, `search-files-regex.sh`) offer CLI alternatives for core operations.
    *(Specific patterns and detailed Git commands are documented in `systemPatterns.md`)*

## 6. AGI Agent Prompting and Knowledge Organization
-   **Purpose:** Knowledge base and prompt library for "Prometheus-0".
-   **Location:** `<CLINEAGI_ROOT>/.clinerules/000_core/000_agent_prompts/` and the broader `prompts/` directory.
-   **Key Files:** `agent_knowledge_base_summary.md`, `agent_self_programming_main_loop_prompt.md`, `prompts/prompt_inventory.yaml`, and various use case/workflow files in `prompts/`.
    *(Detailed in `systemPatterns.md`)*

## 7. Project Templating System
-   **Purpose:** Standardized baseline for new user projects.
-   **Template Source:** `wojons/ClineAGI-Project-Template` Git repository.
-   **Workflow:** Copy template, initialize Git, configure remotes.
    *(Detailed in `systemPatterns.md`)*

## 8. Component Relationships
-   `ClineAGI` parent provides environment/tools.
-   User projects consume/specialize core capabilities.
-   Memory Bank informs all development.
    *(Detailed in `systemPatterns.md`)*

## 9. Critical Implementation Paths (Summary)
-   Initial setup of Memory Bank, project structure, Git, `.gitignore`, Gitflow, Roles, `.clinerules`, Project Templating, and Intake System.
    *(Status and details in `memory-bank/progress.md` and `systemPatterns.md`)*

## 10. Future Considerations (Summary)
-   Inter-project communication, dependency management for core vs. projects, standardization for interoperability.
    *(Detailed in `systemPatterns.md`)*
