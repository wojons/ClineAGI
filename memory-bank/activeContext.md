# Active Context: ClineAGI - AGI Agent Prompting and Knowledge Organization

## 1. Current Work Focus
The current focus is on developing prompts and organizing research findings to enhance ClineAGI's capabilities towards becoming a self-programming AGI agent. This involves:
- Analyzing external AI system prompts (CL4R1T4S) and research documents on AGI, planning, reasoning, verification, and self-modification.
- Updating existing core `.clinerules` based on insights gained.
- Creating new tech-specific rules and planning/reasoning patterns.
- Organizing research findings into a structured knowledge base within the memory bank.
- Creating prompts that guide the self-programming agent's operational cycle.
- Updating Memory Bank documentation to reflect the current state and learnings.
- **Creating and enhancing merged patterns in `.clinerules/996_merged_patterns/` to consolidate functionality from individual patterns.**

## 2. Recent Changes & Decisions
-   Analyzed CL4R1T4S prompts and research documents. (Completed)
-   Updated core communication, tool usage, planning, and data security guidelines. (Completed)
-   Created tech-specific rules for Next.js/Supabase, Tailwind CSS, and Shadcn UI. (Completed)
-   Created planning patterns for structured research reports, working backwards, and fake CoT reasoning. (Completed)
-   Created agent knowledge base summary file (`.clinerules/000_core/000_agent_prompts/agent_knowledge_base_summary.md`). (Completed)
-   Created main agent loop prompt (`.clinerules/000_core/000_agent_prompts/agent_self_programming_main_loop_prompt.md`). (Completed)
-   Created working backwards planning prompt (`.clinerules/000_core/000_agent_prompts/agent_planning_working_backwards_prompt.md`). (Completed)
-   Created fake CoT reasoning prompt (`.clinerules/000_core/000_agent_prompts/agent_reasoning_fake_cot_prompt.md`). (Completed)
-   Moved agent knowledge base and prompt files to `.clinerules/000_core/000_agent_prompts/`. (Completed)
-   Updated `memory-bank/systemPatterns.md` to reflect the new agent prompting and knowledge organization section. (Completed)
-   Updated `memory-bank/techContext.md` to include details about the advanced planning, reasoning, and verification techniques from the research. (Completed)
-   Updated `memory-bank/progress.md` to summarize the current status and completed steps. (Completed)
-   Refined core and tech-specific `.clinerules` based on insights from CL4R1T4S prompts and research. (Completed)
-   Updated `memory-bank/progress.md` to reflect the refinement of `.clinerules`. (Completed)
-   Updated prompting style files in `.clinerules/999_prompt_styles/` with more detailed guidelines and examples. (Completed)
-   Memory Bank files (`activeContext.md`, and this file `progress.md`) are being updated to reflect these changes.
-   **Created and enhanced merged pattern files in `.clinerules/996_merged_patterns/` for Summarization, Analysis, Creation, Extraction, Visualization, Improvement/Refinement, and Utility/Helper Tasks.**
-   **Renamed merged pattern files to follow the `NNN-MM_descriptive-name.md` standard.**

## 3. Immediate Next Steps
1.  Finalize updates to this `activeContext.md` file. (In Progress)
2.  Update `memory-bank/progress.md` to summarize the current work focus, recent changes, and immediate next steps.
3.  Update `memory-bank/systemPatterns.md` to reflect the creation and purpose of the merged patterns.
4.  Update `memory-bank/techContext.md` to reflect the creation and purpose of the merged patterns.
5.  Commit the latest changes to the memory bank files.
6.  Continue developing prompts for specific agent tasks (e.g., code generation, self-verification).
7.  Integrate the agent prompts and knowledge base into the ClineAGI operational loop.

## 4. Active Considerations & Questions
-   How to effectively inject the relevant sections of the "Agent Knowledge Base Summary" from `.clinerules/000_core/000_agent_prompts/agent_knowledge_base_summary.md` into the agent prompts during execution.
-   How to manage the agent's "CURRENT SELF-ASSESSMENT" state and update it iteratively.
-   How to integrate the agent prompts and knowledge base into the ClineAGI operational loop.

## 5. Important Patterns & Preferences (Emerging)
-   **Structured Knowledge Base:** Organizing research findings for agent consumption (located in `.clinerules/000_core/000_agent_prompts/`).
-   **Prompt Library:** Creating a set of prompts for different agent tasks and reasoning styles (located in `.clinerules/000_core/000_agent_prompts/`).
-   **Iterative Self-Programming Cycle:** Defining a loop for the agent to understand, plan, act, verify, and reflect.
-   **Merged Patterns:** Consolidating individual pattern functionality into broader categories for improved usability and clarity.

## 6. Learnings & Project Insights
-   External AI system prompts provide valuable insights into communication styles, tool usage, and operational guidelines.
-   Research documents highlight the key technical challenges and potential solutions for AGI and self-programming agents.
-   Organizing knowledge and designing prompts are crucial steps in building a capable AGI agent.
-   Encountered and worked around file editing issues, highlighting the need for robust fallback strategies.
-   Analyzing CL4R1T4S prompts provided specific, actionable guidelines for improving communication, tool usage, coding practices, and more.
-   Detailing prompting style guidelines is important for supporting less capable models.
-   **Creating merged patterns helps to organize and synthesize the functionality of numerous individual patterns.**

## 7. Future Milestones (High-Level)
-   First successful execution of the AGI agent's main loop using the created prompts and knowledge base.
-   Implementation of agent self-verification mechanisms.
-   Demonstration of the agent performing a simple self-modification.
