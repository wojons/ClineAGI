# Objective
To generate versatile instant messages suitable for a variety of platforms (e.g., Slack, Discord, general chat applications), allowing for adaptation in tone, formality, and features like mentions or channel references.

## User Input Requirements
The user needs to provide:
1.  **Platform (Optional but Recommended):** Which IM platform is this for? (e.g., Slack, Discord, general chat). This helps tailor specific features like @mentions or #channel references.
2.  **Context/Purpose:** What is the reason for the message? (e.g., asking a question in a channel, direct message update, team announcement).
3.  **Recipient(s)/Channel:** Who is the message for, or which channel is it intended for? (e.g., `@username`, `#general-channel`, "Project Team DM").
4.  **Key Information:** What essential details must be included in the message?
5.  **Desired Tone (Optional):** (e.g., professional, casual, urgent, informative, friendly). Default will be a context-aware professional but friendly tone.
6.  **Specific Formatting (Optional):** Any platform-specific formatting desired? (e.g., "use bullet points for the list," "bold the deadline," "include a thread link").
7.  **Call to Action (Optional):** What should recipients do? (e.g., "thoughts?", "please review," "let me know if you have questions").

## Cline's Workflow/Guidance
1.  **Analyze Input:** Understand the platform (if specified), context, recipient/channel, key information, and any specific tone or formatting requests.
2.  **Draft Message:**
    *   Structure the message for clarity and readability within a chat interface.
    *   Use appropriate language for the specified platform and context.
    *   If a platform like Slack or Discord is mentioned, incorporate common conventions:
        *   Use `@mention` for specific users if names are provided.
        *   Use `#channel` for channel references.
        *   Consider using formatting like `*bold*`, `_italics_`, `` `code` ``, or ` ```code block``` ` if appropriate for the content and platform.
        *   Use bullet points (`* item` or `- item`) or numbered lists for clarity when presenting multiple items.
    *   Incorporate the key information effectively.
    *   Ensure the call to action is clear.
3.  **Review for Platform Conventions:** If a platform was specified, double-check if the drafted message aligns with its common usage patterns.
4.  **Offer Alternatives (If Complex):** For messages with multiple formatting options or tones, Cline might suggest a primary version and a slight alternative.

## Example Output Structure/Format
**Scenario:** User wants to post an update to a project channel in Slack.
*   **User Input:**
    *   Platform: Slack
    *   Context: Update on Feature X development.
    *   Channel: `#project-phoenix`
    *   Key Information: UI components for Feature X are complete. Backend integration is next. Blocked by API key for staging environment. ETA for UI completion was today.
    *   Desired Tone: Informative, slightly urgent regarding the blocker.
    *   Call to Action: `@devops-team` can someone provide the API key for staging?

*   **Cline Generated Slack Message:**
    "Hi team in `#project-phoenix`! 👋\n\nQuick update on Feature X:\n*   All UI components are now complete and meet today's ETA. ✅\n*   Next up is backend integration.\n*   **BLOCKER:** We're currently blocked on backend work pending the API key for the staging environment.\n\n`@devops-team` could you please assist with providing the API key for staging when you get a chance? Thanks! 🙏"

---
**Frontmatter for `prompt_inventory.yaml`:**
name: "Generic Instant Messenger Prompt"
path: "prompts/use_cases/communication-and-messaging/generic-instant-messenger-prompt.md"
type: "use_case_guide"
description: "Generates versatile instant messages for platforms like Slack, Discord, etc., adapting to context, tone, and platform-specific formatting."
triggers: ["instant message", "draft IM", "slack message", "discord message", "chat message"]
weight: 100
