# Dynamic Prompt System Overview

This document YOU MUST use to understand the structure and dynamic loading mechanism of the `prompts/` directory. The `prompts/` directory IS the central repository for all prompt templates, patterns, workflows, and guides that YOU (Cline) use.

## `prompts/` Directory Structure

YOU MUST understand that the `prompts/` directory IS organized hierarchically to categorize different types of prompt resources:

-   **`agent_prompts/`**: Contains core prompts related to the agent's fundamental reasoning and operational loops.
-   **`core_workflows/`**: Defines essential, high-level workflows that are central to Cline's operation (e.g., intake processing).
-   **`merged_patterns/`**: Stores composite prompt patterns that combine multiple strategies or address broad task categories (e.g., summarize, analyze, create).
-   **`output_patterns/`**: Defines specific structures and guidelines for generating complex outputs (e.g., structured research reports).
-   **`planning_patterns/`**: Contains patterns related to task planning and decomposition (e.g., working backwards).
-   **`project_types/`**: Holds detailed guidance and templates specific to different kinds of software projects (e.g., web server, data science).
-   **`prompt_inventory/`**: Contains supporting files for the prompt inventory system itself, like response style guides.
-   **`prompt_styles/`**: Provides guidelines and examples for various prompt engineering techniques (e.g., zero-shot, few-shot, Chain-of-Thought).
-   **`protocols/`**: Defines formal protocols for complex, multi-step operations or interactions (e.g., MCP development).
-   **`reasoning_patterns/`**: Focuses on patterns that guide the AI's reasoning process (e.g., Fake CoT).
-   **`reference_documents/`**: Stores key reference materials that provide foundational knowledge or context for Cline.
-   **`shared_templates/`**: Contains reusable templates for common document types (e.g., API documentation sections, email formats).
-   **`tech_specific_guides/`**: Offers detailed guidance for working with specific technologies or frameworks (e.g., Slidev).
-   **`use_cases/`**: A comprehensive library of detailed prompts for specific content creation and management tasks, organized by sub-category.
-   **`workflows/`**: Defines specific, often multi-step, workflows for common user requests or operational procedures.

## `prompts/prompt_inventory.yaml`

YOU MUST understand that this crucial YAML file acts as the master index for all dynamically loadable prompts within the `prompts/` directory. Each entry in this file describes a prompt resource and includes:

-   `name`: A human-readable name for the prompt.
-   `path`: The file path to the prompt's Markdown file within the `prompts/` directory.
-   `type`: The category of the prompt (e.g., `core_workflow`, `use_case_guide`, `prompt_style_guide`). This helps in contextual loading.
-   `description`: A brief explanation of what the prompt does or contains.
-   `triggers`: A list of keywords or phrases that, if present in a user query or task context, would suggest this prompt might be relevant.
-   `weight`: A numerical value indicating the general importance or relevance of the prompt. Higher weights might be prioritized during selection.

## Dynamic Prompt Loading Mechanism

YOU MUST understand that the system utilizes the `prompts/prompt_inventory.yaml` file to dynamically select and load relevant prompts based on the current task or user query. The process generally involves these steps, which YOU MUST follow:

1.  **Query Analysis:** YOU MUST analyze the user's input and the current task context to extract key terms, intents, and relevant entities.
2.  **Inventory Matching:** YOU MUST match these extracted elements against the `name`, `description`, and `triggers` fields of each entry in `prompts/prompt_inventory.yaml`.
3.  **Relevance Scoring & Prioritization:** YOU MUST score matches based on relevance (e.g., number of trigger words matched, semantic similarity) and the predefined `weight` of the prompt. The `type` field CAN also be used for context-specific filtering (e.g., if the task involves "Slidev," `tech_specific_guide` prompts related to Slidev SHOULD be prioritized).
4.  **Prompt Loading:** YOU MUST load the Markdown content from the `path` of the highest-scoring, relevant prompt(s) into your active context.
5.  **Caching:** Be aware that frequently accessed or high-utility prompts MAY be cached by the system for faster retrieval.

This dynamic system allows YOU to adapt your knowledge and approach by loading the most appropriate guidance for the task at hand, making your responses more targeted and effective. It also provides a scalable way for the user to manage and expand your capabilities by adding new prompt files and updating the inventory.

## Treating Prompts as Tools/Knowledge Resources

YOU MUST consider the `prompts/` directory, as indexed by `prompts/prompt_inventory.yaml`, not just as passive documentation, but as an active set of specialized tools and knowledge resources.
-   **Active Selection:** When faced with a task, YOU MUST consult `prompts/prompt_inventory.yaml` (via its `name`, `description`, and `triggers`) to determine if a pre-defined prompt, workflow, or guide exists that is well-suited to assist with the user's request.
-   **Contextual Application:** If a relevant prompt resource is identified, YOU MUST load its content and integrate its guidance into your reasoning and execution plan for the task. This is akin to selecting the right tool for a job.
-   **Example:** If the user asks to "build a website," YOU SHOULD search the inventory for prompts related to "website creation," "frontend development," or specific frameworks. If a detailed prompt like "prompts/use_cases/frontend-development/create-basic-html-website.md" exists, YOU MUST load and follow its structured guidance rather than attempting to generate a solution from scratch based solely on general knowledge.
-   **Benefit:** This approach ensures that YOU leverage curated best practices and structured methodologies defined in the `prompts/` directory, leading to more consistent, high-quality outcomes and efficient use of your capabilities. It helps in avoiding generic responses when specialized guidance is available.
