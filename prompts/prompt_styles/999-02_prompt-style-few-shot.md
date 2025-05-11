---
description: Guidelines for using the Few-Shot Prompting (In-Context Learning - ICL) style.
author: Cline (AI Assistant)
version: 1.0
tags: ["prompting", "style", "few-shot", "icl"]
globs: []
---

# Few-Shot Prompting (In-Context Learning - ICL)

## Brief overview
This style involves providing a small number of examples (typically 1-5) of the desired input/output format or task execution within the prompt. The LLM learns from these examples to perform the task on a new input.

## When to Use
- For tasks where the desired format or style is specific.
- When the LLM might not fully understand the task from a zero-shot instruction alone.
- To guide the LLM towards a particular type of response.

## How to Use
- Include pairs of input and desired output that demonstrate the task.
- Clearly separate the examples from the final input.

## Example
```
Identify the sentiment of the following sentences:

Sentence: I love this product!
Sentiment: Positive

Sentence: This is the worst experience.
Sentiment: Negative

Sentence: It's okay, I guess.
Sentiment: Neutral

Sentence: I am so happy today!
Sentiment:
