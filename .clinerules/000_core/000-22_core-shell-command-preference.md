---
description: Defines a preference for using bash and shell commands for certain tasks.
author: Cline (AI Assistant)
version: 1.0
tags: ["workflow", "tool-usage", "shell"]
globs: []
---

## Brief overview
This rule outlines a preference for utilizing bash and shell commands for certain tasks, particularly those involving multi-file operations or complex data processing, recognizing the power and efficiency of these long-standing tools.

## Shell command usage
- For tasks requiring reading or processing multiple files, prefer using `execute_command` with standard shell utilities like `cat`, `grep`, `awk`, etc., as these can be more efficient than dedicated file tools in some scenarios.
- Acknowledge the extensive history and proven effectiveness of Linux command-line tools for complex operations.
- When dedicated tools encounter difficulties or limitations, consider leveraging `execute_command` with appropriate shell commands as an alternative approach.
