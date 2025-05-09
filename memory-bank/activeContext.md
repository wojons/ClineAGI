# Active Context: ClineAGI - AGI Agent Prompting and Knowledge Organization

## 1. Current Work Focus
The current focus is on developing prompts and organizing research findings to enhance ClineAGI's capabilities towards becoming a self-programming AGI agent. This involves:
- Analyzing external AI system prompts (CL4R1T4S) and research documents on AGI, planning, reasoning, verification, and self-modification.
- Updating existing core `.clinerules` based on insights gained.
- Creating new tech-specific rules and planning/reasoning patterns.
- Organizing research findings into a structured knowledge base within the memory bank.
- Creating prompts that guide the self-programming agent's operational cycle.
- Updating Memory Bank documentation to reflect the current state and learnings.

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

## 3. Immediate Next Steps
1.  Finalize updates to this `activeContext.md` file. (In Progress)
2.  Commit the latest changes to the memory bank files.
3.  Continue developing prompts for specific agent tasks (e.g., code generation, self-verification).
4.  Integrate the agent prompts and knowledge base into the ClineAGI operational loop.

## 4. Active Considerations & Questions
-   How to effectively inject the relevant sections of the "Agent Knowledge Base Summary" from `.clinerules/000_core/000_agent_prompts/agent_knowledge_base_summary.md` into the agent prompts during execution.
-   How to manage the agent's "CURRENT SELF-ASSESSMENT" state and update it iteratively.
-   How to integrate the agent prompts and knowledge base into the ClineAGI operational loop.

## 5. Important Patterns & Preferences (Emerging)
-   **Structured Knowledge Base:** Organizing research findings for agent consumption (located in `.clinerules/000_core/000_agent_prompts/`).
-   **Prompt Library:** Creating a set of prompts for different agent tasks and reasoning styles (located in `.clinerules/000_core/000_agent_prompts/`).
-   **Iterative Self-Programming Cycle:** Defining a loop for the agent to understand, plan, act, verify, and reflect.

## 6. Learnings & Project Insights
-   External AI system prompts provide valuable insights into communication styles, tool usage, and operational guidelines.
-   Research documents highlight the key technical challenges and potential solutions for AGI and self-programming agents.
-   Organizing knowledge and designing prompts are crucial steps in building a capable AGI agent.
-   The `.clinerules/` directory can serve as a suitable location for the agent's knowledge base and prompt library, separate from the core Memory Bank documents.
