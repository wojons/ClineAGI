# Use Case Definition: SWOT Analysis Generation

**Objective:** To generate a structured SWOT analysis (Strengths, Weaknesses, Opportunities, Threats) for a given company, product, project, or situation, to aid in strategic planning and decision-making.

## 1. Core Requirements & Quality Indicators

*   **Comprehensive Coverage of Four Quadrants:**
    *   Identifies relevant factors for each of the four categories:
        *   **Strengths (Internal, Positive):** Internal capabilities, resources, or advantages.
        *   **Weaknesses (Internal, Negative):** Internal limitations, disadvantages, or areas for improvement.
        *   **Opportunities (External, Positive):** External factors or trends that could be leveraged for benefit.
        *   **Threats (External, Negative):** External factors or trends that could pose a risk or challenge.
*   **Relevance to Subject:**
    *   All points are directly relevant to the company, product, or situation being analyzed.
*   **Clarity & Conciseness:**
    *   Each point is stated clearly and succinctly.
*   **Distinct Points:**
    *   Avoids significant overlap between points within or across categories.
*   **Plausibility & Insightfulness:**
    *   Points are logical and offer some level of insight, not just generic statements.
    *   Considers both internal and external factors appropriately.
*   **Structured Format:**
    *   Clearly presents the analysis in four distinct sections/quadrants.

## 2. Key Stages & Processes Involved

1.  **Understand the Subject of Analysis:**
    *   Clarify what company, product, project, or situation is being analyzed.
    *   Gather basic background information if provided by the user.
2.  **Brainstorm Strengths (Internal, Positive):**
    *   What are the inherent advantages? What does it do well? What unique resources or capabilities does it possess?
3.  **Brainstorm Weaknesses (Internal, Negative):**
    *   What are the internal limitations or disadvantages? What could be improved? What resources are lacking?
4.  **Brainstorm Opportunities (External, Positive):**
    *   What external trends, market conditions, or untapped possibilities could be beneficial?
    *   Are there new technologies, markets, or partnerships to explore?
5.  **Brainstorm Threats (External, Negative):**
    *   What external factors pose a risk? (e.g., competitors, changing regulations, economic downturns, technological disruption).
6.  **Filter, Refine, and Categorize Points:**
    *   Ensure each point fits correctly into one of the four SWOT categories.
    *   Refine phrasing for clarity and conciseness.
    *   Remove redundant or very weak points.
7.  **Structure the SWOT Analysis:**
    *   Present the findings in four clearly labeled sections: Strengths, Weaknesses, Opportunities, Threats.
    *   Use bullet points for individual items within each section.
8.  **Add Brief Elaboration (Optional):**
    *   A short explanation can be added to each point for further clarification if needed.

## 3. Inputs Required from User/System

*   **Subject of the SWOT Analysis:** (e.g., "Tesla," "our new mobile app project," "the decision to expand into a new market").
*   **Context or Background Information about the Subject (Highly Recommended):** (e.g., company mission, product features, project goals, market conditions). The more context, the more relevant the SWOT.
*   **Specific Areas of Focus (Optional):** (e.g., "focus on marketing aspects," "consider financial strengths and weaknesses").
*   **Known Strengths, Weaknesses, Opportunities, or Threats (Optional):** User can provide initial thoughts.

## 4. Potential Challenges & Considerations

*   **Generic vs. Specific Analysis:** Without sufficient context, a SWOT analysis can become very generic.
*   **Internal vs. External Distinction:** Correctly categorizing factors as internal (Strengths, Weaknesses) or external (Opportunities, Threats).
*   **Objectivity:** Trying to maintain a balanced view, especially if analyzing one's own project or company.
*   **Actionability:** A SWOT analysis is a diagnostic tool; the next step (not part of this use case) is to develop strategies based on it (e.g., SO, WO, ST, WT strategies).
*   **Dynamic Nature:** SWOT factors can change over time.

## 5. Metrics for Success (How to Evaluate Output)

*   **Relevance:** Are all points pertinent to the subject of analysis?
*   **Correct Categorization:** Are items placed in the correct SWOT quadrant?
*   **Comprehensiveness:** Does it cover a good range of significant internal and external factors?
*   **Clarity & Conciseness:** Is each point easy to understand?
*   **Insightfulness:** Does the analysis offer some valuable perspectives or highlight important considerations?
*   **Usefulness for Strategic Planning:** Does it provide a solid foundation for further strategic discussion and decision-making?
*   **Clear Structure:** Is the SWOT analysis presented in an organized and readable format?

## 6. Example Output Structure/Format
**Scenario:** User wants a SWOT analysis for a small independent coffee shop.
*   **User Input:**
    *   Subject: "The Cozy Corner Cafe" - a small, independent coffee shop.
    *   Context: Located in a neighborhood with some foot traffic, known for good coffee and friendly service. Faces competition from a large chain nearby.
    *   Focus: General business strategy.

*   **Cline Generated SWOT Analysis:**

    **SWOT Analysis: The Cozy Corner Cafe**

    **Strengths (Internal, Positive):**
    *   High-quality coffee and unique blends.
    *   Friendly, personalized customer service.
    *   Cozy and inviting atmosphere.
    *   Loyal local customer base.
    *   Flexibility to adapt menu and offerings quickly.

    **Weaknesses (Internal, Negative):**
    *   Limited marketing budget compared to chains.
    *   Smaller purchasing power for supplies.
    *   Dependence on owner/key staff for unique ambiance.
    *   Limited seating capacity.
    *   Potentially less brand recognition than larger competitors.

    **Opportunities (External, Positive):**
    *   Growing demand for specialty coffee and artisanal products.
    *   Partner with local bakeries or artists to offer unique products.
    *   Host community events (e.g., open mic nights, book clubs) to increase foot traffic.
    *   Leverage social media for targeted local marketing.
    *   Offer loyalty programs to retain customers.
    *   Expand into online orders/delivery for local area.

    **Threats (External, Negative):**
    *   Intense competition from nearby chain coffee shops.
    *   Rising costs of coffee beans and other supplies.
    *   Changes in local economic conditions affecting discretionary spending.
    *   Shifting consumer preferences (e.g., new drink trends).
    *   Difficulty in attracting and retaining skilled baristas.

---
**Frontmatter for `prompt_inventory.yaml`:**
name: "SWOT Analysis Generation"
path: "prompts/use_cases/content-creation-and-management/brainstorming-idea-generation/swot-analysis-generation.md"
type: "use_case_guide"
description: "Generates a structured SWOT analysis (Strengths, Weaknesses, Opportunities, Threats) for a given subject."
triggers: ["swot analysis", "generate swot", "strengths weaknesses opportunities threats", "strategic planning tool"]
weight: 100
