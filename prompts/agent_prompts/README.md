# Agent Prompts Directory Overview

## 1. Purpose Statement

This directory, `prompts/agent_prompts/`, houses core prompt files that directly define or influence the fundamental reasoning, behavior, and operational loops of Cline, the AI Software Engineering Assistant. These prompts are central to how Cline interprets tasks, makes decisions, and executes its core functionalities.

## 2. Scope & Content Guidelines

### Content That Belongs Here:
*   **Core Agent Behavior Prompts (Markdown `.md`):** Files containing prompts that define:
    *   High-level operational principles (e.g., Prometheus-0 prompting style).
    *   Specific behavioral responses to certain situations (e.g., handling pop quizzes).
    *   Core cognitive processes like planning, reasoning, and self-programming loops.
*   **Naming Convention:** Files generally follow a `NNN-MM_descriptive-name.md` pattern, often inheriting numbering from related core concepts if applicable.

### Content That Does NOT Belong Here:
*   **Task-Specific Use Case Guides:** These belong in `prompts/use_cases/`.
*   **General Workflow Definitions:** These belong in `prompts/workflows/` or `prompts/core_workflows/`.
*   **Prompt Style Guides (General Techniques):** These belong in `prompts/prompt_styles/`. While agent prompts might *employ* certain styles, the guides defining those styles are separate.
*   **Active Operational Rules (`.clinerules`):** These belong in the `.clinerules/` directory.

## 3. Key Files Overview

As of the last update, this directory contains the following key files:

*   **`000-03_core-prometheus-0-prompting.md`**: Outlines core prompting principles based on Prometheus-0 for effective LLM interaction.
*   **`000-13_core-ai-pop-quiz-handling.md`**: Defines how Cline should handle unexpected "pop quiz" style questions from the user (migrated from `.clinerules`).
*   **`000-23_core-agent-planning-working-backwards-prompt.md`**: Contains prompts guiding the agent in applying the "working backwards" planning strategy.
*   **`000-24_core-agent-reasoning-fake-cot-prompt.md`**: Provides prompts for utilizing Fake Chain-of-Thought (Fake CoT) for reasoning processes.
*   **`000-25_core-agent-self-programming-main-loop-prompt.md`**: Defines the prompts for Cline's main self-programming operational loop.

*(This list should be kept current as agent prompts are added, modified, or renumbered.)*

## 4. Usage & Maintenance

*   These prompts are fundamental to Cline's operation and are likely loaded or referenced during its core processing cycles.
*   Modifications to these files can significantly impact Cline's behavior and should be done with a deep understanding of the system architecture.
*   This `README.md` should be updated if the structure or key files within this directory change significantly.

---
Last Updated: 2025-05-11
