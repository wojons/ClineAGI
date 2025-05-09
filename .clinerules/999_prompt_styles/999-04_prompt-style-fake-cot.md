---
description: Guidelines for using the Fake CoT Prompting style.
author: Cline (AI Assistant)
version: 1.0
tags: ["prompting", "style", "fake-cot"]
globs: []
---

# Fake CoT Prompting

## Brief overview
This style involves guiding an LLM to *simulate* a Chain-of-Thought reasoning process, even if the underlying model is not a native CoT reasoner. This is achieved by providing examples of reasoning and explicitly instructing the model to generate its own reasoning steps, often within specific tags.

## When to Use
- When working with LLMs that don't naturally produce CoT but you want to encourage a more structured approach.
- To make the reasoning process transparent for debugging or evaluation, regardless of the model's internal mechanisms.

## How to Use
- Provide examples of the desired reasoning format, including the use of specific tags (e.g., `<cot-thinking>`).
- Explicitly instruct the LLM to generate its reasoning within these tags before providing the final answer.

## Example
```
Evaluate the following options for a programming language based on performance and ease of learning. Options: Python, Rust.

<cot-thinking>
Goal: Choose a programming language balancing performance and ease of learning.
Option 1: Python - Pros: Easy to learn, large community, extensive libraries. Cons: Slower execution compared to compiled languages.
Option 2: Rust - Pros: High performance, memory safety. Cons: Steep learning curve, smaller community/library ecosystem than Python.
Reasoning: The user prioritizes both performance and ease of learning. Python is easier to learn but less performant. Rust is highly performant but harder to learn. For a balance, considering the user's potential need for rapid development and access to libraries, Python might be a better starting point, with performance optimizations considered later if needed.
Conclusion: Python offers a better balance for initial development focusing on ease of learning and library access, despite performance trade-offs.
</cot-thinking>
Selected Language: Python
