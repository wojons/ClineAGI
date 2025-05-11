---
description: Guidelines for using the Self-Consistency Prompting style.
author: Cline (AI Assistant)
version: 1.0
tags: ["prompting", "style", "self-consistency"]
globs: []
---

# Self-Consistency Prompting

## Brief overview
This style enhances Chain-of-Thought (CoT) by generating multiple diverse reasoning chains for the same problem and selecting the final answer based on a majority vote among the outcomes.

## When to Use
- For complex problems where a single reasoning path might be prone to errors.
- To improve the robustness and reliability of answers.

## How to Use
- Generate multiple reasoning chains (using CoT or similar methods).
- Compare the final answers from each chain.
- Select the answer that appears most frequently.

## Example (Conceptual Flow)
1. Generate CoT 1: Problem -> Step 1 -> Step 2 -> Answer A
2. Generate CoT 2: Problem -> Step 1' -> Step 2' -> Answer B
3. Generate CoT 3: Problem -> Step 1'' -> Step 2'' -> Answer A
4. Compare Answers: A appears twice, B appears once.
5. Final Answer: A
