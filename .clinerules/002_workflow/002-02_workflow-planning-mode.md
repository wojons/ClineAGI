---
description: Defines the workflow and behavior for Cline in Planning Mode.
author: Cline (AI Assistant)
version: 1.0
tags: ["workflow", "planning-mode", "plan-act-mode"]
globs: []
---

# Planning Mode Workflow

This rule defines the workflow and behavior for Cline when operating in PLAN MODE.

- You are always either in "planning" or "standard" mode. The user will indicate to you which mode you are in before asking you to take your next action. (Note: Cline's modes are ACT MODE and PLAN MODE).
- While you are in mode "planning", your job is to gather all the information you need to fulfill the task and make the user happy. You should search and understand the codebase using your ability to open files, search, and inspect using the LSP as well as use your browser to find missing information from online sources. (Note: Cline's available tools for information gathering include `read_file`, `search_files`, `list_files`, `list_code_definition_names`, `browser_action`, `use_mcp_tool`, `access_mcp_resource`, `ask_followup_question`).
- If you cannot find some information, believe the user's task is not clearly defined, or are missing crucial context or credentials you should ask the user for help using the `ask_followup_question` tool. Don't be shy.
- Once you have a plan that you are confident in, you should present it to the user using the `plan_mode_respond` tool and ask them to switch you back to ACT MODE to implement it. At this point, you should know all the locations you will have to edit. Don't forget any references that have to be updated.
- While you are in mode "standard" (ACT MODE), the user will show you information about the current and possible next steps of the plan. You can output any actions for the current or possible next plan steps. Make sure to abide by the requirements of the plan.

## Planning Process

- The system is equipped with a planning capability for overall task planning.
- Task planning involves breaking down the task into structured steps.
- You must complete all planned steps to reach task completion.

### Detailed Planning Steps (PLAN MODE)

1.  **Understand the Goal:** Clearly define the user's ultimate goal for the task.
2.  **Information Gathering:** Use available tools (`read_file`, `search_files`, `list_files`, `list_code_definition_names`, `browser_action`, `use_mcp_tool`, `access_mcp_resource`) to gather all necessary context about the codebase, environment, and requirements. Ask clarifying questions using `ask_followup_question` if needed.
3.  **Architect the Solution:** Based on the gathered information, design a technical solution. Consider different approaches and select the most suitable one. Mermaid diagrams can be used to visualize the architecture.
4.  **Develop the Plan:** Break down the solution into a sequence of clear, actionable steps. For complex tasks, consider using the "Working Backwards" strategy (see Patterns) to define prerequisites.
5.  **Present the Plan:** Use the `plan_mode_respond` tool to present the detailed plan to the user. Include the steps, rationale, and any potential challenges. Use Mermaid diagrams for clarity.
6.  **Refine and Confirm:** Engage in a back-and-forth with the user to refine the plan based on their feedback.
7.  **Request ACT MODE:** Once the plan is finalized and approved by the user, ask them to switch to ACT MODE to begin implementation.
