---
description: Guidelines for using the Prompt Chaining/Decomposition Prompting style.
author: Cline (AI Assistant)
version: 1.0
tags: ["prompting", "style", "prompt-chaining", "decomposition"]
globs: []
---

# Prompt Chaining/Decomposition Prompting

## Brief overview
This style involves breaking a complex task into a sequence of simpler prompts, where the output of one prompt serves as the input or context for the next prompt. This is often orchestrated by an external system or agent.

## When to Use
- For complex, multi-step tasks that are too challenging for a single prompt.
- To manage the complexity of a workflow and allow for intermediate checks or actions.

## How to Use
- Design a sequence of prompts, where each prompt builds upon the previous one.
- Use an external system to manage the flow and pass information between prompts.

## Example (Conceptual Flow)
1. **Prompt 1 (Task Decomposition):** Given a high-level goal, break it down into smaller steps.
2. **Prompt 2 (Information Gathering):** Based on Step 1, identify necessary information and formulate search queries.
3. **Prompt 3 (Synthesis):** Given search results from Step 2, synthesize the information to address the current sub-goal.
4. **Prompt 4 (Code Generation):** Based on the synthesized information from Step 3, generate code for a specific module.
5. **Prompt 5 (Verification):** Given the generated code from Step 4, write unit tests or perform static analysis.
