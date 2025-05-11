# Use Case Definition: Quiz, Test, & Exam Question Generation

**Objective:** To generate a variety of question types (e.g., multiple-choice, true/false, short answer, essay) to assess learner understanding and knowledge of specific topics or learning objectives.

## 1. Core Requirements & Quality Indicators

*   **Alignment with Learning Objectives/Content:**
    *   Questions directly assess the knowledge and skills covered in the specified learning material or objectives.
*   **Clarity & Unambiguity:**
    *   Questions are phrased clearly and are easy to understand, avoiding confusing language or double negatives.
    *   For multiple-choice, distractors are plausible but clearly incorrect.
*   **Variety of Question Types (if requested):**
    *   Can generate different formats to assess various levels of understanding (e.g., recall, application, analysis).
*   **Appropriate Difficulty Level:**
    *   Questions are pitched at a suitable difficulty for the target learners' level.
*   **Accuracy of Correct Answers (if provided by AI):**
    *   If the AI also generates answer keys, the correct answers must be accurate.
*   **Plausibility of Distractors (for multiple-choice):**
    *   Incorrect options should be believable enough to test true understanding, not be obviously wrong.
*   **Avoidance of Trivial or "Trick" Questions:**
    *   Questions should be fair and designed to assess genuine understanding, not to trick students.
*   **Coverage of Key Concepts:**
    *   The set of questions adequately covers the important concepts from the source material.
*   **Originality (Avoids direct copying from source if possible):**
    *   Questions test understanding rather than simple memorization of verbatim text from source materials.

## 2. Key Stages & Processes Involved

1.  **Identify Key Concepts & Learning Objectives to Assess:**
    *   Review the source material (textbook chapter, lecture notes, lesson plan) or learning objectives.
    *   Pinpoint the most important information, skills, or concepts that need to be tested.
2.  **Determine Question Types & Number of Questions:**
    *   Based on user requirements or assessment goals, decide on the types of questions (multiple-choice, true/false, short answer, essay, fill-in-the-blank) and how many of each.
3.  **Generate Questions for Each Concept/Objective:**
    *   **Multiple-Choice:**
        *   Write a clear stem (the question or incomplete statement).
        *   Develop one correct answer.
        *   Create plausible but incorrect distractors (typically 2-4).
    *   **True/False:**
        *   Formulate a clear declarative statement that is definitively true or false based on the source material.
    *   **Short Answer:**
        *   Pose a question that requires a brief written response (a few words to a few sentences).
        *   Consider what would constitute a correct answer.
    *   **Essay:**
        *   Develop a prompt that requires a longer, more analytical or evaluative written response.
        *   May require synthesis of multiple concepts.
    *   **Fill-in-the-Blank:**
        *   Create a sentence with a key term or concept omitted.
4.  **Develop Answer Key (if required):**
    *   Provide the correct answers for objective questions (multiple-choice, true/false, fill-in-the-blank).
    *   For short answer/essay, outline key points or criteria for a correct/strong response.
5.  **Review & Refine Questions:**
    *   Check for clarity, accuracy, and appropriateness of difficulty.
    *   Ensure questions align with learning objectives.
    *   Verify that multiple-choice distractors are plausible.
    *   Eliminate any ambiguity or potential for misinterpretation.
    *   Proofread.

## 3. Inputs Required from User/System

*   **Source Material/Topic Area:** (e.g., specific textbook chapter, lecture content, list of learning objectives).
*   **Target Learner Level:** (e.g., elementary, high school, undergraduate, professional).
*   **Desired Question Types:** (e.g., "10 multiple-choice and 2 essay questions").
*   **Number of Questions:**
*   **Specific Concepts or Skills to Focus On (Optional):**
*   **Desired Difficulty Level (Optional):** (e.g., "easy recall," "application-based," "challenging").
*   **Bloom's Taxonomy Level (Optional):** If questions should target specific cognitive skills (knowledge, comprehension, application, analysis, synthesis, evaluation).
*   **Format for Output (Optional):** (e.g., numbered list, specific format for import into a learning management system).

## 4. Potential Challenges & Considerations

*   **Writing Good Distractors (Multiple-Choice):** Creating incorrect options that are plausible but not confusing or arguably correct.
*   **Assessing Higher-Order Thinking:** Moving beyond simple recall to create questions that test analysis, synthesis, and evaluation.
*   **Avoiding Bias:** Ensuring questions are fair and don't inadvertently favor certain groups of students.
*   **Clarity of Phrasing:** Ambiguous questions lead to unreliable assessment.
*   **Source Material Dependency:** Quality of questions often depends on the clarity and comprehensiveness of the provided source material.
*   **Preventing "Testwiseness":** Designing questions where students can't guess the answer based on cues in the question itself.

## 5. Metrics for Success (How to Evaluate Output)

*   **Alignment with Objectives/Content:** Do the questions accurately test the specified material?
*   **Clarity & Unambiguity:** Are the questions easy to understand?
*   **Appropriateness of Difficulty:** Is the challenge level suitable for the target learners?
*   **Quality of Distractors (for MCQs):** Are they plausible yet incorrect?
*   **Variety (if requested):** Is there a good mix of question types?
*   **Accuracy of Answer Key (if provided):**
*   **Potential for Fair Assessment:** Do the questions seem like a fair way to evaluate understanding?
*   **Coverage:** Do the questions adequately sample the key concepts from the source material?
