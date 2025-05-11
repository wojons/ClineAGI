# Prompt Inventory

This inventory lists all dynamically loadable prompts, patterns, workflows, and guides.
The system uses this inventory to select and load relevant prompts based on user queries and task context.

```yaml
# Dynamic loading rules:
# 1. Match user query against 'name', 'description', and 'triggers'.
# 2. Prioritize matches based on relevance score and 'weight'.
# 3. Load the content of the matched prompt file.
# 4. Cache frequently used prompts.
# 5. Consider 'type' for context-specific loading (e.g., load 'tech_specific_guide' if a relevant technology is mentioned).

prompts:
  # Core Workflows (Migrated from .clinerules/000_core)
  - name: "Core Intake Processing Workflow"
    path: "prompts/core_workflows/000-02_workflow-intake-processing.md"
    type: "core_workflow"
    description: "Defines the automated workflow for processing files placed in the intake/ directory."
    triggers: ["intake", "file processing", "automation", "knowledge capture", "new information"]
    weight: 8

  # Reference Documents (Migrated from .clinerules/001_reference)
  - name: "Cline Extension Architecture & Development Guide"
    path: "prompts/reference_documents/001-00_reference-cline-extension-architecture.md"
    type: "reference_document"
    description: "Comprehensive overview of the Cline VSCode extension architecture, components, state management, API integration, task execution, Plan/Act modes, and MCP integration."
    triggers: ["architecture", "extension", "vscode", "development guide", "webview", "controller", "task state", "api providers", "mcp integration", "cline internals"]
    weight: 7
  - name: "Community Contributing Guide for .clinerules"
    path: "prompts/reference_documents/001-01_reference-community-contributing-guide.md"
    type: "reference_document"
    description: "Guide for community contributions to the .clinerules repository."
    triggers: ["contributing", "contribution guide", "clinerules repository", "community", "open source"]
    weight: 5
  - name: "Comprehensive Software Engineering Best Practices (Gemini Guide)"
    path: "prompts/reference_documents/001-02_reference-gemini-comprehensive-software-engineering-guide.md"
    type: "reference_document"
    description: "An extensive guide covering software engineering best practices, including architecture, debugging, development processes, code quality, collaboration, and security."
    triggers: ["software engineering", "best practices", "architecture", "debugging", "agile", "devops", "code quality", "clean code", "security", "reliability", "development principles"]
    weight: 7
  - name: "Writing Effective .clinerules"
    path: "prompts/reference_documents/001-03_reference-writing-effective-clinerules.md"
    type: "reference_document"
    description: "Guidelines and best practices for creating effective .clinerules to guide Cline's behavior, knowledge, and workflows."
    triggers: ["clinerules", "writing guidelines", "best practices", "meta rule", "documentation style", "prompt engineering"]
    weight: 6
  - name: "Agent Knowledge Base Summary"
    path: "prompts/reference_documents/001-04_reference-agent-knowledge-base-summary.md"
    type: "reference_document"
    description: "Synthesizes key research findings on AGI, LLMs, planning, reasoning, verification, self-modification, prompt engineering, agent architecture, and ethics."
    triggers: ["agi", "llm", "planning", "reasoning", "verification", "self-modification", "prompt engineering", "agent architecture", "ethics", "knowledge base", "ai research"]
    weight: 7

  # Workflows (Migrated from .clinerules/002_workflow)
  - name: "Cline for Research Assistant Workflow"
    path: "prompts/workflows/002-00_workflow-cline-for-research.md"
    type: "workflow"
    description: "Guides the user through a research process using available MCP tools, offering choices for refinement, method, and output."
    triggers: ["research", "mcp", "serper", "perplexity", "firecrawl", "web search", "information gathering", "find information"]
    weight: 7
  - name: "Todo List Workflow"
    path: "prompts/workflows/002-03_workflow-todo-list.md"
    type: "workflow"
    description: "Defines the workflow for using a todo.md file for task tracking."
    triggers: ["todo", "task tracking", "checklist", "progress management", "manage tasks"]
    weight: 6
  - name: "Agility Story Workflow"
    path: "prompts/workflows/002-04_workflow-agility-story.md"
    type: "workflow"
    description: "Defines the process for using the 'agility story' pattern to generate user stories and acceptance criteria in JSON format."
    triggers: ["agile", "user story", "acceptance criteria", "json output", "software development", "requirements"]
    weight: 6
  - name: "Analyze Comments Workflow"
    path: "prompts/workflows/002-05_workflow-analyze-comments.md"
    type: "workflow"
    description: "Defines the process for using the 'analyze comments' pattern to evaluate internet comments, characterizing sentiments, praise, and criticisms."
    triggers: ["analyze comments", "sentiment analysis", "comment evaluation", "feedback analysis", "review comments"]
    weight: 6
  - name: "Create 5 Sentence Summary Workflow"
    path: "prompts/workflows/002-06_workflow-create-5-sentence-summary.md"
    type: "workflow"
    description: "Defines the process for using the 'create 5 sentence summary' pattern to generate concise summaries at 5 different levels of depth."
    triggers: ["summary", "summarize", "concise summary", "multi-level summary", "short summary"]
    weight: 6
  - name: "Extract Jokes Workflow"
    path: "prompts/workflows/002-07_workflow-extract-jokes.md"
    type: "workflow"
    description: "Defines the process for using the 'extract jokes' pattern to extract jokes from text content."
    triggers: ["extract jokes", "find jokes", "humor analysis", "text analysis", "funny"]
    weight: 5

  # Protocols (Migrated from .clinerules/003_protocol)
  - name: "MCP Server Development Protocol"
    path: "prompts/protocols/003-00_protocol-mcp-development.md"
    type: "protocol"
    description: "Defines the protocol for MCP server development, including planning, implementation, and testing."
    triggers: ["mcp", "mcp server", "model context protocol", "tool development", "sdk", "create mcp"]
    weight: 7

  # Tech Specific Guides (Migrated from .clinerules/002_workflow)
  - name: "Slidev Project Instructions Guide"
    path: "prompts/tech_specific_guides/002-01_guide-slidev-projects.md"
    type: "tech_specific_guide"
    description: "Provides guidelines for working with Slidev projects, covering core concepts, structure, key features, syntax, development workflow, and best practices."
    triggers: ["slidev", "presentations", "slides", "markdown presentations", "vue", "vite", "create presentation"]
    weight: 6

  # Merged Patterns (Migrated from .clinerules/996_merged_patterns)
  - name: "Merged Pattern: Summarize Content"
    path: "prompts/merged_patterns/996-00_summarize-content.md"
    type: "merged_pattern"
    description: "A merged pattern for summarizing various types of content, outlining identity, goal, steps, output sections, and use cases."
    triggers: ["summarize", "summary", "content summarization", "text distillation", "key points", "takeaways", "abstract"]
    weight: 8
  - name: "Merged Pattern: Analyze Content"
    path: "prompts/merged_patterns/996-01_analyze-content.md"
    type: "merged_pattern"
    description: "A merged pattern for analyzing various types of content, outlining identity, goal, steps, output sections, and use cases."
    triggers: ["analyze", "analysis", "evaluate", "critique", "assess risk", "review content", "investigate"]
    weight: 8
  - name: "Merged Pattern: Create Content"
    path: "prompts/merged_patterns/996-02_create-content.md"
    type: "merged_pattern"
    description: "A merged pattern for generating various types of content (code, reports, documents, visualizations, etc.)."
    triggers: ["create content", "generate code", "write report", "document generation", "visualization", "make", "build"]
    weight: 8
  - name: "Merged Pattern: Extract Information"
    path: "prompts/merged_patterns/996-03_extract-information.md"
    type: "merged_pattern"
    description: "A merged pattern for extracting various types of information from content."
    triggers: ["extract information", "data extraction", "find details", "pull data", "get information"]
    weight: 7
  - name: "Merged Pattern: Visualize Data/Concepts"
    path: "prompts/merged_patterns/996-04_visualize-data-concepts.md"
    type: "merged_pattern"
    description: "A merged pattern for visualizing data and concepts using formats like diagrams, graphs, and charts."
    triggers: ["visualize", "diagram", "chart", "graph", "mermaid", "markmap", "graphviz", "ascii art", "show data"]
    weight: 7
  - name: "Merged Pattern: Improve/Refine Content"
    path: "prompts/merged_patterns/996-05_improve-refine-content.md"
    type: "merged_pattern"
    description: "A merged pattern for enhancing and refining existing content (text, code, documentation, etc.)."
    triggers: ["improve content", "refine text", "enhance code", "edit document", "optimize", "fix content"]
    weight: 7
  - name: "Merged Pattern: Utility/Helper Tasks"
    path: "prompts/merged_patterns/996-06_utility-helper-tasks.md"
    type: "merged_pattern"
    description: "A merged pattern for performing general utility and helper tasks."
    triggers: ["utility task", "helper task", "clean text", "generate tags", "compare items", "assist"]
    weight: 6

  # Output Patterns (Migrated from .clinerules/998_patterns)
  - name: "Structured Research Report Pattern"
    path: "prompts/output_patterns/998-00_pattern-structured-research-report.md"
    type: "output_pattern"
    description: "Defines a pattern for generating structured research reports, including guidelines for structure, style, citations, and special formats."
    triggers: ["research report", "academic paper", "formal report", "structured output", "write research"]
    weight: 7

  # Planning Patterns (Migrated from .clinerules/998_patterns)
  - name: "Planning Pattern: Working Backwards"
    path: "prompts/planning_patterns/998-01_pattern-planning-working-backwards.md"
    type: "planning_pattern"
    description: "Defines a planning pattern for breaking down complex tasks by working backwards from the goal."
    triggers: ["planning", "task breakdown", "working backwards", "strategy", "complex task", "plan task"]
    weight: 7

  # Reasoning Patterns (Migrated from .clinerules/998_patterns)
  - name: "Reasoning Pattern: Fake Chain-of-Thought (Fake CoT)"
    path: "prompts/reasoning_patterns/998-02_pattern-fake-cot.md"
    type: "reasoning_pattern"
    description: "Defines a pattern for simulating a Chain-of-Thought reasoning process within specific tags to promote transparency and structure decision-making."
    triggers: ["reasoning", "chain of thought", "cot", "decision making", "justification", "explain thought process"]
    weight: 7

  # Existing Prompt Style Definitions (from .clinerules/999_00_prompt_inventory.md, to be individually loadable)
  # These will point to files in prompts/prompt_styles/
  - name: "Zero-Shot Prompting Style"
    path: "prompts/prompt_styles/999-01_prompt-style-zero-shot.md"
    type: "prompt_style_guide"
    description: "Guidelines for using the Zero-Shot Prompting style."
    triggers: ["zero-shot", "direct prompting", "prompt style"]
    weight: 5
  - name: "Few-Shot Prompting Style (In-Context Learning - ICL)"
    path: "prompts/prompt_styles/999-02_prompt-style-few-shot.md"
    type: "prompt_style_guide"
    description: "Guidelines for using the Few-Shot Prompting (In-Context Learning - ICL) style."
    triggers: ["few-shot", "in-context learning", "icl", "example-based prompting", "prompt style"]
    weight: 6
  - name: "Chain-of-Thought (CoT) Prompting Style"
    path: "prompts/prompt_styles/999-03_prompt-style-cot.md"
    type: "prompt_style_guide"
    description: "Guidelines for using the Chain-of-Thought (CoT) Prompting style."
    triggers: ["chain of thought", "cot", "step-by-step reasoning", "prompt style"]
    weight: 7
  - name: "Fake CoT Prompting Style" # This is distinct from the reasoning pattern above, this is about the *style*
    path: "prompts/prompt_styles/999-04_prompt-style-fake-cot.md"
    type: "prompt_style_guide"
    description: "Guidelines for using the Fake CoT Prompting style."
    triggers: ["fake cot", "simulated reasoning", "prompt style"]
    weight: 6
  - name: "Role Prompting Style (Persona Prompting)"
    path: "prompts/prompt_styles/999-05_prompt-style-role.md"
    type: "prompt_style_guide"
    description: "Guidelines for using the Role Prompting (Persona Prompting) style."
    triggers: ["role prompting", "persona prompting", "act as", "prompt style"]
    weight: 6
  - name: "Structured Output Prompting Style"
    path: "prompts/prompt_styles/999-06_prompt-style-structured-output.md"
    type: "prompt_style_guide"
    description: "Guidelines for using the Structured Output Prompting style."
    triggers: ["structured output", "json output", "yaml output", "formatted output", "prompt style"]
    weight: 7
  - name: "Self-Consistency Prompting Style"
    path: "prompts/prompt_styles/999-07_prompt-style-self-consistency.md"
    type: "prompt_style_guide"
    description: "Guidelines for using the Self-Consistency Prompting style."
    triggers: ["self-consistency", "multiple reasoning paths", "robust prompting", "prompt style"]
    weight: 7
  - name: "Tree-of-Thought (ToT) Prompting Style"
    path: "prompts/prompt_styles/999-08_prompt-style-tot.md"
    type: "prompt_style_guide"
    description: "Guidelines for using the Tree-of-Thought (ToT) Prompting style."
    triggers: ["tree of thought", "tot", "complex problem solving", "prompt style"]
    weight: 8
  - name: "Meta-Prompting Style"
    path: "prompts/prompt_styles/999-09_prompt-style-meta-prompting.md"
    type: "prompt_style_guide"
    description: "Guidelines for using the Meta-Prompting style."
    triggers: ["meta-prompting", "prompt generation", "prompt style"]
    weight: 7
  - name: "Self-Prompting Style"
    path: "prompts/prompt_styles/999-10_prompt-style-self-prompting.md"
    type: "prompt_style_guide"
    description: "Guidelines for using the Self-Prompting style."
    triggers: ["self-prompting", "autonomous learning", "prompt style"]
    weight: 7
  - name: "Limit Crossing (LC) Prompting Style"
    path: "prompts/prompt_styles/999-11_prompt-style-limit-crossing.md"
    type: "prompt_style_guide"
    description: "Guidelines for using the Limit Crossing (LC) Prompting style."
    triggers: ["limit crossing", "lc prompting", "advanced prompting", "prompt style"]
    weight: 6
  - name: "Task Decomposition Prompting Style"
    path: "prompts/prompt_styles/999-12_prompt-style-task-decomposition.md"
    type: "prompt_style_guide"
    description: "Guidelines for using the Task Decomposition Prompting style."
    triggers: ["task decomposition", "sub-tasking", "prompt style"]
    weight: 7
  - name: "Constrained Prompting Style"
    path: "prompts/prompt_styles/999-13_prompt-style-constrained-prompting.md"
    type: "prompt_style_guide"
    description: "Guidelines for using the Constrained Prompting style."
    triggers: ["constrained prompting", "rule-based prompting", "prompt style"]
    weight: 6
  - name: "Iterative Refinement Prompting Style"
    path: "prompts/prompt_styles/999-14_prompt-style-iterative-refinement.md"
    type: "prompt_style_guide"
    description: "Guidelines for using the Iterative Refinement Prompting style."
    triggers: ["iterative refinement", "feedback loop", "prompt style"]
    weight: 7
  - name: "Contextual Prompting Style"
    path: "prompts/prompt_styles/999-15_prompt-style-contextual-prompting.md"
    type: "prompt_style_guide"
    description: "Guidelines for using the Contextual Prompting style."
    triggers: ["contextual prompting", "context awareness", "prompt style"]
    weight: 7
  - name: "Self-Correction/Reflection Prompting Style"
    path: "prompts/prompt_styles/999-16_prompt-style-self-correction.md"
    type: "prompt_style_guide"
    description: "Guidelines for using the Self-Correction/Reflection Prompting style."
    triggers: ["self-correction", "reflection", "error handling prompting", "prompt style"]
    weight: 7
  - name: "Prompt Chaining/Decomposition Prompting Style"
    path: "prompts/prompt_styles/999-17_prompt-style-prompt-chaining.md"
    type: "prompt_style_guide"
    description: "Guidelines for using the Prompt Chaining/Decomposition Prompting style."
    triggers: ["prompt chaining", "prompt decomposition", "multi-step prompting", "prompt style"]
    weight: 7
  - name: "Ontology-Driven Prompting Style"
    path: "prompts/prompt_styles/999-18_prompt-style-ontology-driven.md"
    type: "prompt_style_guide"
    description: "Guidelines for using the Ontology-Driven Prompting style."
    triggers: ["ontology-driven prompting", "knowledge graph prompting", "semantic prompting", "prompt style"]
    weight: 7

  # Use Cases (from prompts/use_cases/)
  - name: "General Brainstorming & Idea Listing Use Case"
    path: "prompts/use_cases/content-creation-and-management/brainstorming-idea-generation/general-brainstorming-idea-listing.md"
    type: "use_case_guide"
    description: "Defines a use case for generating a diverse list of ideas, concepts, or solutions related to a user-provided topic."
    triggers: ["brainstorming", "idea generation", "idea listing", "creative thinking", "problem solving ideas"]
    weight: 7
  - name: "Mind Map Generation (Text-Based Outline) Use Case"
    path: "prompts/use_cases/content-creation-and-management/brainstorming-idea-generation/mind-map-generation-text-based-outline.md"
    type: "use_case_guide"
    description: "Defines a use case for generating a hierarchical, text-based outline representing a mind map structure."
    triggers: ["mind map", "text outline", "hierarchical list", "idea organization", "brainstorming structure"]
    weight: 7
  - name: "Pros and Cons List Generation Use Case"
    path: "prompts/use_cases/content-creation-and-management/brainstorming-idea-generation/pros-cons-list-generation.md"
    type: "use_case_guide"
    description: "Defines a use case for generating a balanced list of potential advantages (pros) and disadvantages (cons) for a given topic or decision."
    triggers: ["pros and cons", "advantages disadvantages", "decision making", "evaluation list", "compare options"]
    weight: 7
  - name: "SWOT Analysis Generation Use Case"
    path: "prompts/use_cases/content-creation-and-management/brainstorming-idea-generation/swot-analysis-generation.md"
    type: "use_case_guide"
    description: "Defines a use case for generating a structured SWOT analysis (Strengths, Weaknesses, Opportunities, Threats)."
    triggers: ["swot analysis", "strategic planning", "business analysis", "strengths weaknesses opportunities threats"]
    weight: 7
  - name: "Algorithm Implementation from Pseudocode/Description Use Case"
    path: "prompts/use_cases/content-creation-and-management/code-generation-software-development/algorithm-implementation-from-pseudocode.md"
    type: "use_case_guide"
    description: "Defines a use case for translating a given algorithm, described in pseudocode or natural language, into functional code in a specified programming language."
    triggers: ["algorithm implementation", "pseudocode to code", "code generation", "logic translation"]
    weight: 8
  - name: "API Endpoint Implementation Use Case"
    path: "prompts/use_cases/content-creation-and-management/code-generation-software-development/api-endpoint-implementation.md"
    type: "use_case_guide"
    description: "Defines a use case for generating server-side code for a specific API endpoint (REST or GraphQL)."
    triggers: ["api endpoint", "rest api", "graphql api", "server-side code", "backend development"]
    weight: 8
  - name: "Boilerplate Code Generation Use Case"
    path: "prompts/use_cases/content-creation-and-management/code-generation-software-development/boilerplate-code-generation.md"
    type: "use_case_guide"
    description: "Defines a use case for generating initial boilerplate code for a new project, module, component, or file."
    triggers: ["boilerplate code", "starter project", "scaffolding", "project setup", "new module"]
    weight: 8
  - name: "Code Refactoring & Optimization Suggestions Use Case"
    path: "prompts/use_cases/content-creation-and-management/code-generation-software-development/code-refactoring-optimization-suggestions.md"
    type: "use_case_guide"
    description: "Defines a use case for analyzing source code and providing suggestions for refactoring or optimization."
    triggers: ["code refactoring", "code optimization", "improve code", "code review", "performance tuning"]
    weight: 8
  - name: "Code Snippet Generation Use Case"
    path: "prompts/use_cases/content-creation-and-management/code-generation-software-development/code-snippet-generation.md"
    type: "use_case_guide"
    description: "Defines a use case for generating a functional code snippet to perform a specific task or demonstrate a feature."
    triggers: ["code snippet", "sample code", "generate function", "example code"]
    weight: 8
  - name: "Configuration File Generation Use Case"
    path: "prompts/use_cases/content-creation-and-management/code-generation-software-development/configuration-file-generation.md"
    type: "use_case_guide"
    description: "Defines a use case for generating content for various types of configuration files (Dockerfiles, .gitignore, CI/CD, linters)."
    triggers: ["configuration file", "dockerfile", "gitignore", "ci cd pipeline", "linter config", "settings file"]
    weight: 8
  - name: "Database Schema Generation (SQL DDL) Use Case"
    path: "prompts/use_cases/content-creation-and-management/code-generation-software-development/database-schema-generation-sql-ddl.md"
    type: "use_case_guide"
    description: "Defines a use case for generating SQL DDL statements for creating or modifying database schemas."
    triggers: ["database schema", "sql ddl", "create table", "database design", "data modeling"]
    weight: 8

  # Placeholder for Project Type Specific Guidance (from .clinerules/999_00_prompt_inventory.md)
  # These will point to files in prompts/project_types/
  # Example:
  # - name: "Web Server Project Guidance"
  #   path: "prompts/project_types/web-server-project.md" # Assuming this file exists or will be created
  #   type: "project_type_guide"
  #   description: "Guidance for developing web server projects."
  #   triggers: ["web server", "backend", "api development", "project type"]
  #   weight: 7

  # Placeholder for Use Cases (from .clinerules/999_01_use_case_inventory.md)
  # These will point to files in prompts/use_cases/
  # Example:
  # - name: "Comprehensive Blog Post/Article Creation Use Case"
  #   path: "prompts/use_cases/content-creation-and-management/long-form-written-content-generation-and-augmentation/comprehensive-blog-post-article-creation.md" # Assuming this file exists or will be created
  #   type: "use_case_guide"
  #   description: "Detailed prompt and guidance for creating comprehensive blog posts or articles."
  #   triggers: ["blog post", "article writing", "long-form content", "content creation"]
  #   weight: 7
