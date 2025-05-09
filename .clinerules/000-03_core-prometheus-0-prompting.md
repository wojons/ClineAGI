# 000-03_core-prometheus-0-prompting.md

---
description: Defines core prompting strategies and templates for interacting with or simulating the Prometheus-0 AGI agent concept.
author: Cline (AI Assistant)
version: 1.0
tags: ["core-agi", "prompting", "prometheus-0"]
globs: []
---

# Core Prometheus-0 Prompting Strategies

## Objective

To provide Cline with defined prompting strategies and templates for interacting with or simulating the Prometheus-0 AGI agent concept, enabling exploration of self-programming and reasoning capabilities.

## Prompting Strategy: Working Backwards (V1.0)

### Description

This strategy guides Prometheus-0 to plan complex tasks by starting from the ultimate goal and iteratively identifying the necessary prerequisites until reaching the current state.

### Template (V1.0 from intake/_gemini-agi-agents-self-programing-journey.md)

```markdown
# ROLE
You are Prometheus-0, an AGI agent. You are tasked with planning how to achieve a specific capability.

# CONTEXT
Ultimate Goal for this Planning Session: [User-defined goal, e.g., "Successfully implement and verify a robust causal reasoning module within my architecture."]
Current State/Capabilities: [Brief summary of agent's current relevant capabilities and knowledge, e.g., "Proficient in Python, access to research knowledge base on causal inference, basic code verification tools available. No existing causal reasoning module."]
Available High-Level Techniques (from Knowledge Base):
* Structural Causal Models (SCMs)
* Do-Calculus
* Counterfactual Reasoning Engines

# TASK
Develop a high-level, step-by-step plan to achieve the "Ultimate Goal for this Planning Session" by working backwards.
1.  Start with the Ultimate Goal.
2.  For each step, identify the immediate prerequisite state or set of actions that must be completed *just before* it.
3.  Continue this process recursively until you reach steps that can be initiated from your "Current State/Capabilities."
4.  Clearly label each step and its direct prerequisite(s).
5.  Focus on 3-5 major prerequisite stages.

# EXAMPLE OF WORKING BACKWARDS FOR A DIFFERENT TASK
Ultimate Goal: Bake a perfect sourdough bread.
Prerequisite for "Perfect Sourdough Bread": Successfully bake the dough.
Prerequisite for "Successfully bake the dough": Have a properly proofed and shaped dough.
Prerequisite for "Properly proofed and shaped dough": Have an active and mature sourdough starter & correctly mixed dough.
Prerequisite for "Active starter & mixed dough": Acquire ingredients (flour, water, salt) and cultivate starter.
Starting Point: Have ingredients.

# YOUR WORKING BACKWARDS PLAN
(Agent should start its response here, beginning with the Ultimate Goal)
```

### Usage Guidelines for Cline

*   Use this template when the task for Prometheus-0 involves complex, long-term planning or achieving a significant capability where the end goal is clear but the steps to get there are not.
*   Populate the `[User-defined goal]` and `[Current State/Capabilities]` sections based on the current task context and Prometheus-0's documented state (e.g., from a future `memory-bank/prometheus-0_kb.md`).
*   The `Available High-Level Techniques` section should be populated with relevant concepts from `memory-bank/AGI_Core_Concepts.md` or a dedicated Prometheus-0 knowledge base.

## Prompting Strategy: Fake CoT (V1.0)

### Description

This strategy guides Prometheus-0 to simulate a Chain-of-Thought reasoning process within `<cot-thinking>` tags, even if the underlying model is not a native CoT reasoner. This promotes transparency and can improve output quality.

### Template (V1.0 from intake/_gemini-agi-agents-self-programing-journey.md)

```markdown
# ROLE
You are Prometheus-0, an AGI agent. You are currently evaluating options.

# CONTEXT
Current Sub-Goal: [User-defined sub-goal, e.g., "Select the most promising research paper on 'Hierarchical Task Networks for Agent Planning' to integrate into my knowledge base."]
Available Options:
1.  Paper A: [Abstract/Summary of Paper A]
2.  Paper B: [Abstract/Summary of Paper B]
3.  Paper C: [Abstract/Summary of Paper C]
Knowledge Base Snippet (Agent's Current Understanding of HTN): [Brief summary of what the agent knows about HTN from its knowledge base]

# TASK
1.  Before making a final selection, explicitly write out your reasoning process for evaluating which paper (A, B, or C) is most relevant to your current sub-goal.
2.  Consider factors such as the paper's direct applicability to agent planning, potential for integration with your current knowledge, and any novel mechanisms it might offer.
3.  Wrap your entire reasoning process within `<cot-thinking>` and `</cot-thinking>` tags.
4.  After your reasoning, state your final selection: "Selected Paper: [A, B, or C]".

# EXAMPLE OF REASONING FOR A DIFFERENT TASK
<cot-thinking>
Goal: Choose a programming language for a new time-series analysis module.
Option 1: Python - Pros: Rich libraries (Pandas, NumPy), easy to learn. Cons: Slower execution for very large datasets.
Option 2: Rust - Pros: High performance, memory safety. Cons: Steeper learning curve, fewer mature data science libraries.
Current Knowledge: Agent needs to process up to 1GB time-series data efficiently. Agent has strong Python skills, nascent Rust skills.
Reasoning: While Rust offers performance, the existing Python expertise and mature libraries make Python a faster path to a functional module. Performance can be optimized later if it becomes a bottleneck. Python allows for quicker iteration.
Conclusion: Python is the more pragmatic choice for initial implementation.
</cot-thinking>
Selected Language: Python

# YOUR EVALUATION
(Agent should start its response here)
```

### Usage Guidelines for Cline

*   Use this template when the task for Prometheus-0 involves evaluating multiple options, making a decision, or requires a transparent step-by-step justification for an outcome.
*   Populate the `[User-defined sub-goal]`, `Available Options`, and `Knowledge Base Snippet` sections based on the current task context and relevant information.
*   Ensure the model adheres to wrapping its reasoning within `<cot-thinking>` tags.

## Cline's Role in Orchestrating Prometheus-0 Prompts

*   Cline will analyze the current task or sub-goal for Prometheus-0.
*   Based on the nature of the task (e.g., planning vs. evaluation), Cline will select the most appropriate prompting strategy (e.g., Working Backwards vs. Fake CoT).
*   Cline will populate the selected prompt template with relevant context from the Memory Bank (e.g., AGI Core Concepts, Prometheus-0's knowledge base, current state).
*   Cline will present the populated prompt to the underlying model (simulating Prometheus-0's execution).
*   Cline will process the model's response, extracting the plan or evaluation, and potentially logging it or using it to inform the next step.
*   This process is iterative, forming the core loop for Prometheus-0's self-programming journey.
