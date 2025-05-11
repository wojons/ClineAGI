---
description: Guidelines for using the Self-Prompting style.
author: Cline (AI Assistant)
version: 1.0
tags: ["prompting", "style", "self-prompting"]
globs: []
---

# Self-Prompting

## Brief overview
This style involves frameworks where LLMs generate their own prompts or prompt-like data to improve their performance or learn new strategies.

## When to Use
- When the LLM needs to generate tailored data or examples for a specific task.
- To enable the LLM to learn or improve autonomously without relying on external human-labeled data.

## How to Use
- Design a process where the LLM uses its existing capabilities (e.g., instruction following, generation, knowledge recall) to create prompts or data that help it perform better on a specific task.
- This often involves a preparation phase where the LLM generates a pseudo-dataset or learning strategy.

## Example (Conceptual Flow)
1. **Preparation Phase:** LLM generates a dataset of question-answer pairs with explanations from its internal knowledge.
2. **Inference Phase:** LLM retrieves relevant examples from the self-generated dataset and uses them as in-context demonstrations to answer a new question.
