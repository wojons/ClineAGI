---
description: Guidelines for using the Tree-of-Thought (ToT) Prompting style.
author: Cline (AI Assistant)
version: 1.0
tags: ["prompting", "style", "tot"]
globs: []
---

# Tree-of-Thought (ToT) Prompting

## Brief overview
This style extends Chain-of-Thought (CoT) by allowing the model to explore multiple reasoning paths simultaneously in a tree-like structure. The model can generate multiple thoughts or intermediate steps at each stage, evaluate their promise, and decide which paths to explore further (e.g., using search algorithms).

## When to Use
- For complex problems where a single linear reasoning chain might fail.
- When systematic exploration and backtracking are beneficial.
- For problems with multiple possible intermediate steps or solutions.

## How to Use
- Instruct the LLM to generate multiple intermediate thoughts or steps at each stage.
- Guide the LLM to evaluate the promise of each path.
- Potentially incorporate search algorithms (though this may require external orchestration).

## Example (Conceptual Flow)
1. Problem: Solve complex puzzle.
2. Thought 1.1: Try strategy A.
3. Thought 1.2: Try strategy B.
4. Evaluate 1.1 vs 1.2: Strategy A seems more promising.
5. Thought 2.1 (from 1.1): Step 1 of strategy A.
6. Thought 2.2 (from 1.1): Step 2 of strategy A.
7. Evaluate 2.1 vs 2.2: Step 1 seems correct.
8. Continue exploring path 2.1...
