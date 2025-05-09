---
description: Guidelines for using the Chain-of-Thought (CoT) Prompting style.
author: Cline (AI Assistant)
version: 1.0
tags: ["prompting", "style", "cot"]
globs: []
---

# Chain-of-Thought (CoT) Prompting

## Brief overview
This style involves encouraging the LLM to break down a problem into intermediate reasoning steps before providing the final answer. This makes the LLM's thinking process more explicit and can improve accuracy on complex tasks.

## When to Use
- For tasks requiring multi-step reasoning, logic, or calculations.
- When you want to understand the LLM's reasoning process.
- To improve the reliability of answers on challenging problems.

## How to Use
- Include instructions like "Let's think step by step," "Think aloud," or provide examples that show the step-by-step reasoning.
- You can use specific tags to delineate the thinking process.

## Example (using XML tags for thinking)
```
Calculate the final price after a 10% discount on an item costing $100.

<thinking>
1. Identify the original price: $100.
2. Identify the discount percentage: 10%.
3. Calculate the discount amount: 10% of $100 = 0.10 * $100 = $10.
4. Calculate the final price: Original price - Discount amount = $100 - $10 = $90.
</thinking>
The final price is $90.
