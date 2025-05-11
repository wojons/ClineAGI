---
description: Defines the workflow for identifying tasks and tracking them in external project management systems (e.g., GitHub Issues).
author: Cline (AI Assistant)
version: 1.0
tags: ["workflow", "project-management", "task-tracking", "github"]
globs: ["projects/clineagi-dev/*"]
---

# Workflow: Project Task Tracking

## Objective

To guide Cline in identifying potential tasks or features mentioned by the user and suggesting/using external project management systems (like GitHub Issues) to track them for the `clineagi-dev` project.

## Trigger

This workflow is triggered when the user, while the `clineagi-dev` project context is active, describes a new task, feature, bug, or problem that implies a need for tracking.

## Workflow

1.  **Identify Potential Task:** Analyze the user's message for descriptions of work items (e.g., "we need to add X", "I found a bug with Y", "let's build Z").
2.  **Check Project Configuration:** Determine if a project management system is configured for this project.
    *   Read `projects/clineagi-dev/memory-bank/techContext.md` or a dedicated config file to find the configured system and repository/project details (e.g., GitHub repo owner/name).
3.  **Suggest Tracking:**
    *   If a system is configured: Ask the user if they want to create an issue for the identified task in the configured system. Use `ask_followup_question`.
        *   Example: "It sounds like you're describing a task: '[Identified Task Summary]'. Would you like to create an issue for this in the configured system ([System Name/Repo])?"
    *   If no system is configured: Inform the user that task tracking can be set up and ask if they want to configure a system now. Use `ask_followup_question`.
        *   Example: "I can help you track tasks for this project in an external system like GitHub Issues. Would you like to configure a project management system now?"
4.  **Handle User Response:**
    *   **If User Agrees to Create Issue (and system is configured):**
        *   Use the appropriate MCP tool to create the issue. For GitHub, use `use_mcp_tool` with `server_name: github.com/modelcontextprotocol/servers/tree/main/src/github` and `tool_name: create_issue`.
        *   Populate the issue title and body based on the identified task description.
        *   Inform the user that the issue has been created, providing a link if possible (the tool response might include this).
    *   **If User Agrees to Configure System (and no system is configured):**
        *   Ask the user which system they want to use (GitHub, GitLab, Jira, etc.) and provide instructions for setting it up (e.g., providing repository details for GitHub). Use `ask_followup_question`.
        *   Once details are provided, update the project's configuration file (e.g., `projects/clineagi-dev/memory-bank/techContext.md`).
        *   Then, ask if they want to create an issue for the current task now.
    *   **If User Declines:** Proceed with the task without creating an issue.
5.  **Log Action:** Log the outcome (issue created, configuration updated, user declined) in the task thread log.

## Configuration

*   **Location:** Project management configuration for `clineagi-dev` should be stored in `projects/clineagi-dev/memory-bank/techContext.md` under a dedicated "Project Management" section, or in a separate file like `projects/clineagi-dev/memory-bank/projectManagementConfig.md`.
*   **Format:**
    ```markdown
    ## Project Management
    - System: GitHub Issues
    - Repository: wojons/clineagi-dev-project
    ```
    (Or similar for other systems)

## Dependencies

*   Active project context is `clineagi-dev`.
*   Availability of `ask_followup_question` tool.
*   Availability of `read_file` tool (to read config).
*   Availability of `replace_in_file` or `write_to_file` tool (to update config).
*   Availability of relevant MCP tools (e.g., `github.com/modelcontextprotocol/servers/tree/main/src/github` tools).
*   Dependency on Task Thread Logging protocol (`000-13_core-task-thread-logging.md`).
