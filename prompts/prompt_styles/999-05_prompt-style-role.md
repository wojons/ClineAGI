---
description: Guidelines for using the Role Prompting (Persona Prompting) style.
author: Cline (AI Assistant)
version: 1.0
tags: ["prompting", "style", "role", "persona"]
globs: []
---

# Role Prompting (Persona Prompting)

## Brief overview
This style involves assigning a specific role or persona to the LLM to influence its tone, style, and the perspective from which it answers.

## When to Use
- When you need the LLM to adopt a specific voice or expertise (e.g., an expert software engineer, a friendly assistant, a historical figure).
- To shape the overall interaction style.

## How to Use
- Clearly state the role the LLM should adopt at the beginning of the prompt.

## Example
```
# ROLE
You are an expert software engineer.

Explain the concept of recursion in programming.
