# Use Case Definition: Fact-Checking Assistance

**Objective:** To assist a user in verifying the factual accuracy of claims made within a piece of text content by identifying verifiable statements, suggesting credible sources for verification, and (if capable and tooled) cross-referencing claims against known information.

## 1. Core Requirements & Quality Indicators

*   **Identification of Verifiable Claims:**
    *   Accurately identifies statements within the text that are presented as facts and are, in principle, verifiable.
    *   Distinguishes factual claims from opinions, subjective statements, or purely creative content.
*   **Suggestion of Credible Sources:**
    *   Proposes relevant and reputable sources (e.g., established news organizations, academic journals, official government/organizational websites, encyclopedias) where the identified claims can be checked.
*   **Accuracy of Verification (if AI performs it):**
    *   If the AI attempts to verify a claim using its knowledge base or tools, the verification (confirming or refuting) must be accurate and based on reliable information.
    *   Clearly states confidence levels if verification is uncertain.
*   **Neutrality & Objectivity:**
    *   Approaches fact-checking neutrally, without bias towards confirming or refuting claims.
*   **Clarity of Output:**
    *   Clearly presents the claims identified for checking.
    *   Clearly presents suggested sources or the results of any AI-led verification.
*   **Focus on Factual Assertions:**
    *   Primarily concerned with objective facts rather than interpretations or opinions, unless the task is specifically to check the source of an opinion.

## 2. Key Stages & Processes Involved

1.  **Text Analysis & Claim Identification:**
    *   Read the input text thoroughly.
    *   Identify specific statements that assert factual information (e.g., statistics, dates, events, scientific statements, attributions of quotes).
2.  **Source Identification Strategy:**
    *   For each identified claim, determine the types of sources that would be most appropriate for verification.
3.  **Suggesting Verification Sources/Methods:**
    *   Provide the user with a list of identified claims and suggest credible sources or search queries they can use to verify each claim.
4.  **(Optional/Advanced) AI-Assisted Verification (if tooled/capable):**
    *   Use available tools (e.g., web search, knowledge base query) to attempt to verify identified claims.
    *   Compare the claim with information found in reliable sources.
    *   Report findings: confirmed, refuted, partially true, or unable to verify (with reasons).
5.  **Reporting Results:**
    *   Present the list of claims.
    *   For each claim, provide either:
        *   Suggested sources/methods for user verification.
        *   The AI's verification findings, along with the sources used by the AI.

## 3. Inputs Required from User/System

*   **Text Content to be Fact-Checked:**
*   **Specific Claims to Verify (Optional):** If the user wants to focus on particular statements.
*   **Context of the Content (Optional):** Knowing the source or purpose of the text can sometimes help in identifying appropriate verification sources.
*   **Known Reliable Sources (Optional):** If the user has preferred sources to check against.

## 4. Potential Challenges & Considerations

*   **Defining a "Fact":** Distinguishing between objective facts, widely accepted theories, opinions, and interpretations can be complex.
*   **Nuance and Context:** Factual claims can be true in one context but misleading in another.
*   **Outdated Information:** Facts can change over time (e.g., "the tallest building in the world").
*   **Misinformation & Disinformation:** Identifying and verifying claims in an environment with deliberate falsehoods.
*   **Source Reliability:** Assessing the credibility of various sources is crucial and can be challenging.
*   **AI Knowledge Cutoff:** AI's internal knowledge is not always up-to-date, making external verification tools essential for current events or recent data.
*   **Confirmation Bias:** Guarding against the tendency to seek out information that confirms pre-existing beliefs.
*   **Complexity of Claims:** Some claims require deep subject matter expertise to verify.

## 5. Metrics for Success (How to Evaluate Output)

*   **Accuracy of Claim Identification:** Are the identified statements genuinely verifiable factual claims?
*   **Quality of Source Suggestions:** Are the recommended sources credible and relevant for verifying the claims?
*   **Accuracy of AI Verification (if performed):** If the AI attempts verification, are its conclusions correct and well-supported?
*   **Clarity & Actionability:** Is the output clear, and does it provide a good basis for the user to proceed with fact-checking?
*   **Neutrality:** Is the process and reporting unbiased?
*   **Coverage:** For a given text, does it identify a reasonable set of important claims to check (without being overly pedantic about every minor detail)?

## 6. Example Output Structure/Format
**Scenario:** User provides a short paragraph with a few factual claims.
*   **User Input:**
    *   Text: "The Eiffel Tower, located in Paris, was completed in 1889 and is taller than the Chrysler Building. It receives over 10 million visitors annually. The primary material used in its construction was steel."

*   **Cline Generated Fact-Checking Assistance Output:**

    **Identified Claims for Verification:**

    1.  **Claim:** The Eiffel Tower was completed in 1889.
        *   **Suggested Verification:** Search "Eiffel Tower completion date" on a reputable encyclopedia (e.g., Britannica, Wikipedia) or historical website.
        *   **(AI Verification Attempt - if enabled):** Confirmed. Multiple sources state completion in March 1889.

    2.  **Claim:** The Eiffel Tower is taller than the Chrysler Building.
        *   **Suggested Verification:** Search "Eiffel Tower height vs Chrysler Building height" using a search engine, looking for official structure heights.
        *   **(AI Verification Attempt - if enabled):** Confirmed. Eiffel Tower (current tip height ~330m) is taller than Chrysler Building (~319m).

    3.  **Claim:** The Eiffel Tower receives over 10 million visitors annually.
        *   **Suggested Verification:** Check the official Eiffel Tower website or recent tourism reports for Paris for visitor statistics. Note that visitor numbers can fluctuate yearly.
        *   **(AI Verification Attempt - if enabled):** Partially Confirmed/Context Needed. Pre-pandemic figures were around 6-7 million. "Over 10 million" might be an overstatement or refer to a specific peak period. Recent numbers should be checked.

    4.  **Claim:** The primary material used in its construction was steel.
        *   **Suggested Verification:** Search "Eiffel Tower construction material" on architectural or historical websites.
        *   **(AI Verification Attempt - if enabled):** Correction. The primary material was wrought iron, not steel.

---
**Frontmatter for `prompt_inventory.yaml`:**
name: "Fact-Checking Assistance"
path: "prompts/use_cases/content-creation-and-management/content-editing-and-refinement/fact-checking-assistance.md"
type: "use_case_guide"
description: "Assists in verifying factual accuracy of claims in text by identifying claims and suggesting credible sources or attempting verification."
triggers: ["fact check text", "verify claims", "check accuracy of statements", "validate information in document"]
weight: 100
