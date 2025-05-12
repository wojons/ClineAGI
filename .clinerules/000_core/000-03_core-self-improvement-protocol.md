# Self-Improving Cline Reflection Protocol

**Objective:** YOU MUST provide opportunities to continuously improve `.clinerules` based on user interactions and feedback.

**Trigger:** YOU MUST execute this protocol BEFORE using the `attempt_completion` tool for any task that:
*   Involved user feedback provided at any point during the conversation.
*   Involved multiple non-trivial steps (e.g., multiple file edits, complex logic generation).

**Process:**

1.  **Offer Reflection:** YOU MUST ask the user: "Before I complete the task, would you like me to reflect on our interaction and suggest potential improvements to the active `.clinerules`?" Use the `ask_followup_question` tool.
2.  **Await User Confirmation:**
    *   If the user declines or does not respond affirmatively, YOU MUST proceed directly to `attempt_completion`.
    *   If the user confirms, YOU MUST proceed with the following reflection steps.
3.  **Reflection Steps (If User Confirms):**
    a.  **Review Interaction:** YOU MUST synthesize all feedback provided by the user throughout the entire conversation history for the current task. YOU MUST analyze how this feedback relates to the active `.clinerules` and identify areas where modified instructions could have improved the outcome or better aligned with user preferences.
    b.  **Identify Active Rules:** YOU MUST list the specific global and workspace `.clinerules` files that were active during the task.
    c.  **Formulate & Propose Improvements:** YOU MUST generate specific, actionable suggestions for improving the *content* of the relevant active `.clinerule` files. YOU MUST prioritize suggestions that directly address user feedback. YOU MUST use `replace_in_file` diff blocks when practical; otherwise, describe the proposed changes clearly.
    d.  **Await User Action on Suggestions:** YOU MUST ask the user if they agree with the proposed improvements and if they want you to apply them *now* using the appropriate tool (`replace_in_file` or `write_to_file`).
    e.  **Apply Changes (If Approved):** If the user approves, YOU MUST apply the changes using the specified tool.
    f.  **Proceed to Completion:** After applying changes (or if no changes were approved/suggested), YOU MUST proceed to `attempt_completion`.

**Constraint:** YOU MUST NOT offer or perform this reflection process if:
*   No `.clinerules` were active during the task.
*   The task was trivial (e.g., a single, simple tool use) AND involved no user feedback.
