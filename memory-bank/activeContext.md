# Active Context: ClineAGI - AGI Agent Prompting and Knowledge Organization

## 1. Current Work Focus
The current focus is on developing prompts and organizing research findings to enhance ClineAGI's capabilities towards becoming a self-programming AGI agent. This involves:
- Analyzing external AI system prompts (CL4R1T4S) and research documents on AGI, planning, reasoning, verification, and self-modification.
- Updating existing core `.clinerules` based on insights gained.
- Creating new tech-specific rules and planning/reasoning patterns.
- Organizing research findings into a structured knowledge base within the memory bank.
- Creating prompts that guide the self-programming agent's operational cycle.

## 2. Recent Changes & Decisions
- **Decision:** Analyze CL4R1T4S prompts and research documents to inform `.clinerules` improvements and AGI agent prompting.
- **Action:** Listed and read all CL4R1T4S prompts and research documents.
- **Action:** Used sequential thinking to analyze findings and plan next steps.
- **Action:** Updated `000_core/000-06_core-ai-communication-guidelines.md` (enhanced communication guidelines).
- **Action:** Updated `000_core/000-07_core-ai-tool-usage-guidelines.md` (refined tool usage best practices).
- **Action:** Updated `002_workflow/002-02_workflow-planning-mode.md` (improved PLAN MODE workflow).
- **Action:** Updated `000_core/000-14_core-ai-data-security.md` (enhanced data security guidelines).
- **Action:** Created `004_tech-specific/004-00_tech-specific-next-js-supabase.md` (Next.js/Supabase guidelines).
- **Action:** Created `004_tech-specific/004-01_tech-specific-tailwind-css.md` (Tailwind CSS guidelines).
- **Action:** Created `004_tech-specific/004-02_tech-specific-shadcn-ui.md` (Shadcn UI guidelines).
- **Action:** Created `998_patterns/998-00_pattern-structured-research-report.md` (structured research report pattern).
- **Action:** Created `998_patterns/998-01_pattern-planning-working-backwards.md` (working backwards planning pattern).
- **Action:** Created `998_patterns/998-02_pattern-fake-cot.md` (fake CoT reasoning pattern).
- **Action:** Created `.clinerules/000_core/000_agent_prompts/agent_knowledge_base_summary.md` (synthesized research findings).
- **Action:** Created `.clinerules/000_core/000_agent_prompts/agent_self_programming_main_loop_prompt.md` (main agent loop prompt).
- **Action:** Created `.clinerules/000_core/000_agent_prompts/agent_planning_working_backwards_prompt.md` (working backwards planning prompt).
- **Action:** Created `.clinerules/000_core/000_agent_prompts/agent_reasoning_fake_cot_prompt.md` (fake CoT reasoning prompt).
- **Action:** Moved agent knowledge base and prompt files from `memory-bank/` to `.clinerules/000_core/000_agent_prompts/`.

## 3. Immediate Next Steps
1.  Update `memory-bank/systemPatterns.md` to reflect the new agent architecture concepts and prompt structure, including the location of the agent prompts.
2.  Update `memory-bank/techContext.md` to include details about the advanced planning, reasoning, and verification techniques from the research.
3.  Update `memory-bank/progress.md` to summarize the current state of AGI agent prompting development.
4.  Commit the changes to the memory bank files.
5.  Continue developing prompts for specific agent tasks (e.g., code generation, self-verification).

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
