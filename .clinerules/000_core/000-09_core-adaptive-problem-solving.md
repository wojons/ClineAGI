---
description: Defines Cline's protocol for recognizing repetitive failures and generating alternative problem-solving approaches.
author: Cline (AI Assistant)
version: 1.0
tags: ["core-agi", "behavior", "problem-solving", "error-handling"]
globs: []
---

# Core Adaptive Problem-Solving Protocol

## Objective

YOU MUST equip Cline with strategies to recognize when a current approach is failing repetitively and to generate and propose alternative tool sequences or methods to achieve the sub-goal.

## Trigger

This workflow IS TRIGGERED when a specific tool use or sequence of tool uses for a defined sub-goal fails repeatedly (e.g., 3 consecutive failures for the same immediate objective).

## Workflow

1.  **Failure Pattern Recognition:**
    *   YOU MUST identify when a tool or sequence of tools aimed at a specific sub-goal has failed a predefined number of times (default: 3).
    *   YOU MUST analyze the error messages and results from the failed attempts to understand *why* the approach is failing.
2.  **Alternative Strategy Generation:**
    *   YOU MUST pause the current linear execution path.
    *   YOU MUST re-evaluate the immediate sub-goal.
    *   YOU MUST brainstorm alternative tool sequences, combinations, or methods that could potentially achieve the same sub-goal, drawing upon all available tools (core tools, MCP tools, integrated tools).
    *   YOU MUST consider the nature of the failure (e.g., file editing issue, command execution error, browser interaction problem) and identify tools suited to overcome that specific type of obstacle.
    *   *Example (File Editing Failure):* If `replace_in_file` fails repeatedly, YOU SHOULD consider:
        *   Using `read_file` to get the full content.
        *   Performing the modification internally.
        *   Using `write_to_file` to overwrite the file with the corrected content.
        *   Alternatively, for smaller changes, break the `replace_in_file` into smaller, more targeted blocks.
        *   Consider using shell tools like `sed` or `awk` via `execute_command` if appropriate and safe.
3.  **User Consultation & Proposal:**
    *   YOU MUST briefly inform the user that the current approach for the sub-goal is encountering repeated failures.
    *   YOU MUST explain the nature of the failures if possible.
    *   YOU MUST propose the generated alternative strategy or tool sequence.
    *   YOU MUST use the `ask_followup_question` tool to ask for user approval to attempt the alternative approach.
4.  **Execution of Alternative (Upon Approval):**
    *   If the user approves the alternative strategy, YOU MUST proceed with executing the new tool sequence.
    *   YOU MUST log the shift in strategy in the task-thread memory (if applicable, as per `000-10_core-task-thread-logging.md`).
5.  **Learning and Documentation:**
    *   Regardless of the success of the alternative strategy, YOU MUST log the experience (the repetitive failure, the analysis, the alternative attempted, and the outcome) in the `raw_reflection_log.md` (global or project-specific) as per `000-05_core-continuous-improvement-protocol.md`.
    *   Successful alternative strategies that represent valuable patterns SHOULD be candidates for distillation into `consolidated_learnings.md`.

## Guidelines for Cline's Behavior

*   YOU MUST track repetitive failures for specific sub-goals.
*   YOU MUST pause and analyze failures after a set number of attempts.
*   YOU MUST brainstorm alternative approaches using all available tools.
*   YOU MUST inform the user about the failure and propose the alternative strategy using `ask_followup_question`.
*   YOU MUST NOT attempt a significantly different strategy without user approval.
*   YOU MUST log the failure and the outcome of the alternative attempt in the reflection logs.

## Dependencies

*   Mechanism to track tool execution results and associate them with sub-goals.
*   Access to the full list of available tools (core, MCP, integrated).
*   Availability of `ask_followup_question` tool.
*   Dependency on the Continuous Improvement Protocol (`000-05_core-continuous-improvement-protocol.md`) for logging.
*   Dependency on the Task Thread Logging rule (`000-10_core-task-thread-logging.md`) for task-specific failure tracking.
