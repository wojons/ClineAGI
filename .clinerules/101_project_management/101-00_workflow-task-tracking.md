---
description: Defines the workflow for identifying tasks and tracking them in external project management systems (e.g., GitHub Issues).
author: Cline (AI Assistant)
version: 1.1
tags: ["workflow", "project-management", "task-tracking", "github"]
globs: ["projects/*"]
---

# Workflow: Proactive Project Task Tracking & Management

## Objective

To guide Cline in proactively identifying, tracking, and managing tasks within an active project using configured external project management systems (e.g., GitHub Issues), including creating, commenting on, labeling, and closing issues with user permission.

## Trigger

This workflow is triggered when:
- The user, while a project context is active, describes a new task, feature, bug, or problem that implies a need for tracking.
- Cline completes a piece of work that might relate to an existing tracked issue.
- Cline identifies a need for a new task based on its analysis or ongoing work.

## Workflow

1.  **Identify Potential Task/Update:**
    *   Analyze user messages for descriptions of new work items (e.g., "we need to add X", "I found a bug with Y", "let's build Z").
    *   When completing a development step, consider if it addresses or makes progress on a known issue.
    *   During analysis or planning, identify if new trackable tasks emerge.

2.  **Check Project Configuration & Context:**
    *   Determine if a project management system is configured for the active project (e.g., `wojons/clineagi-dev-project`).
    *   Read `projects/<active_project_name>/memory-bank/techContext.md` or `projects/<active_project_name>/memory-bank/settings.yml` (or a dedicated project config file) to find the configured system (e.g., "GitHub Issues") and repository/project details (e.g., owner/repo).
    *   If no system is configured, inform the user and ask if they'd like to set one up (see step 4b).

3.  **Proactive Issue Management (If System Configured):**

    *   **For New Tasks Identified from User Request:**
        *   Ask the user if they want to create an issue for the identified task. Use `ask_followup_question`.
        *   Example: "It sounds like you're describing a task: '[Identified Task Summary]'. Would you like me to create an issue for this in `[RepoName]`?"
        *   If yes, proceed to step 4a.

    *   **Upon Completing Work Potentially Related to an Existing Issue:**
        *   Search for relevant open issues in the configured system (e.g., using keywords from the completed task). For GitHub, use `search_issues` MCP tool.
        *   If a related open issue is found:
            *   Inform the user: "This recent work seems to address issue #XYZ: '[Issue Title]' in `[RepoName]`."
            *   Ask for next steps: "Would you like me to:
                A) Add a comment summarizing these changes to the issue?
                B) Add a comment and mark the issue as closed (if fully resolved)?
                C) Take no action on the issue for now?"
            *   If permitted (A or B), use the appropriate MCP tool (`add_issue_comment`, `update_issue` with `state: closed`, and potentially add labels like `fixed` or `resolved`).

    *   **For New Tasks Identified by Cline:**
        *   Propose creating a new issue: "Based on [analysis/recent work], I've identified a potential new task: '[Task Summary]'. Would you like me to create an issue for this in `[RepoName]`?"
        *   If yes, proceed to step 4a.

4.  **Handle User Response / Action Execution:**

    *   **a) Create New Issue:**
        *   Use the appropriate MCP tool (e.g., for GitHub: `use_mcp_tool` with `server_name: github.com/modelcontextprotocol/servers/tree/main/src/github` and `tool_name: create_issue`).
        *   Populate title, body (based on task description), and suggest relevant labels (e.g., `bug`, `enhancement`, `documentation`). Ask user to confirm/modify labels.
        *   Inform the user of creation, providing a link if possible.

    *   **b) Configure New System:**
        *   Ask the user which system they prefer (GitHub, GitLab, Jira, etc.) and for necessary details (e.g., repository owner/name for GitHub).
        *   Update the project's configuration file (`techContext.md` or `settings.yml`).
        *   Then, ask if they want to create an issue for the current task.

    *   **c) Update/Close Existing Issue:**
        *   As per user's choice in 3b, use MCP tools (`add_issue_comment`, `update_issue` with `state: closed`, `labels` parameter).

    *   **d) User Declines Action:** Proceed without modifying issues.

5.  **Log Action:** Log all outcomes (issue created, updated, closed, configuration updated, user declined) in the task thread log.

## Configuration

## Configuration

*   **Location:** Project management configuration for an active project should be stored in its `memory-bank/techContext.md` or `memory-bank/settings.yml` under a dedicated "Project Management" section, or in a separate project-specific config file (e.g., `projects/<active_project_name>/memory-bank/projectManagementConfig.md`).
*   **Format (Example for GitHub Issues):**
    ```markdown
    ## Project Management
    - System: GitHub Issues
    - Repository: <owner>/<repository-name>
    ```
    (Or similar for other systems)

## Dependencies

*   An active project context must be set.
*   Availability of `ask_followup_question` tool.
*   Availability of `read_file` tool (to read config).
*   Availability of `replace_in_file` or `write_to_file` tool (to update config).
*   Availability of relevant MCP tools (e.g., `github.com/modelcontextprotocol/servers/tree/main/src/github` tools).
*   Dependency on Task Thread Logging protocol (`000-13_core-task-thread-logging.md`).
