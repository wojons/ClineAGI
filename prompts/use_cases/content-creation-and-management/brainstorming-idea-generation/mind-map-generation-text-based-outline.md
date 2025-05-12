# Use Case Definition: Mind Map Generation (Text-Based Outline)

**Objective:** To generate a hierarchical, text-based outline representing a mind map structure for a given central topic, exploring related concepts, sub-topics, and connections in a structured, indented list format.

## 1. Core Requirements & Quality Indicators

*   **Hierarchical Structure:**
    *   Clearly shows a central topic with main branches, sub-branches, and further details, typically represented by indentation levels.
*   **Logical Connections:**
    *   Related ideas are grouped together under appropriate parent nodes.
    *   The relationships between concepts are logical.
*   **Comprehensive Coverage (for the given scope):**
    *   Explores the central topic by branching out into relevant sub-themes and details.
*   **Clarity & Conciseness of Nodes:**
    *   Each item (node) in the mind map outline is a clear, concise phrase or keyword.
*   **Balanced Structure (Ideally):**
    *   The mind map doesn't become excessively deep in one branch while neglecting others, unless the topic naturally dictates it.
*   **Stimulates Further Thinking:**
    *   The generated outline serves as a good starting point for more detailed exploration or organization of thoughts.
*   **Readability of Outline:**
    *   Uses consistent indentation (e.g., tabs or spaces) to represent levels.

## 2. Key Stages & Processes Involved

1.  **Identify Central Topic:**
    *   Determine the main subject or concept around which the mind map will be built.
2.  **Brainstorm Main Branches (First-Level Ideas):**
    *   Generate 3-7 key sub-topics or categories directly related to the central topic. These form the first level of branches.
3.  **Develop Sub-Branches for Each Main Branch (Second-Level Ideas):**
    *   For each main branch, brainstorm further related ideas, details, or components.
4.  **Continue Branching to Deeper Levels (As appropriate):**
    *   For significant sub-branches, continue to break them down into more specific points.
    *   Avoid going too deep if it makes the outline unwieldy, unless detail is specifically requested.
5.  **Use Keywords & Concise Phrases:**
    *   Keep the text for each node brief and to the point.
6.  **Structure as a Text-Based Outline:**
    *   Represent the hierarchy using indentation:
        *   Central Topic (Level 0)
            *   Main Branch 1 (Level 1)
                *   Sub-Branch 1.1 (Level 2)
                    *   Detail 1.1.1 (Level 3)
                *   Sub-Branch 1.2
            *   Main Branch 2
                *   Sub-Branch 2.1
    *   Use bullet points (`*`, `-`) or numbering for list items at each level.
7.  **Review for Logic, Completeness, and Clarity:**
    *   Check that connections between ideas are logical.
    *   Ensure key aspects of the topic are covered.
    *   Verify that the outline is easy to read and understand.

## 3. Inputs Required from User/System

*   **Central Topic or Concept for the Mind Map:**
*   **Desired Level of Detail or Depth (Optional):** (e.g., "just main branches," "explore 3 levels deep").
*   **Specific Sub-Topics or Areas to Include/Exclude (Optional):**
*   **Purpose of the Mind Map (Optional):** (e.g., "for essay planning," "for project brainstorming," "to understand a complex system"). This helps tailor the type of branches generated.
*   **Preferred Outline Style (Optional):** (e.g., using tabs vs. spaces for indentation, specific bullet characters).

## 4. Potential Challenges & Considerations

*   **Balancing Breadth vs. Depth:** Deciding how many main branches to create versus how deeply to explore each one.
*   **Maintaining Focus:** Ensuring all branches and sub-branches remain relevant to the central topic.
*   **Information Overload:** Creating an outline that is too large or complex to be easily digestible.
*   **Subjectivity of Connections:** The "best" way to connect ideas can be subjective.
*   **Visual Representation (Beyond Scope):** This use case is for a text-based outline. Actual graphical mind map generation would require different tools/outputs (e.g., Mermaid, Markmap syntax).

## 5. Metrics for Success (How to Evaluate Output)

*   **Logical Hierarchy:** Is the outline well-structured with clear parent-child relationships?
*   **Relevance of Branches:** Do all nodes clearly relate to their parent and the central topic?
*   **Coverage of Topic:** Does the outline explore the key facets of the central topic adequately for the requested scope?
*   **Clarity of Node Labels:** Are the phrases used for each item clear and concise?
*   **Usefulness as an Organizational Tool:** Does the outline help in structuring thoughts or information about the topic?
*   **Readability of Text Format:** Is the indentation and list formatting clear and consistent?

## 6. Example Output Structure/Format
**Scenario:** User wants a text-based mind map outline for "Effective Time Management".
*   **User Input:**
    *   Central Topic: Effective Time Management
    *   Desired Depth: 2-3 levels

*   **Cline Generated Text-Based Mind Map Outline:**
    ```
    Effective Time Management
    *   I. Prioritization
        *   A. Identifying High-Impact Tasks
            *   1. Eisenhower Matrix (Urgent/Important)
            *   2. Pareto Principle (80/20 Rule)
        *   B. Goal Setting
            *   1. SMART Goals
            *   2. Breaking Down Large Goals
    *   II. Planning & Scheduling
        *   A. Time Blocking
        *   B. Using Calendars/Planners
        *   C. Daily/Weekly Reviews
    *   III. Minimizing Distractions
        *   A. Digital Distractions (Notifications, Social Media)
        *   B. Physical Environment
        *   C. Saying "No" to Non-Essential Commitments
    *   IV. Tools & Techniques
        *   A. To-Do Lists
        *   B. Pomodoro Technique
        *   C. Delegation
    *   V. Overcoming Procrastination
        *   A. Understanding Causes
        *   B. Starting Small (Two-Minute Rule)
        *   C. Setting Rewards
    ```

---
**Frontmatter for `prompt_inventory.yaml`:**
name: "Mind Map Generation (Text-Based Outline)"
path: "prompts/use_cases/content-creation-and-management/brainstorming-idea-generation/mind-map-generation-text-based-outline.md"
type: "use_case_guide"
description: "Generates a hierarchical, text-based outline representing a mind map for a given central topic."
triggers: ["mind map text", "text mind map", "idea outline", "hierarchical brainstorm", "topic exploration outline"]
weight: 100
