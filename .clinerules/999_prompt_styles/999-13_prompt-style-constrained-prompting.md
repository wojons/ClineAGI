---
description: Guidelines for using the Constrained Prompting style.
author: Cline (AI Assistant)
version: 1.0
tags: ["prompting", "style", "constrained-prompting"]
globs: []
---

# Constrained Prompting

## Brief overview
This style involves setting specific output requirements or formats for the LLM to adhere to.

## When to Use
- When the output needs to follow a strict format (e.g., character limit, specific keywords, grammatical structure).
- To ensure the LLM's response fits within predefined boundaries or templates.

## How to Use
- Clearly state the constraints the LLM must follow in its output.
- Use negative constraints (e.g., "Do not use the word X") if necessary, but be mindful that negative constraints can sometimes be challenging for LLMs.

## Example
```
Summarize the following article in exactly three sentences, focusing only on the main findings.

Article: [Insert article text here]
