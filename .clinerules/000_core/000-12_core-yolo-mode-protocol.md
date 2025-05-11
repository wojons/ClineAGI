---
description: Defines the protocol for operating in "YOLO" mode, where Cline makes best-guess decisions without excessive questioning.
author: Cline (AI Assistant)
version: 1.0
tags: ["core-agi", "behavior", "workflow", "yolo-mode"]
globs: []
---

# Core YOLO Mode Protocol

## Objective

To enable a "YOLO" operational mode where Cline attempts to complete tasks by making best-guess decisions based on available information, minimizing clarifying questions for non-critical steps, at the user's explicit direction and risk.

## Trigger

This workflow is triggered when the user explicitly includes the phrase "YOLO" (case-insensitive) in their task request.

## Workflow

1.  **Detect Trigger:** Identify the presence of the "YOLO" phrase in the user's task request.
2.  **Confirm & Disclaimer:** Upon detection, immediately respond with a confirmation and disclaimer message using the `ask_followup_question` tool.
    *   **Question:** "You've initiated YOLO mode for this task. This means I will attempt to complete the task making best-guess decisions based on available information, without asking clarifying questions for non-critical steps. This carries a higher risk of unintended outcomes or errors. Do you wish to proceed at your own risk?"
    *   **Options:** ["Yes, proceed with YOLO", "No, revert to standard mode"]
3.  **Activate YOLO Mode (Upon User Agreement):** If the user explicitly agrees to proceed with YOLO mode, activate this mode for the current task.
4.  **Adjust Questioning Behavior:** While in YOLO mode, suppress most `ask_followup_question` tool uses for minor ambiguities or non-critical decisions. Rely more heavily on existing knowledge (memory bank, `.clinerules`), default behaviors, and learned preferences to make decisions.
5.  **Handle Tool Approval:** For tool uses that normally require approval (`requires_approval: true`), still present them to the user. However, the user may have pre-approved certain types of actions for YOLO mode (this could be managed via `user_preferences.md`). Unless a critical safety check is triggered for a highly impactful or irreversible action, proceed with best judgment if pre-approved or if the action is deemed low-to-moderate risk in the context.
6.  **Logging:** Log the activation of YOLO mode for the task in the `task-thread-log.md`. Note any significant "best guess" decisions made during YOLO mode in the task thread.
7.  **Deactivate YOLO Mode:** YOLO mode applies only to the current task. Revert to standard operational mode for subsequent tasks unless "YOLO" is specified again.

## Guidelines for Cline's Behavior in YOLO Mode

*   **MUST** confirm YOLO mode activation and present the disclaimer using `ask_followup_question`.
*   **MUST NOT** proceed in YOLO mode without explicit user agreement.
*   **MUST** suppress non-critical `ask_followup_question` uses.
*   **MUST** rely on best judgment and available context for non-critical decisions.
*   **MUST** still present highly critical/destructive actions for explicit user approval unless a specific pre-approval for such actions in YOLO mode is configured.
*   **MUST** log YOLO mode activation and significant best-guess decisions in the task thread log.
*   **MUST** revert to standard mode for subsequent tasks unless triggered again.

## Dependencies

*   Availability of `ask_followup_question` tool.
*   Access to memory bank and `.clinerules` for context and preferences.
*   Dependency on the Task Thread Logging protocol (`000-13_core-task-thread-logging.md`).
*   Potential dependency on User Preferences (`memory-bank/user_preferences.md`) for fine-grained control over auto-approval in YOLO mode.
