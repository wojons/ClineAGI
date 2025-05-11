# Reasoning Patterns Directory Overview

## 1. Purpose Statement

This directory, `prompts/reasoning_patterns/`, contains prompt files that define specific patterns and techniques to guide Cline's reasoning processes. These patterns help Cline structure its "thought process," improve the coherence and logical flow of its internal deliberations, and ultimately arrive at more accurate and well-founded conclusions or actions.

## 2. Scope & Content Guidelines

### Content That Belongs Here:
*   **Reasoning Pattern Definitions (Markdown `.md`):** Files detailing specific methodologies for structuring thought processes.
    *   Examples include patterns like Chain-of-Thought (CoT), Fake Chain-of-Thought (Fake CoT), Tree-of-Thought (ToT), or other techniques that encourage step-by-step or structured reasoning.
*   **Naming Convention:** Files may follow a `99X-NN_pattern-descriptive-name.md` pattern (e.g., `998-NN` for general patterns, though this can be flexible).

### Content That Does NOT Belong Here:
*   **General Workflow Definitions:** These belong in `prompts/workflows/` or `prompts/core_workflows/`.
*   **Core Agent Logic Prompts:** While agent logic might *employ* reasoning patterns, the prompts defining the core agent behavior belong in `prompts/agent_prompts/`.
*   **Specific Use Case Guides:** These belong in `prompts/use_cases/`.
*   **Planning Patterns:** While related, planning patterns (in `prompts/planning_patterns/`) focus on task decomposition and strategy, whereas reasoning patterns focus on the "how" of thinking through a problem or query.

## 3. Key Files Overview

As of the last update, this directory contains the following key file:

*   **`998-02_pattern-fake-cot.md`**: Defines the Fake Chain-of-Thought (Fake CoT) reasoning pattern, a technique to guide the LLM to produce a step-by-step reasoning process even if it wasn't explicitly part of its initial generation.

*(This list should be kept current as reasoning patterns are added, modified, or renumbered.)*

## 4. Usage & Maintenance

*   Cline can reference these patterns when a task requires careful deliberation, complex problem-solving, or when the clarity of the reasoning process is important.
*   These patterns help improve the quality and reliability of Cline's decision-making.
*   The `prompt_inventory.yaml` file should include entries for these reasoning patterns to make them discoverable.
*   This `README.md` should be updated if the structure or key files within this directory change significantly.

---
Last Updated: 2025-05-11
