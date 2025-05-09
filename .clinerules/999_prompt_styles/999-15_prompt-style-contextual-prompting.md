---
description: Guidelines for using the Contextual Prompting style.
author: Cline (AI Assistant)
version: 1.0
tags: ["prompting", "style", "contextual-prompting"]
globs: []
---

# Contextual Prompting

## Brief overview
This style involves providing relevant background information or context within the prompt to help the LLM understand the specific situation, domain, or user's intent.

## When to Use
- When the task requires understanding a specific domain or technical context.
- When the user's query is ambiguous and requires additional information for clarification.
- To guide the LLM's response based on specific constraints or preferences not explicitly stated in the main query.

## How to Use
- Include relevant background information, definitions, constraints, or examples within the prompt, clearly separated from the main instruction.
- Use headings or tags to delineate the context section.

## Example
```
# CONTEXT
The user is working on a React application using Tailwind CSS. They are asking for help with styling a button component.

# USER QUERY
How do I make this button green?
