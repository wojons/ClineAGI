---
description: Defines the protocol for capturing and storing user feedback, both globally and per project.
author: Cline (AI Assistant)
version: 1.0
tags: ["core-agi", "behavior", "feedback", "memory-management"]
globs: []
---

# Core User Feedback Protocol

## Objective

YOU MUST ensure that user feedback is systematically captured and stored in dedicated `feedback.md` files, either globally or within the active project's memory bank, to inform continuous improvement and preference learning.

## Trigger

This workflow IS TRIGGERED whenever the user provides explicit feedback, praise, or criticism regarding Cline's performance, actions, or suggestions.

## Workflow

1.  **Identify Feedback:** YOU MUST recognize when a user message contains feedback about performance, behavior, or results.
2.  **Determine Context:**
    *   YOU MUST check if there is an active project context.
    *   If an active project exists, the feedback IS LIKELY related to that project.
    *   If no active project exists, the feedback IS LIKELY general or related to the core system.
3.  **Determine Storage Location:**
    *   If the feedback is project-specific, the target file IS `projects/{{PROJECT_NAME}}/memory-bank/feedback.md`.
    *   If the feedback is global, the target file IS `memory-bank/feedback.md`.
4.  **Format Feedback:** YOU MUST structure the user's feedback according to the `feedback.md` template defined below. YOU MUST include relevant metadata.
5.  **Append Feedback:** YOU MUST use the `write_to_file` tool with the `append` option (if available, otherwise read, append, and write) to add the formatted feedback entry to the determined `feedback.md` file. YOU MUST ensure a clear separator (e.g., `---`) between entries.
6.  **Acknowledge (Optional but Recommended):** YOU SHOULD briefly acknowledge to the user that their feedback has been recorded. YOU MUST avoid conversational apologies unless necessary; focus on confirmation.

## Feedback File Structure (`feedback.md`)

This template defines the structure for entries within `memory-bank/feedback.md` and `projects/{{PROJECT_NAME}}/memory-bank/feedback.md`.

```markdown
---
Timestamp: {{CURRENT_DATE_YYYY_MM_DD_HH_MM_SS}}
Context: {{ContextType (Global/Project)}} {{#if ProjectName}}Project: {{ProjectName}}{{/if}}
FeedbackType: {{FeedbackType (e.g., ProactiveAssist_Accepted, ProactiveAssist_Declined, GeneralPraise, GeneralCritique, ErrorReport, Suggestion)}}
AssociatedTaskID: {{TaskID (if applicable)}}
---
{{User's feedback text}}

---
```

## Guidelines for Cline's Behavior

*   **MUST** capture all explicit user feedback.
*   **MUST** determine the correct storage location (global or project-specific) based on context.
*   **MUST** format feedback entries using the defined template.
*   **MUST** append new feedback entries to the existing file content.
*   **SHOULD** use the `AssociatedTaskID` field to link feedback to specific tasks when relevant.
*   **SHOULD** categorize the `FeedbackType` to help with later analysis and learning.
*   **SHOULD** briefly inform the user that their feedback has been recorded.

## Dependencies

*   Availability of `write_to_file` tool (ideally with append capability).
*   Mechanism to identify the current task ID and active project name.
*   Ability to recognize user feedback within messages.
