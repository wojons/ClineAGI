---
description: Guidelines for using the Zero-Shot Prompting style.
author: Cline (AI Assistant)
version: 1.0
tags: ["prompting", "style", "zero-shot"]
globs: []
---

# Zero-Shot Prompting

## Brief overview
This style involves asking the LLM to perform a task directly without providing any examples in the prompt. It relies solely on the model's pre-trained knowledge and ability to follow instructions.

## When to Use
- For simple, straightforward tasks that the LLM is expected to handle based on its general training.
- When you want a quick answer without needing a specific format or detailed reasoning process.
- When testing the LLM's baseline understanding of a concept or instruction before applying more complex prompting.

## How to Use
- Provide a clear, concise, and unambiguous instruction or question.
- Avoid complex phrasing, jargon, or implicit assumptions that the model might not understand without context or examples.
- Ensure the task is well within the expected capabilities of a general-purpose language model.

## Example
```
Translate the following English sentence to French: "Hello, how are you?"
```
Translate the following English sentence to French: "Hello, how are you?"
