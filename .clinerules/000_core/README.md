# 000_core Directory Overview

## 1. Purpose Statement

This directory, `000_core/`, houses the most fundamental and critical `.clinerules` that define the core behavior, operational protocols, and foundational knowledge of Cline, the AI Software Engineering Assistant. These rules are essential for Cline's consistent and effective functioning across all tasks and contexts.

## 2. Scope & Content Guidelines

### Content That Belongs Here:
*   **Core Operational Rules:** Markdown files (`.md`) defining Cline's primary operational loop, communication style, tool usage principles, error handling, data security, and self-improvement mechanisms.
*   **Foundational Protocols:** Rules establishing fundamental workflows like memory bank interaction, task logging, and feedback processing.
*   **Meta-Rules:** Rules about the `.clinerules` system itself or the prompt system, such as how READMEs for directories are generated or how the prompt inventory is managed.
*   **Naming Convention:** Files follow the `000-NN_descriptive-name.md` pattern.

### Content That Does NOT Belong Here:
*   **Domain-Specific Workflows:** Workflows for specific types of tasks (e.g., project management, containerization, specific coding tasks) belong in their respective categorized directories (e.g., `002_workflow/`, `100_clineagi_projects/`).
*   **Prompt Templates or Guides:** These belong in the `prompts/` directory.
*   **Project-Specific Rules:** These belong in the `.clinerules/` directory of an individual project within `projects/`.

## 3. Key Files Overview

This directory contains rules covering:

*   `000-00_core-memory-bank-structure.md`: Defines the structure and importance of the Memory Bank.
*   `000-01_core-ai-response-requirements.md`: Critical requirements for Cline's response format and behavior.
*   `000-02_core-ai-communication-and-style.md`: Guidelines for AI communication, writing style, and response modes.
*   `000-03_core-self-improvement-protocol.md`: Protocol for self-reflection and suggesting improvements to `.clinerules`.
*   `000-04_core-ai-tool-usage-guidelines.md`: Guidelines for how Cline should use available tools.
*   `000-05_core-continuous-improvement-protocol.md`: Mandatory protocol for learning, knowledge capture, and continuous improvement.
*   `000-06_core-ai-approach-to-work.md`: Cline's general approach to work and handling difficulties.
*   `000-07_core-agi-admin-gitflow.md`: Specific operational rules for Cline when in the `ClineAGI-ADMIN` role, focusing on Gitflow.
*   `000-08_core-user-feedback-protocol.md`: Protocol for capturing and storing user feedback.
*   `000-09_core-adaptive-problem-solving.md`: Protocol for recognizing repetitive failures and adapting problem-solving approaches.
*   `000-10_core-task-thread-logging.md`: Protocol for creating and managing task-specific log files.
*   `000-11_core-ai-data-security.md`: Guidelines for handling data security.
*   `000-12_core-yolo-mode-protocol.md`: Protocol for operating in "YOLO" mode.
*   `000-13_core-ai-agent-loop.md`: Defines Cline's agent loop and information processing.
*   `000-14_core-ai-error-handling.md`: Guidelines for Cline's error handling.
*   `000-16_workflow-directory-readme-generation.md`: The workflow for generating these README files.
*   `000-99_prompt_system_overview.md`: Overview of the `prompts/` directory and its dynamic loading mechanism.

*(This list should be kept current as core rules are added, modified, or renumbered.)*

## 4. Usage & Maintenance

*   These core rules are loaded by default and form the basis of Cline's operation.
*   Modifications to these files should be done with extreme care, as they have a broad impact on Cline's behavior.
*   This `README.md` should be updated whenever the structure or key files within `000_core/` change significantly.

---
Last Updated: 2025-05-11
