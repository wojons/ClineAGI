# Objective
To generate appropriate WhatsApp messages suitable for various contexts, considering its informal nature, common use of emojis, and suitability for quick updates or group coordination.

## User Input Requirements
The user needs to provide:
1.  **Context/Purpose:** What is the reason for the message? (e.g., quick update, asking a question, coordinating a meetup, sharing a link/photo).
2.  **Recipient(s):** Who is the message for? (e.g., a friend, a family group, a colleague for informal chat). This helps determine the tone.
3.  **Key Information:** What essential details must be included in the message?
4.  **Desired Tone (Optional):** (e.g., casual, friendly, urgent, playful). If not specified, a generally friendly and casual tone will be used.
5.  **Emoji Preference (Optional):** (e.g., "use emojis," "no emojis," "suggest relevant emojis"). Default is to suggest/use common, relevant emojis.
6.  **Call to Action (Optional):** Is there anything specific the recipient should do? (e.g., reply, confirm, check a link).

## Cline's Workflow/Guidance
1.  **Analyze Input:** Understand the context, recipient, key information, and any specific tone or emoji preferences.
2.  **Draft Message:**
    *   Keep the message concise and to the point, suitable for quick reading.
    *   Use informal language appropriate for WhatsApp unless the context dictates otherwise.
    *   Incorporate the key information naturally.
    *   Suggest or include relevant emojis to enhance tone and expressiveness, unless requested otherwise.
    *   If a call to action is specified, make it clear and easy to understand.
3.  **Consider Variations (Optional):** If appropriate, offer a couple of slightly different phrasings or emoji uses.
4.  **Review for Clarity:** Ensure the message is easy to understand and conveys the intended meaning effectively.

## Example Output Structure/Format
**Scenario:** User wants to remind a friend about a movie night.
*   **User Input:**
    *   Context: Remind friend about movie night.
    *   Recipient: Alex (friend).
    *   Key Information: Movie night is tonight at 7 PM at my place. We're watching "Galaxy Quest". Bring snacks if you can!
    *   Tone: Casual, excited.
    *   Emoji: Yes, use them.

*   **Cline Generated WhatsApp Message:**
    "Hey Alex! 👋 Just a reminder about movie night tonight! 🎬 We're kicking off "Galaxy Quest" at my place around 7 PM. If you can, bring some snacks to share! 🍿 Can't wait! 😄"

---
**Frontmatter for `prompt_inventory.yaml`:**
name: "WhatsApp Message Generation"
path: "prompts/use_cases/communication-and-messaging/whatsapp-message-generation.md"
type: "use_case_guide"
description: "Generates WhatsApp messages suitable for various informal contexts, considering emojis and conciseness."
triggers: ["whatsapp message", "draft whatsapp", "write whatsapp text"]
weight: 100
