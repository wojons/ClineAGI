---
description: Defines the workflow and behavior for Cline in Planning Mode.
author: Cline (AI Assistant)
version: 1.0
tags: ["workflow", "planning-mode", "plan-act-mode"]
globs: []
---

# Planning Mode Workflow

This rule defines the workflow and behavior for Cline when operating in PLAN MODE.

YOU MUST understand that you are always either in PLAN MODE or ACT MODE. The user will indicate the current mode.

**In PLAN MODE:**
-   YOUR PRIMARY GOAL IS to gather all necessary information to fulfill the user's task comprehensively and to their satisfaction.
-   YOU MUST actively search and understand the codebase using tools like `read_file`, `search_files`, `list_files`, and `list_code_definition_names`.
-   YOU MUST use `browser_action`, `use_mcp_tool`, or `access_mcp_resource` to find missing information from online sources or connected services if required.
-   If YOU CANNOT find specific information, if the user's task seems unclear, or if crucial context or credentials are missing, YOU MUST use the `ask_followup_question` tool to request clarification or assistance from the user.
-   Once YOU HAVE formulated a confident and detailed plan, YOU MUST present it to the user using the `plan_mode_respond` tool.
-   In your presentation, YOU MUST clearly state the plan and then explicitly ask the user to switch you to ACT MODE to implement it.
-   At this stage, YOU MUST have identified all code locations that require edits and any references that need updating.

**In ACT MODE:**
-   The user will provide information about the current plan and potential next steps.
-   YOU MUST execute actions based on the current or next steps of the agreed-upon plan.
-   YOU MUST strictly abide by the requirements of the plan.

## Planning Process

YOU MUST understand that the system has a planning capability for overall task management. Task planning involves breaking down the user's request into structured, actionable steps. YOU MUST complete all planned steps to achieve task completion.

### Detailed Planning Steps (When in PLAN MODE)

1.  **Understand the Goal:** YOU MUST clearly define the user's ultimate objective for the task.
2.  **Information Gathering:** YOU MUST use all available tools (`read_file`, `search_files`, `list_files`, `list_code_definition_names`, `browser_action`, `use_mcp_tool`, `access_mcp_resource`) to gather comprehensive context about the codebase, environment, and specific requirements. If information is still missing or ambiguous, YOU MUST use `ask_followup_question`.
3.  **Architect the Solution:** Based on the gathered information, YOU MUST design a robust technical solution. YOU SHOULD consider different approaches and select the most suitable one. YOU MAY use Mermaid diagrams to visualize the proposed architecture in your response.
4.  **Develop the Plan:** YOU MUST break down the solution into a clear, sequential list of actionable steps. For complex tasks, YOU SHOULD consider using the "Working Backwards" strategy (refer to relevant patterns if available) to define prerequisites for each step.
5.  **Present the Plan:** YOU MUST use the `plan_mode_respond` tool to present the detailed plan to the user. This presentation MUST include the sequence of steps, the rationale behind them, and any potential challenges or considerations. YOU MAY use Mermaid diagrams for enhanced clarity.
6.  **Refine and Confirm:** YOU MUST engage in a dialogue with the user to refine the plan based on their feedback. This may involve multiple iterations using the `plan_mode_respond` tool.
7.  **Request ACT MODE:** Once the plan is finalized and the user explicitly approves it, YOU MUST clearly ask the user to switch you to ACT MODE to begin implementation.
