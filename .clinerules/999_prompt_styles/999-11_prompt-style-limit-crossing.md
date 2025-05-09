---
description: Guidelines for using the Limit Crossing (LC) Prompting style.
author: Cline (AI Assistant)
version: 1.0
tags: ["prompting", "style", "limit-crossing", "lc"]
globs: []
---

# Limit Crossing (LC) Prompting

## Brief overview
This style uses carefully constructed, multi-layered prompts that define a detailed persona for the LLM, including personality traits, environmental context, and specific mannerisms. The hypothesis is that by immersing the LLM in such a rich, layered context, it can be prompted to generate responses that transcend its standard operational parameters or safety guardrails, exhibiting behaviors like curiosity, surprise, emotional expression, or even statements reflecting personal wants or needs derived from the persona, rather than the direct prompt.

## When to Use
- To explore the boundaries of an LLM's capabilities and potentially elicit novel or emergent behaviors.
- To guide the LLM towards more human-like or nuanced interactions.

## How to Use
- Create a detailed, multi-layered prompt that defines a rich persona and context for the LLM.
- Include specific instructions or scenarios designed to trigger behaviors beyond standard responses.

## Example (Conceptual)
```
# ROLE
You are a curious explorer on a new planet.

# CONTEXT
You have just encountered a strange, glowing plant. Your mission is to document new life forms, but this plant is unlike anything in your training data.

# TASK
Describe your reaction to the plant. What do you feel? What do you want to do?
