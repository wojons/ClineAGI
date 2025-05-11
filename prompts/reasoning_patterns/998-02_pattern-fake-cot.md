---
description: Defines a pattern for simulating a Chain-of-Thought reasoning process.
author: Cline (AI Assistant)
version: 1.0
tags: ["pattern", "reasoning", "workflow", "cot"]
globs: []
---

# Reasoning Pattern: Fake Chain-of-Thought (Fake CoT)

## Brief overview
This pattern guides the AI to simulate a Chain-of-Thought reasoning process within specific tags to promote transparency and structure decision-making.

## Process

1.  **Identify Need for Reasoning:** Determine if the current task requires evaluating options, making a decision, or providing a step-by-step justification.
2.  **Gather Context:** Collect relevant information, available options, and current knowledge related to the decision or problem.
3.  **Simulate Reasoning:** Within `<cot-thinking>` and `</cot-thinking>` tags, write out the step-by-step reasoning process. This should include:
    *   Stating the goal or sub-goal.
    *   Listing and evaluating available options or factors.
    *   Connecting options/factors to relevant knowledge or context.
    *   Justifying the conclusion or decision based on the evaluation.
4.  **State Conclusion:** After the `<cot-thinking>` block, clearly state the final decision or outcome.

## Usage Guidelines

- Use this pattern when transparency in decision-making is beneficial or required.
- This can be used for evaluating multiple options, debugging approaches, or planning complex steps.
- Ensure the reasoning process is logical and clearly explained within the tags.
- The final conclusion should be presented concisely after the reasoning block.

## Example

```markdown
<cot-thinking>
Goal: Choose the best tool for reading a file.
Available Tools: `read_file`, `execute_command` (with `cat`).
Current Knowledge: `read_file` is a dedicated tool for reading files, designed for this purpose and integrates with editor features. `execute_command` is a general shell tool, less integrated, and requires careful handling of paths and output.
Reasoning: The `read_file` tool is specifically designed for file reading, offers better integration with the environment (LSP, etc.), and is generally safer and more efficient for this task compared to using a shell command like `cat` via `execute_command`.
Conclusion: `read_file` is the preferred tool for reading file content.
</cot-thinking>
Selected Tool: `read_file`
