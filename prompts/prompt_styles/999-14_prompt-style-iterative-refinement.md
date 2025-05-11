---
description: Guidelines for using the Iterative Refinement Prompting style.
author: Cline (AI Assistant)
version: 1.0
tags: ["prompting", "style", "iterative-refinement"]
globs: []
---

# Iterative Refinement Prompting

## Brief overview
This style involves engaging in a dialogue with the LLM to refine its initial response or output through a series of follow-up prompts.

## When to Use
- When the initial response is not entirely satisfactory or requires further detail, clarification, or correction.
- When the task is complex and best addressed through a back-and-forth process.
- To guide the LLM towards a more precise or nuanced understanding of the requirements.

## How to Use
- Provide the initial prompt and receive the LLM's response.
- Analyze the response and provide a follow-up prompt that specifies the desired changes or areas for improvement.
- Continue the dialogue, providing feedback and guidance with each turn, until the desired output is achieved.

## Example
```
User: Explain the concept of recursion.

AI: Recursion is a programming technique where a function calls itself... (provides basic explanation)

User: That's a good start, but can you provide a simple code example in Python?

AI: Sure, here's a Python example of a recursive factorial function... (provides code)

User: Thanks, now can you also explain the potential drawbacks of recursion, like stack overflow?

AI: Yes, recursion can lead to stack overflow errors if the recursion depth is too large... (explains drawbacks)
