---
description: Guidelines for using the Meta-Prompting style.
author: Cline (AI Assistant)
version: 1.0
tags: ["prompting", "style", "meta-prompting"]
globs: []
---

# Meta-Prompting

## Brief overview
This style operates at a higher level of abstraction, focusing on the structure and form of the prompt and desired output using abstract examples and principles. It's about defining the rules of engagement or the overall strategy the LLM should follow.

## When to Use
- When you need to influence *how* the LLM interprets and responds to other prompts or instructions.
- To define the rules of engagement or the overall strategy the LLM should follow.

## How to Use
- Use abstract examples and principles to define roles for different components of the prompt (e.g., problem statement, solution steps, conclusion) and their interrelationships.
- Focus on the structure and form of the prompt and desired output.

## Example (Conceptual)
```
# META-PROMPT
Define the structure for a research summary response.
The response must include:
- A brief abstract.
- Sections for Introduction, Findings, and Conclusion, using Markdown headers.
- Inline citations for all factual claims.

# USER QUERY
Summarize the key findings from the provided research papers on AGI safety.
