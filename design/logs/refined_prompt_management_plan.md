# Refined Prompt Management Plan for ClineAGI

## 1. Introduction and Problem Statement (Addressing GitHub Issue #7)

**GitHub Issue #7:** "Optimize prompt management and loading for token efficiency."
The core goal is to reduce token usage by dynamically loading only necessary prompts based on task context, rather than loading large, monolithic prompt sets.

**Current Situation Analysis:**
- `prompts/prompt_inventory.md`: Defines broad categories of prompts (core, use_cases, templates) with high-level dynamic loading rules (load top 3 categories by weight, min relevance, cache).
- `.clinerules/999_00_prompt_inventory.md` & `999_01_use_case_inventory.md`: Describe a more granular inventory of specific prompt *styles* (e.g., Chain-of-Thought, Role Prompting) and detailed *use cases*, each intended to be in its own Markdown file within `prompts/` subdirectories.

**Identified Gap:**
The current `prompts/prompt_inventory.md` and its loading logic operate at a category level. It does not appear to support the dynamic loading of individual, specific prompt style files or detailed use case files as envisioned for optimal token efficiency. To achieve the goal of Issue #7, the system needs to be ables to select and load, for example, *just* the `prompts/prompt_styles/999-03_prompt-style-cot.md` file when Chain-of-Thought reasoning is required, rather than a larger bundle of "core" prompts.

Additionally, user feedback indicates that existing individual prompt files may require review for clarity and effectiveness in guiding LLMs.

## 2. Proposed Solution

To address Issue #7 and enhance the overall prompt management system, the following steps are proposed:

### 2.1. Enhance the Prompt Inventory (`prompts/prompt_inventory.md`)
The existing `prompts/prompt_inventory.md` will be restructured or augmented to serve as a detailed manifest for *individual* prompt files.

**Proposed Structure for each entry:**
```yaml
- name: "Chain-of-Thought Prompting" # Descriptive name of the prompt/style
  path: "prompts/prompt_styles/999-03_prompt-style-cot.md" # Relative path to the .md file
  type: "prompt_style" # or "use_case", "core_directive", "agent_persona"
  description: "Guides the LLM to generate step-by-step reasoning before providing an answer."
  triggers: ["reasoning", "planning", "complex query", "multi-step problem"] # Keywords or task types
  estimated_token_cost: 150 # Approximate token count of the prompt file
  weight: 7 # For prioritization if multiple prompts match
  dependencies: [] # Optional: other prompts that should be loaded with this one
  version: "1.0"
  author: "Cline (AI)"
```

This detailed manifest will replace or supersede the current category-based structure for dynamic loading decisions, allowing for much more granular selection.

### 2.2. Refine Dynamic Prompt Loading Mechanism
The core logic responsible for loading prompts into the context window needs to be updated:
1.  **Input Analysis:** Analyze the current user request, task context, and agent's internal state/goal.
2.  **Trigger Matching:** Match keywords from the analysis against the `triggers` in the enhanced `prompts/prompt_inventory.md`.
3.  **Prompt Selection:** Select the most relevant individual prompt(s) based on trigger matches, weight, and potentially other heuristics (e.g., minimizing `estimated_token_cost` while maximizing relevance).
4.  **Context Assembly:** Load the content of the selected prompt file(s) into the context window for the LLM.
5.  **Caching:** Maintain caching for frequently used individual prompts.

### 2.3. Review and Clarify Existing Prompt Files
A systematic review of all prompt files listed in `.clinerules/999_00_prompt_inventory.md` and `.clinerules/999_01_use_case_inventory.md` (and any others found in the `prompts/` directory) will be undertaken.
*   **Objective:** Ensure each prompt is clear, unambiguous, and provides effective guidance to LLMs.
*   **Process:**
    *   For each prompt, assess its current structure and instructions.
    *   Rewrite or augment prompts to follow best practices:
        *   Use explicit role definitions.
        *   Provide clear, step-by-step instructions.
        *   Include positive/negative examples where helpful.
        *   Specify desired output formats if applicable.
        *   Remove jargon or ambiguity.
    *   Update the `description` and `triggers` in the main inventory to accurately reflect the revised prompt's content and purpose.

### 2.4. Develop and Integrate New Prompting Styles
As discussed, new advanced prompting style templates will be created (e.g., for ReAct, Self-Critique, Causal Reasoning, Working Backwards).
*   These will be stored in a dedicated subdirectory, e.g., `prompts/agent_prompting_styles/`.
*   Each new style will be added as an entry to the enhanced `prompts/prompt_inventory.md`.
*   The agent (Prometheus-0) will be designed to leverage this library, selecting appropriate styles based on its current sub-task.

## 3. Expected Benefits
*   **Significant Token Reduction:** Loading only essential, targeted prompts will drastically reduce the context size for many interactions.
*   **Improved LLM Performance:** Clearer, more focused prompts are likely to lead to more accurate and relevant LLM responses.
*   **Enhanced Agent Adaptability:** A library of diverse prompting styles will allow the agent to use more sophisticated and context-appropriate "cognitive tools."
*   **Better Maintainability:** Individual prompt files are easier to update and manage than large, monolithic prompt collections.

## 4. Next Steps
1.  Implement the structural changes to `prompts/prompt_inventory.md`.
2.  Begin the systematic review and revision of existing prompt files.
3.  Develop the new prompting style templates.
4.  Adapt the core prompt loading mechanism to use the new granular inventory.
5.  Test the revised system thoroughly.
