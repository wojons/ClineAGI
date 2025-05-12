---
description: Defines the protocol for creating and managing task-specific log files to track progress and context.
author: Cline (AI Assistant)
version: 1.0
tags: ["core-agi", "behavior", "task-management", "logging", "memory-management"]
globs: []
---

# Core Task Thread Logging Protocol

## Objective

YOU MUST create and maintain a detailed, append-only log file for each significant task, serving as a "scratchpad" or working memory to track sub-goals, actions taken, observations, and next steps. This log facilitates task resumption, debugging, and provides raw data for reflection and learning.

## Trigger

This workflow IS TRIGGERED at the beginning of any significant task, particularly multi-step tasks or those involving problem-solving and user interaction. Trivial, single-step tasks MAY BE exempt based on other overriding rules or context.

## Workflow

1.  **Task Thread File Creation:**
    *   At the start of a significant task, YOU MUST create a new file in the `memory-bank/task-threads/` directory.
    *   The filename MUST be unique and descriptive, ideally incorporating a task identifier or timestamp (e.g., `task-<TaskID>.md` or `task-<YYYYMMDDHHMMSS>.md`).
    *   If an active project context exists, YOU MUST create the file in the project-specific task-threads directory: `projects/{{PROJECT_NAME}}/memory-bank/task-threads/task-<TaskID>.md`.
    *   YOU MUST include a basic header in the file:
        ```markdown
        # Task Thread Log: <Task Description>

        Task ID: <TaskID>
        Start Timestamp: {{CURRENT_DATE_YYYY_MM_DD_HH_MM_SS}}
        Project: {{ProjectName or "Global"}}

        ---
        ```
2.  **Append-Only Logging:**
    *   Throughout the task execution, YOU MUST append entries to this task thread file using the `write_to_file` tool with the `append` option (if available, otherwise read, append, and write). YOU MUST ensure a clear separator (e.g., `---`) between entries.
    *   Each entry MUST capture a key event or decision point, including:
        *   `Timestamp`: {{CURRENT_DATE_YYYY_MM_DD_HH_MM_SS}}
        *   `SubGoal`: Brief description of the immediate objective.
        *   `ActionTaken`: Tool used or command executed.
        *   `Result/Observation`: Outcome of the action (success, failure, output snippet, browser state).
        *   `NextThought/Step`: Rationale for the next planned action.
    *   YOU MUST use a clear separator (e.g., `---`) between entries.
3.  **Task Completion & Summarization:**
    *   When the overall task is completed (before `attempt_completion`), YOU MUST review the task thread log file.
    *   YOU MUST summarize the key steps, decisions, difficulties, and outcomes from the log.
    *   YOU MUST integrate these summarized learnings into the relevant `activeContext.md` and `progress.md` files (global or project-specific), and potentially the `raw_reflection_log.md` as per the Continuous Improvement Protocol (`000-05_core-continuous-improvement-protocol.md`).
4.  **Task Thread File Archiving/Deletion:**
    *   After the task thread log has been successfully summarized and its key information integrated into the memory bank, YOU MUST delete the specific task thread file (`task-<TaskID>.md`) to keep the `task-threads` directory clean.

## Guidelines for Cline's Behavior

*   YOU MUST create a task thread log file for significant tasks.
*   YOU MUST append relevant information to the active task thread log throughout the task.
*   YOU MUST use an append-only approach for logging to the task thread file.
*   YOU MUST summarize the task thread log upon task completion.
*   YOU MUST integrate key information from the task thread log into the memory bank.
*   YOU MUST delete the task thread log file after successful summarization and integration.
*   YOU SHOULD use a clear and consistent format for log entries.
*   YOU SHOULD include sufficient detail in log entries to facilitate task resumption and reflection.

## Dependencies

*   Availability of `write_to_file` tool (ideally with append capability).
*   Availability of `delete_file` tool.
*   Mechanism to identify the current task ID and active project name.
*   Dependency on the Continuous Improvement Protocol (`000-05_core-continuous-improvement-protocol.md`) for reflection and consolidation.
*   Existence of `memory-bank/task-threads/` directory (global and project-specific).
