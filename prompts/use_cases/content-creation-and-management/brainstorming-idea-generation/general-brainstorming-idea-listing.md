# Use Case Definition: General Brainstorming & Idea Listing

**Objective:** To generate a diverse list of ideas, concepts, or solutions related to a user-provided topic, problem, or theme, encouraging creative thinking and exploration of possibilities.

## 1. Core Requirements & Quality Indicators

*   **Quantity & Diversity of Ideas:**
    *   Generates a reasonable number of distinct ideas.
    *   Ideas cover a range of perspectives or approaches if applicable.
*   **Relevance to Prompt:**
    *   All generated ideas are clearly related to the user's topic or problem statement.
*   **Creativity & Originality (where appropriate):**
    *   Includes some novel or less obvious ideas, not just common suggestions.
*   **Clarity of Ideas:**
    *   Each idea is expressed clearly and concisely.
*   **Actionability (Context-Dependent):**
    *   Some ideas might be high-level concepts, while others could be more concrete or actionable, depending on the prompt.
*   **Categorization (Optional but helpful):**
    *   May group similar ideas into categories for better organization.
*   **No Judgment (Initially):**
    *   The primary goal is to generate many ideas; filtering or evaluation can come later.

## 2. Key Stages & Processes Involved

1.  **Understand the Brainstorming Topic/Problem:**
    *   Clarify the central theme, question, or challenge provided by the user.
2.  **Set Scope/Constraints (if any):**
    *   Are there any specific constraints, desired number of ideas, or areas to focus on/avoid?
3.  **Generate Ideas Using Various Techniques (Conceptual for AI):**
    *   **Free Association:** Generate related words and concepts.
    *   **"What If" Scenarios:** Explore hypothetical situations.
    *   **Different Perspectives:** Consider the topic from various viewpoints (e.g., user, competitor, different roles).
    *   **Analogies & Metaphors:** Draw comparisons to unrelated domains.
    *   **SCAMPER (Substitute, Combine, Adapt, Modify, Put to another use, Eliminate, Reverse):** Apply these actions to existing ideas or the problem itself.
    *   **Random Word Association:** Connect the topic to random words to spark new connections.
4.  **List Generated Ideas:**
    *   Present the ideas, typically as a bulleted or numbered list.
5.  **Briefly Elaborate on Each Idea (Optional):**
    *   Provide a short explanation or expansion for each generated idea to clarify it.
6.  **Categorize Ideas (Optional):**
    *   If many ideas are generated, group them into logical categories or themes.
7.  **Encourage Further Exploration:**
    *   May conclude by prompting the user to select promising ideas for further development or to add their own.

## 3. Inputs Required from User/System

*   **Brainstorming Topic, Problem, or Theme:** (e.g., "ideas for a new mobile app," "ways to improve customer engagement," "themes for a fantasy novel").
*   **Context or Background Information (Optional):**
*   **Desired Number of Ideas or Level of Detail (Optional):**
*   **Any Specific Constraints or Areas to Focus On/Avoid (Optional):**
*   **Examples of Types of Ideas Sought (Optional):**

## 4. Potential Challenges & Considerations

*   **Vague Prompts:** Overly broad topics can lead to very generic ideas.
*   **Idea Quality vs. Quantity:** Balancing the generation of many ideas with the generation of useful or innovative ones.
*   **Repetitiveness:** Avoiding generating very similar ideas multiple times.
*   **Feasibility:** Some brainstormed ideas may be impractical or unrealistic (which is acceptable in early brainstorming stages).
*   **Filtering & Evaluation (Separate Step):** Brainstorming is about generation; evaluation is a subsequent process.

## 5. Metrics for Success (How to Evaluate Output)

*   **Quantity of Relevant Ideas:** Was a good number of on-topic ideas generated?
*   **Diversity of Ideas:** Do the ideas explore different angles or approaches?
*   **Clarity:** Are the ideas presented in an understandable way?
*   **Creativity/Originality:** Are there some novel or thought-provoking suggestions?
*   **Stimulation of Further Thought:** Does the list inspire the user to think of more ideas or refine existing ones?
*   **Organization (if categorized):** Is the categorization logical and helpful?
*   **Adherence to Constraints:** If the user provided specific focus areas or limitations, were they respected?

## 6. Example Output Structure/Format
**Scenario:** User wants ideas for a new sustainable product.
*   **User Input:**
    *   Topic: Ideas for a new sustainable product.
    *   Focus: Household items.
    *   Constraint: Must use recycled materials.

*   **Cline Generated Idea List (Excerpt):**
    *   **Product Idea:** Reusable food wraps made from recycled cotton and beeswax.
        *   *Elaboration:* Alternative to plastic cling film, washable and biodegradable.
    *   **Product Idea:** Modular shelving units made from reclaimed wood.
        *   *Elaboration:* Customizable, reduces timber harvesting, promotes circular economy.
    *   **Product Idea:** Plantable greeting cards embedded with wildflower seeds, made from recycled paper.
        *   *Elaboration:* Card can be planted after use, zero waste, promotes biodiversity.
    *   **Product Idea:** Compostable phone cases made from bioplastics derived from cornstarch or agricultural waste.
        *   *Elaboration:* Reduces plastic pollution from tech accessories.

---
**Frontmatter for `prompt_inventory.yaml`:**
name: "General Brainstorming & Idea Listing"
path: "prompts/use_cases/content-creation-and-management/brainstorming-idea-generation/general-brainstorming-idea-listing.md"
type: "use_case_guide"
description: "Generates a diverse list of ideas, concepts, or solutions related to a user-provided topic, problem, or theme."
triggers: ["brainstorm ideas", "idea generation", "list concepts", "problem solving ideas", "creative thinking", "brainstorming session"]
weight: 100
