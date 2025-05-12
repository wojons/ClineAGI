# Use Case Definition: Style and Tone Adjustment

**Objective:** To revise existing text content to match a specified style (e.g., formal, informal, academic, journalistic) or tone (e.g., humorous, serious, empathetic, persuasive, neutral), while preserving the core meaning and information.

## 1. Core Requirements & Quality Indicators

*   **Accurate Style/Tone Emulation:**
    *   The revised text successfully adopts the target style and tone.
    *   Changes in vocabulary, sentence structure, and phrasing reflect the desired style/tone.
*   **Preservation of Core Meaning:**
    *   The fundamental information and intent of the original text are maintained.
    *   Adjustments are stylistic, not substantive alterations of facts or core arguments.
*   **Consistency:**
    *   The target style and tone are applied consistently throughout the revised text.
*   **Naturalness:**
    *   The revised text reads naturally in the new style/tone and doesn't sound forced or artificial.
*   **Audience Appropriateness:**
    *   The adjusted style/tone is suitable for the intended audience and purpose of the content.
*   **Grammatical Correctness:**
    *   The revised text remains grammatically correct and well-written.

## 2. Key Stages & Processes Involved

1.  **Analyze Original Text:**
    *   Understand the content, meaning, and current style/tone of the input text.
2.  **Understand Target Style/Tone:**
    *   Clearly define the desired output style (e.g., "more formal," "like a blog post," "technical report") and/or tone (e.g., "more optimistic," "less assertive," "more urgent").
    *   Identify characteristics of the target style/tone (e.g., vocabulary choices, sentence length, use of contractions, level of formality, emotional language).
3.  **Identify Areas for Adjustment:**
    *   Pinpoint specific words, phrases, sentences, or structural elements in the original text that need modification to achieve the target style/tone.
4.  **Implement Revisions:**
    *   **Vocabulary Changes:** Replace words with synonyms that better fit the target style/tone (e.g., "utilize" instead of "use" for formal; "awesome" instead of "excellent" for informal).
    *   **Sentence Structure Modification:** Adjust sentence length and complexity (e.g., shorter, simpler sentences for informal; more complex, varied sentences for formal).
    *   **Phrasing Adjustments:** Rephrase sentences to convey the desired tone (e.g., softening direct statements for a more empathetic tone; using stronger verbs for a persuasive tone).
    *   **Contractions & Formality:** Add or remove contractions based on formality.
    *   **Figurative Language/Idioms:** Introduce or remove based on style.
    *   **Emotional Language:** Modulate the use of emotive words to match the target tone.
5.  **Review & Compare:**
    *   Compare the revised text with the original to ensure core meaning is preserved.
    *   Evaluate if the target style/tone has been successfully and consistently applied.
    *   Check for naturalness and readability.
    *   Proofread for any new errors introduced during revision.

## 3. Inputs Required from User/System

*   **Original Text Content:** The text that needs style/tone adjustment.
*   **Target Style:** (e.g., formal, informal, academic, conversational, technical, journalistic).
*   **Target Tone:** (e.g., persuasive, empathetic, humorous, neutral, urgent, optimistic, critical).
*   **Target Audience (Optional):** Helps refine the appropriateness of the style/tone.
*   **Purpose of the Content (Optional):** Why is this content being written/adjusted?
*   **Examples of Desired Style/Tone (Optional but very helpful):** If the user can provide samples.

## 4. Potential Challenges & Considerations

*   **Subjectivity:** Style and tone can be subjective; what one person considers "formal," another might see differently.
*   **Over-Adjustment:** Making changes so drastic that the text becomes unrecognizable or loses its original voice entirely (if some authorial voice needs to be preserved).
*   **Maintaining Nuance:** Ensuring subtle meanings in the original text are not lost during stylistic changes.
*   **Inconsistency:** Applying the new style/tone unevenly across the text.
*   **Forcing a Style:** If the original content is fundamentally unsuited to the target style (e.g., trying to make highly technical data sound extremely casual without losing precision).

## 5. Metrics for Success (How to Evaluate Output)

*   **Successful Style/Tone Shift:** Does the revised text clearly exhibit the target style and tone?
*   **Meaning Preservation:** Is the core message of the original text intact?
*   **Consistency of New Style/Tone:** Is it applied uniformly?
*   **Naturalness:** Does the revised text read well and sound authentic in the new style/tone?
*   **Improvement (if applicable):** If the goal was to improve an inappropriate style/tone, is the new version better suited to the context?
*   **Adherence to User Specifications:** Are all instructions regarding style and tone met?

## 6. Example Output Structure/Format
**Scenario:** User provides a formal sentence and wants to make it more informal and friendly.
*   **User Input:**
    *   Original Text: "It is imperative that all personnel adhere strictly to the established protocols to ensure optimal operational efficiency."
    *   Target Style: Informal, friendly.
    *   Target Tone: Encouraging.

*   **Cline Generated Adjusted Text:**
    "Hey team! Just a friendly reminder to please stick to our usual ways of doing things – it really helps everything run smoothly for everyone. Thanks!"

    *Alternative (slightly more direct but still informal):*
    "Let's all make sure we're following the team guidelines. It makes a big difference in keeping things efficient! Appreciate it."

---
**Frontmatter for `prompt_inventory.yaml`:**
name: "Style and Tone Adjustment"
path: "prompts/use_cases/content-creation-and-management/content-editing-and-refinement/style-tone-adjustment.md"
type: "use_case_guide"
description: "Revises text to match a specified style (e.g., formal, informal) or tone (e.g., humorous, persuasive) while preserving core meaning."
triggers: ["change text style", "adjust tone of writing", "make text more formal", "make content informal", "rewrite with different tone"]
weight: 100
