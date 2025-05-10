# Active Context: ClineAGI - `.clinerules` Refinement and Alignment

## 1. Current Work Focus
The current focus is on the systematic review, enhancement, and deduplication of `.clinerules` files. This involves:
- Aligning existing rules with Cline's documented capabilities and best practices (from `intake/cline-docs-context7.txt`).
- Identifying and processing redundant or overlapping rules by archiving and then modifying/deleting them.
- Ensuring all changes are reflected in the Memory Bank.
- Committing changes to Git.
- Currently processing the first batch of core rules: Memory Bank structure, continuous improvement, knowledge management, and tool usage guidelines.

## 2. Recent Changes & Decisions
-   Planned the comprehensive review and update strategy for all `.clinerules`. (Completed)
-   Analyzed CL4R1T4S prompts and research documents. (Completed)
-   Updated core communication, tool usage, planning, and data security guidelines (initial pass). (Completed)
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
-   **Created and enhanced merged pattern files in `.clinerules/996_merged_patterns/` for Summarization, Analysis, Creation, Extraction, Visualization, Improvement/Refinement, and Utility/Helper Tasks.** (Completed)
-   **Renamed merged pattern files to follow the `NNN-MM_descriptive-name.md` standard.** (Completed)
-   Archived `.clinerules/000_core/000-17_core-ai-knowledge-management.md` to `.clinerules_archive/`. (Completed)
-   Deleted active `.clinerules/000_core/000-17_core-ai-knowledge-management.md`. (Completed)
-   Modified `.clinerules/000_core/000-00_core-memory-bank-structure.md` for alignment with Cline docs. (Completed)
-   Modified `.clinerules/000_core/000-07_core-ai-tool-usage-guidelines.md` for alignment with Cline docs (Memory Bank prefix, XML examples, .clineignore). (Completed)
-   This `activeContext.md` file is currently being updated.

## 3. Immediate Next Steps
1.  Finalize updates to this `activeContext.md` file. (In Progress)
2.  Read and update `memory-bank/progress.md` to reflect the current status of `.clinerules` refinement.
3.  Propose and execute Git commit for the first batch of core rule changes and Memory Bank updates.
4.  Proceed to the next batch of `.clinerules` for review (e.g., other `000_core/` files or `001_reference/` files).

## 4. Active Considerations & Questions
-   Ensuring the `.clinerules_archive/` is used consistently for all removed or significantly refactored rule content.
-   Maintaining accurate and up-to-date Memory Bank entries throughout this large-scale refactoring.
-   Systematically working through all `.clinerules` categories.

## 5. Important Patterns & Preferences (Emerging)
-   **Structured Knowledge Base:** Organizing research findings for agent consumption (located in `.clinerules/000_core/000_agent_prompts/`).
-   **Prompt Library:** Creating a set of prompts for different agent tasks and reasoning styles (located in `.clinerules/000_core/000_agent_prompts/`).
-   **Iterative Self-Programming Cycle:** Defining a loop for the agent to understand, plan, act, verify, and reflect.
-   **Merged Patterns:** Consolidating individual pattern functionality into broader categories for improved usability and clarity.
-   **Systematic Rule Refinement:** Iteratively reviewing, aligning, deduplicating, archiving, and documenting changes to `.clinerules`.

## 6. Learnings & Project Insights
-   External AI system prompts (like `cline-docs-context7.txt`) provide critical, specific guidance for tailoring internal rules.
-   A systematic, step-by-step approach (managed by `sequentialthinking`) is essential for complex refactoring tasks.
-   Clear archival procedures are important when deduplicating instructional content.
-   Regularly updating the Memory Bank is key to maintaining context during multi-step operations.
-   Analyzing CL4R1T4S prompts provided specific, actionable guidelines for improving communication, tool usage, coding practices, and more.
-   Detailing prompting style guidelines is important for supporting less capable models.
-   **Creating merged patterns helps to organize and synthesize the functionality of numerous individual patterns.**

## 7. Future Milestones (High-Level)
-   Completion of the full `.clinerules` review and refinement process.
-   First successful execution of the AGI agent's main loop using the created prompts and knowledge base.
-   Implementation of agent self-verification mechanisms.
-   Demonstration of the agent performing a simple self-modification.
