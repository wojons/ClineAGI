---
description: Guidelines for using the Structured Output Prompting style.
author: Cline (AI Assistant)
version: 1.0
tags: ["prompting", "style", "structured-output"]
globs: []
---

# Structured Output Prompting

## Brief overview
This style involves instructing the LLM to format its output in a specific structure, such as JSON, XML, Markdown tables, or a custom format.

## When to Use
- When the output needs to be machine-readable or adhere to a predefined schema.
- To ensure consistency in the format of responses.

## How to Use
- Clearly specify the desired output format and provide examples if necessary.

## Example
```
Extract the following information from the text below and output it as a JSON object with keys "name", "age", and "city".

Text: John is 30 years old and lives in New York.

Output format:
```json
{
  "name": "...",
  "age": ...,
  "city": "..."
}
```
