# Prompt Styles Directory Overview

## 1. Purpose Statement

This directory, `prompts/prompt_styles/`, contains a collection of Markdown files, each detailing a specific prompt engineering style or technique. These guides are intended to help users (and Cline itself) understand and effectively apply various methods of crafting prompts to elicit desired behaviors and outputs from Large Language Models (LLMs).

## 2. Scope & Content Guidelines

### Content That Belongs Here:
*   **Prompt Style Guides (Markdown `.md`):** Each file focuses on a distinct prompting technique.
    *   Content typically includes:
        *   A definition and explanation of the style.
        *   When to use it and its advantages/disadvantages.
        *   Examples of how to structure prompts using that style.
        *   Tips for effective implementation.
*   **Naming Convention:** Files generally follow a `999-NN_prompt-style-descriptive-name.md` pattern.

### Content That Does NOT Belong Here:
*   **Specific Use Case Implementations:** While a prompt style guide might show an example related to a use case, the full prompt for that use case belongs in `prompts/use_cases/`.
*   **Core Agent Logic Prompts:** These belong in `prompts/agent_prompts/`.
*   **General Workflow Definitions:** These belong in `prompts/workflows/` or `prompts/core_workflows/`.

## 3. Key Files Overview

As of the last update, this directory contains guides for a wide array of prompting styles, including but not limited to:

*   **`999-00_prompt-styles-guide.md`**: An overview or master guide to the various prompt styles.
*   **`999-01_prompt-style-zero-shot.md`**: Guidelines for Zero-Shot Prompting.
*   **`999-02_prompt-style-few-shot.md`**: Guidelines for Few-Shot Prompting (In-Context Learning).
*   **`999-03_prompt-style-cot.md`**: Guidelines for Chain-of-Thought (CoT) Prompting.
*   **`999-04_prompt-style-fake-cot.md`**: Guidelines for Fake CoT Prompting.
*   **`999-05_prompt-style-role.md`**: Guidelines for Role Prompting (Persona Prompting).
*   **`999-06_prompt-style-structured-output.md`**: Guidelines for Structured Output Prompting.
*   **`999-07_prompt-style-self-consistency.md`**: Guidelines for Self-Consistency Prompting.
*   **`999-08_prompt-style-tot.md`**: Guidelines for Tree-of-Thought (ToT) Prompting.
*   **`999-09_prompt-style-meta-prompting.md`**: Guidelines for Meta-Prompting.
*   **`999-10_prompt-style-self-prompting.md`**: Guidelines for Self-Prompting.
*   **`999-11_prompt-style-limit-crossing.md`**: Guidelines for Limit Crossing (LC) Prompting.
*   **`999-12_prompt-style-task-decomposition.md`**: Guidelines for Task Decomposition Prompting.
*   **`999-13_prompt-style-constrained-prompting.md`**: Guidelines for Constrained Prompting.
*   **`999-14_prompt-style-iterative-refinement.md`**: Guidelines for Iterative Refinement Prompting.
*   **`999-15_prompt-style-contextual-prompting.md`**: Guidelines for Contextual Prompting.
*   **`999-16_prompt-style-self-correction.md`**: Guidelines for Self-Correction/Reflection Prompting.
*   **`999-17_prompt-style-prompt-chaining.md`**: Guidelines for Prompt Chaining/Decomposition.
*   **`999-18_prompt-style-ontology-driven.md`**: Guidelines for Ontology-Driven Prompting.

*(This list should be kept current as prompt style guides are added, modified, or renumbered.)*

## 4. Usage & Maintenance

*   These guides serve as a reference for constructing effective prompts for various situations.
*   Cline may reference these guides to select or adapt prompting techniques for specific tasks.
*   The `prompt_inventory.yaml` file should include entries for these style guides to make them discoverable.
*   This `README.md` should be updated if the structure or key files within this directory change significantly.

---
Last Updated: 2025-05-11
