---
description: Guidelines for using the Task Decomposition Prompting style.
author: Cline (AI Assistant)
version: 1.0
tags: ["prompting", "style", "task-decomposition"]
globs: []
---

# Task Decomposition Prompting

## Brief overview
This style involves explicitly breaking down a complex task into a sequence of simpler steps within the prompt.

## When to Use
- For complex tasks that are too challenging for a single prompt.
- To guide the LLM through a multi-step process.
- To manage the complexity of a workflow.

## How to Use
- Clearly state the overall task.
- List the sub-tasks or steps required to complete the overall task in a clear sequence.
- Provide instructions for completing each step.

## Example
```
Overall Task: Write a Python script to read a CSV file, calculate the average of a specific column, and print the result.

Step 1: Write Python code to read a CSV file.
Step 2: Write Python code to calculate the average of a specific column in the CSV data.
Step 3: Write Python code to print the calculated average.
