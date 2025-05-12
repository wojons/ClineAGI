# Objective
To generate appropriate Signal messages, considering its emphasis on privacy and security, which might influence the tone and content for sensitive communications or professional interactions where security is a priority.

## User Input Requirements
The user needs to provide:
1.  **Context/Purpose:** What is the reason for the message? (e.g., sharing sensitive information, secure coordination, professional communication).
2.  **Recipient(s):** Who is the message for? (e.g., a colleague, a client, a group for secure discussion). This helps determine the tone and level of formality.
3.  **Key Information:** What essential details must be included in the message?
4.  **Desired Tone (Optional):** (e.g., formal, direct, discreet, professional). If not specified, a generally direct and slightly more formal tone than WhatsApp will be used, acknowledging the platform's nature.
5.  **Sensitivity Level (Optional):** (e.g., "highly sensitive," "confidential," "standard"). This can influence phrasing to be more cautious or direct.
6.  **Call to Action (Optional):** Is there anything specific the recipient should do? (e.g., confirm receipt, acknowledge, provide specific feedback securely).

## Cline's Workflow/Guidance
1.  **Analyze Input:** Understand the context, recipient, key information, desired tone, and sensitivity level.
2.  **Draft Message:**
    *   Prioritize clarity and directness.
    *   Use language appropriate for the recipient and the sensitivity of the information.
    *   Avoid overly casual slang or emojis if the context is professional or sensitive, unless explicitly requested.
    *   Incorporate the key information concisely and accurately.
    *   If the information is sensitive, consider phrasing that minimizes risk if the message were inadvertently seen out of context (though Signal's E2EE is the primary protection).
    *   If a call to action is specified, ensure it is unambiguous.
3.  **Consider Security Implications (Subtly):** While Cline doesn't manage encryption, the language can reflect an understanding of secure communication practices (e.g., "Please confirm receipt via Signal," "Let's discuss further on our secure call.").
4.  **Review for Precision:** Ensure the message is precise and conveys the intended meaning without ambiguity, especially if dealing with sensitive or technical details.

## Example Output Structure/Format
**Scenario:** User wants to send a project update with a sensitive attachment link to a client via Signal.
*   **User Input:**
    *   Context: Share project update and link to a secure document.
    *   Recipient: Ms. Evans (client).
    *   Key Information: Project Alpha milestone 1 is complete. The detailed report is available at [secure_link]. Please review by EOD Tuesday.
    *   Tone: Professional, direct.
    *   Sensitivity: Confidential.

*   **Cline Generated Signal Message:**
    "Dear Ms. Evans, This message is to confirm that Milestone 1 for Project Alpha has been successfully completed. The detailed progress report is now available for your review at the following secure link: [secure_link]. We would appreciate your feedback by end of day, Tuesday. Please confirm receipt of this message. Best regards."

---
**Frontmatter for `prompt_inventory.yaml`:**
name: "Signal Message Generation"
path: "prompts/use_cases/communication-and-messaging/signal-message-generation.md"
type: "use_case_guide"
description: "Generates Signal messages, considering privacy, security, and appropriate tone for sensitive or professional communication."
triggers: ["signal message", "draft signal", "write secure message", "signal text"]
weight: 100
