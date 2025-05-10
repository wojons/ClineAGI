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
-   Archived `.clinerules/000_core/000-04_core-ai-response-styles.md` to `.clinerules_archive/`. (Completed)
-   Deleted active `.clinerules/000_core/000-04_core-ai-response-styles.md`. (Completed)
-   Renamed `.clinerules/000_core/000-06_core-self-improvement-protocol.md` to `000-08_core-continuous-improvement-protocol.md`. (Completed)
-   Reviewed `.clinerules/000_core/000-15_core-ai-pop-quiz-handling.md`, `000-16_core-ai-agent-loop.md`, and `000-18_core-ai-visual-information.md`. No changes needed. (Completed)
-   Reviewed `.clinerules/000_core/000-19_core-ai-writing-style.md`, `000-20_core-ai-error-handling.md`, `000-21_core-ai-response-modes.md`, and `000-22_core-shell-command-preference.md`. No changes needed. (Completed)
-   Reviewed `.clinerules/002_workflow/002-00_workflow-cline-for-research.md`, `002-01_workflow-cline-for-slides.md`, and `002-02_workflow-planning-mode.md`. No changes needed. (Completed)
-   Reviewed `.clinerules/003_protocol/003-00_protocol-mcp-development.md`. No changes needed. (Completed)
-   Reviewed `.clinerules/004_tech-specific/004-00_tech-specific-next-js-supabase.md`, `004-01_tech-specific-tailwind-css.md`, `004-02_tech-specific-shadcn-ui.md`, `004-03_tech-specific-supabase-edge-functions.md`, and `004-04_tech-specific-stripe-integration.md`. No changes needed. (Completed)
-   Reviewed `.clinerules/005_coding-guidelines/005-00_coding-best-practices.md`. No changes needed. (Completed)
-   Reviewed `.clinerules/996_merged_patterns/996-00_analyze-patterns.md`, `996-00_summarize-content.md`, and `996-01_analyze-content.md`. Archived `996-00_analyze-patterns.md` as redundant. (Completed)
-   Reorganized agent prompt files from `.clinerules/000_core/000_agent_prompts/` to `.clinerules/001_reference/` and `.clinerules/000_core/` with new naming convention. (Completed)
-   Reviewed `.clinerules/998_patterns/998-00_pattern-structured-research-report.md`, `998-01_pattern-planning-working-backwards.md`, and `998-02_pattern-fake-cot.md`. No changes needed. (Completed)
-   Reviewed and corrected all files in `.clinerules/999_prompt_styles/`. No corrections were needed. (Completed)
-   Archived `.clinerules/000_core/000-06_core-ai-communication-guidelines.md` to `.clinerules_archive/` and deleted the active file. (Completed)
-   Archived `.clinerules/000_core/000-19_core-ai-writing-style.md` to `.clinerules_archive/` and deleted the active file. (Completed)
-   Archived `.clinerules/000_core/000-21_core-ai-response-modes.md` to `.clinerules_archive/` and deleted the active file. (Completed)
-   Created and wrote the merged file `.clinerules/000_core/000-06_core-ai-communication-and-style.md`. (Completed)
-   Archived `.clinerules/000_core/000-13_core-ai-information-handling.md` to `.clinerules_archive/` and deleted the active file. (Completed)
-   Archived `.clinerules/000_core/000-18_core-ai-visual-information.md` to `.clinerules_archive/` and deleted the active file. (Completed)
-   Archived `.clinerules/000_core/000-22_core-shell-command-preference.md` to `.clinerules_archive/` and deleted the active file. (Completed)
-   Updated and wrote the merged file `.clinerules/000_core/000-07_core-ai-tool-usage-guidelines.md`. (Completed)
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
-   Completed review of all `.clinerules` directories: `000_core`, `001_reference`, `002_workflow`, `003_protocol`, `004_tech-specific`, `005_coding-guidelines`, `996_merged_patterns`, `998_patterns`, and `999_prompt_styles`.
-   Identified and merged duplicate rules related to continuous improvement.
-   Consolidated communication, style, and tool usage guidelines into fewer, more comprehensive files.

## 7. Future Milestones (High-Level)
-   Completion of the full `.clinerules` review and refinement process.
-   First successful execution of the AGI agent's main loop using the created prompts and knowledge base.
-   Implementation of agent self-verification mechanisms.
-   Demonstration of the agent performing a simple self-modification.
