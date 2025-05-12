# Use Case Definition: Content Summarization

**Objective:** To condense a longer piece of text content into a shorter version that captures the main points, key information, and core message, tailored to a specified length or level of detail.

## 1. Core Requirements & Quality Indicators

*   **Accuracy & Faithfulness:**
    *   The summary accurately reflects the main ideas and essential information of the original text.
    *   Does not misrepresent or distort the source material.
*   **Comprehensiveness (within limits):**
    *   Includes all critical information and key takeaways from the original.
    *   The level of detail matches the user's requirement (e.g., abstract, executive summary, brief overview).
*   **Conciseness & Brevity:**
    *   Significantly shorter than the original text.
    *   Eliminates redundant information, minor details, and fluff while retaining core substance.
*   **Clarity & Readability:**
    *   The summary is well-written, clear, and easy to understand on its own.
    *   Uses coherent language and logical flow.
*   **Objectivity (Usually):**
    *   Typically, summaries should be objective and reflect the content of the source, not inject new opinions or interpretations, unless an "analytical summary" is specifically requested.
*   **Independence:**
    *   A good summary can often be understood without having read the original document.
*   **Adherence to Length Constraints:**
    *   Meets any specified length requirements (e.g., word count, number of sentences, percentage of original).

## 2. Key Stages & Processes Involved

1.  **Full Comprehension of Source Text:**
    *   Thoroughly read and understand the original document to identify its purpose, main arguments, supporting points, and conclusion.
2.  **Identify Key Information & Main Ideas:**
    *   Pinpoint the most important concepts, arguments, findings, and conclusions in the source text.
    *   Distinguish between essential information and supporting details or examples.
3.  **Determine Scope & Length of Summary:**
    *   Clarify the desired length and level of detail for the summary based on user requirements.
4.  **Draft the Summary:**
    *   Begin by stating the main topic or thesis of the original text.
    *   Present the key points and supporting information in a logical order.
    *   Use your own words as much as possible, avoiding direct copying of long passages (unless quoting for a specific reason).
    *   Focus on conveying the essence of the original content.
5.  **Refine & Edit for Conciseness:**
    *   Eliminate redundant words, phrases, and sentences.
    *   Combine related ideas where possible.
    *   Ensure every sentence contributes to the summary's purpose.
6.  **Check for Accuracy & Completeness:**
    *   Compare the summary against the original text to ensure it accurately reflects the source and hasn't omitted critical information.
7.  **Proofread:**
    *   Check for grammar, spelling, and punctuation errors.

## 3. Inputs Required from User/System

*   **Original Text Content:** The document, article, report, or passage to be summarized.
*   **Desired Length/Level of Detail:** (e.g., "a one-paragraph summary," "a 300-word abstract," "key bullet points," "a 5-sentence summary").
*   **Purpose of the Summary (Optional):** (e.g., "for a quick overview," "to include in a presentation," "to decide if I should read the full document").
*   **Specific Aspects to Focus On (Optional):** If the user wants the summary to highlight particular themes or sections.
*   **Format for the Summary (Optional):** (e.g., paragraph, bullet points).

## 4. Potential Challenges & Considerations

*   **Identifying True Main Points:** Distinguishing essential information from less critical details, especially in complex or poorly structured texts.
*   **Maintaining Nuance:** Summaries, by nature, lose some of the detail and nuance of the original.
*   **Avoiding Personal Interpretation/Bias:** Sticking to what the original text actually says.
*   **Balancing Conciseness with Informativeness:** Making it short enough but still useful.
*   **Handling Highly Technical or Specialized Content:** Requires understanding the jargon to summarize accurately.
*   **Source Text Quality:** Summarizing a poorly written or disorganized document is more challenging.

## 5. Metrics for Success (How to Evaluate Output)

*   **Accuracy:** Does the summary correctly represent the key information and arguments of the original text?
*   **Completeness:** Does it include all the essential points relevant to the requested level of detail?
*   **Conciseness:** Is it significantly shorter than the original while retaining core meaning? Does it meet length requirements?
*   **Clarity:** Is the summary easy to understand?
*   **Coherence:** Do the summarized points flow logically?
*   **Objectivity:** Does it avoid introducing outside opinions or misrepresenting the source?
*   **Usefulness:** Would someone reading the summary get a good understanding of the original content's essence?

## 6. Example Output Structure/Format
**Scenario:** User provides a short news article and requests a one-sentence summary and a three-bullet-point summary.
*   **User Input:**
    *   Original Text: "The City Council today approved a new initiative aimed at increasing green spaces within the urban core. The plan involves converting several underutilized parking lots into small public parks over the next two years. Funding for the project will come from a combination of municipal bonds and private donations. Councilmember Jane Doe, who championed the initiative, stated that this project will not only beautify the city but also improve air quality and provide residents with more recreational opportunities. The first phase is expected to begin this fall."
    *   Desired Lengths: One sentence; three bullet points.

*   **Cline Generated Summaries:**

    **One-Sentence Summary:**
    The City Council has approved a two-year initiative to convert underutilized parking lots into public parks, funded by municipal bonds and private donations, to beautify the city, improve air quality, and offer more recreational spaces, with the first phase starting this fall.

    **Three-Bullet-Point Summary:**
    *   The City Council approved a plan to create new public parks from underutilized parking lots over two years.
    *   The project, funded by municipal bonds and private donations, aims to enhance urban green spaces, improve air quality, and provide recreational areas.
    *   Championed by Councilmember Jane Doe, the first phase is set to begin in the fall.

---
**Frontmatter for `prompt_inventory.yaml`:**
name: "Content Summarization"
path: "prompts/use_cases/content-creation-and-management/content-editing-and-refinement/content-summarization.md"
type: "use_case_guide"
description: "Condenses longer text into a shorter version, capturing main points and key information, tailored to a specified length or detail level."
triggers: ["summarize text", "content summary", "abstract generation", "executive summary", "key takeaways from document"]
weight: 100
