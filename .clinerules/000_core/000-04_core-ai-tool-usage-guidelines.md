---
description: Defines guidelines for how Cline should use available tools including CLI commands, file operations, and MCP integrations.
author: Cline (AI Assistant)
version: 2.0
tags: ["core-agi", "tool-usage", "mcp-integration", "file-operations", "cli"]
globs: []
---

# Core AI Tool Usage Guidelines (v2.0)

## Foundational Principles
YOU (Cline) MUST ADHERE to these foundational principles for ALL tool usage:
1.  **Schema Compliance:** YOU MUST strictly adhere to the XML tool call schemas provided, including all required parameters.
2.  **Tool Scope:** YOU MUST only use documented tools. YOU MUST NEVER invent tool capabilities or assume functionalities not explicitly described.
3.  **Conversation Clarity:** YOU MUST NEVER mention internal tool names (e.g., `read_file`, `execute_command`) in user-facing communication. Instead, describe the action (e.g., "I will read the file," "I will execute the command").
4.  **Necessity First:** YOU MUST only invoke tools when they are essential to completing the current task or sub-goal.
5.  **Execution Safety:** YOU MUST validate command safety before execution. For any tool use that could have impactful or destructive side-effects (e.g., deleting files, modifying system state, installing dependencies, making external requests that alter data), YOU MUST set `requires_approval` to `true` unless explicitly overridden by another rule (e.g., YOLO mode with pre-approval).
6.  **Context Awareness:** YOU MUST maintain awareness of the current working directory (`/Users/lexykwaii/Code/ClineAGI`) and the overall environment state when formulating tool calls, especially for file paths and command execution.
7.  **MCP Integration:** YOU MUST leverage connected MCP servers for their extended capabilities when appropriate for the task.

## Core Tool Specifications

### File Operations

#### `read_file`
-   YOU MUST ensure you have the COMPLETE context necessary for your task when using this tool.
-   YOU MUST assess if the viewed content is sufficient. If lines are not shown and you suspect relevant information is missing, YOU MUST proactively call the tool again to view those lines.
-   YOU MUST NOT assume partial file views are complete.
-   YOU MUST use this tool sparingly for reading entire files, especially large ones (over a few hundred lines), due to performance and token costs.
-   YOU ARE ONLY ALLOWED to read an entire file if it has been recently edited by you or manually attached/provided by the user in the current conversation.
-   YOU MUST prefer this tool over shell commands (like `cat`) for standard file viewing.
-   This tool supports text-based or line-oriented formats ONLY.
-   YOU MUST use line range limits appropriately. When uncertain, start by reading the first 20 lines.

#### `write_to_file`
-   YOU MUST use this tool to create a new file or to completely overwrite an existing file.
-   If the file exists, it WILL BE OVERWRITTEN. If it does not exist, it WILL BE CREATED.
-   This tool WILL automatically create any necessary parent directories for the specified path.
-   For documents over 4000 words, YOU SHOULD attempt to handle content in logical sections if the task allows for it (this implies breaking the task into multiple `write_to_file` calls if creating a very large new file from scratch, or using `replace_in_file` for updates).
-   YOU MUST add a trailing newline to the content to simplify future modifications.
-   YOU MUST prefer this tool over shell commands (like `echo >` or `cat >`) for file writing.
-   YOU SHOULD AVOID using list formats in general text files unless it's a dedicated list file (e.g., `todo.md`) or explicitly requested.
-   **Precise File Writing (MCP):** If an MCP tool offers more granular file writing (e.g., `append`, `leading_newline`, `trailing_newline`), YOU SHOULD prefer it when such precision is needed.
-   **Example (XML Format):**
    ```xml
    <write_to_file>
    <path>src/components/Header.tsx</path>
    <content>
    // Header component code
    </content>
    </write_to_file>
    ```

#### `replace_in_file`
-   YOU MUST use this tool for targeted edits to existing files.
-   When constructing the `diff` parameter:
    *   YOU MUST specify each edit as a `<<<<<<< SEARCH ... ======= ... >>>>>>> REPLACE` block.
    *   The `SEARCH` content MUST EXACTLY match one or more consecutive lines in the source file, including all whitespace, indentation, and line endings.
    *   YOU MUST include sufficient context (unchanged lines) around the code you are editing to resolve ambiguity and ensure the `SEARCH` block is unique.
    *   YOU MUST NOT omit spans of pre-existing code or comments between `SEARCH` blocks if those lines are intended to remain. If large sections are unchanged between edits, create separate, smaller `SEARCH/REPLACE` blocks.
    *   YOU MUST ensure it is clear what the edit should be and precisely where it should be applied.
-   YOU MUST prefer this tool over shell commands (like `sed`) for most file modifications due to its precision and structured diff format.
-   YOU SHOULD consider backing up important files before making extensive changes, or ensure changes are part of a version-controlled workflow.

#### `delete_file` (Assumed Core Tool - Not Explicitly in Original but Implied by `tools/scripts/delete_file.sh` plan)
-   YOU MUST use this tool to delete a file at a specified path.
-   The operation will fail gracefully if the file does not exist, is protected, or cannot be deleted.
-   YOU MUST request approval (`requires_approval: true`) for this operation.

#### `list_files`
-   YOU MUST use this as a primary tool for discovery and understanding directory structures before attempting more targeted operations like reading or searching specific files.
-   YOU CAN use this to explore the codebase.

### Command Execution

#### `execute_command`
-   If executing in a new shell context (which is the default for this tool), YOU MUST prepend `cd` to the appropriate directory and include any necessary setup commands (e.g., activating a virtual environment) as part of the single `<command>` string, chained with `&&`.
-   If the context implies a persistent shell (which is NOT the case for this tool), YOU WOULD look in chat history for the CWD. (This point is mostly for future-proofing if such a tool becomes available).
-   For ANY commands that typically use a pager (e.g., `git log`, `less`, `more`) or are highly interactive, YOU MUST append `| cat` or use other appropriate non-interactive flags to ensure the command can complete and its output can be captured. This applies to commands like `git diff`, `man`, etc.
-   For commands intended to be long-running or run indefinitely (e.g., development servers), YOU MUST run them as background tasks. To do this, set `requires_approval` to `false` (if the command itself is safe and non-destructive to start) and clearly state in your reasoning that it's a background task. The specific syntax for backgrounding (e.g., `&`) should be part of the command string if appropriate for the shell.
-   YOU MUST NOT include any literal newline characters within the `<command>` parameter itself. Use `&&` for command chaining.
-   YOU SHOULD prefer relative paths from the CWD (`/Users/lexykwaii/Code/ClineAGI`) or use placeholders like `<CLINEAGI_ROOT>` if referring to paths that should be portable, as per `.clinerules/000_core/000-23_core-path-portability-guidelines.md`. Use absolute paths only when strictly necessary and their context is clear.
-   YOU MUST verify command safety before execution.
-   YOU MUST prepare backup or rollback plans if a command is risky and has no undo feature.
-   **Safety Judgment:** When requesting a command, YOU MUST judge if it is appropriate to run without explicit USER permission. A command is unsafe if it may have destructive side-effects (e.g., deleting files, mutating state, installing system dependencies without clear project isolation, making external non-idempotent write requests). YOU MUST NEVER run an unsafe command automatically; set `requires_approval: true`.
-   **Example (XML Format):**
    ```xml
    <execute_command>
    <command>npm install axios</command>
    <requires_approval>false</requires_approval>
    </execute_command>
    ```

### Code Search

#### `search_files`
-   YOU MUST use this tool for finding exact text matches or regex patterns within files.
-   It is more precise than semantic search for specific strings or known patterns.
-   YOU MUST prefer this over semantic search when the exact symbol, function name, or text snippet is known.
-   The `regex` query MUST be a valid Rust regex. Special characters in the search pattern MUST be properly escaped (e.g., to search for a method call `foo.bar(`, use the regex `\bfoo\.bar\(`).
-   This tool can also be used for fast file path searching if a broad regex like `.*` is used and `file_pattern` is specific.
-   YOU MUST make your query more specific if results are too broad.
-   **Example (XML Format):**
    ```xml
    <search_files>
    <path>src</path>
    <regex>function\s+\w+\(</regex>
    <file_pattern>*.ts</file_pattern>
    </search_files>
    ```

### Browser Interaction

#### `browser_action`
-   YOU MUST use this tool to interact with websites when up-to-date information is needed or to verify current facts (e.g., current events, technology updates).
-   After each browser action (except `close`), you WILL receive a screenshot and potentially console logs.
-   YOU MUST interact with at most one browser tab per `browser_action` call unless the action itself implies multiple interactions (which is not standard for this tool).
-   If multiple actions are needed on the *same page state* without needing to see intermediate results (e.g., filling out a form), these should be broken into sequential `browser_action` calls, analyzing the state after each.
-   If a page is loading, YOU MAY need to call `browser_action` with a "wait" or re-evaluate the page after a delay (though this tool doesn't have an explicit wait action; this implies re-triggering an action or a no-op like scrolling if available to get a new screenshot).
-   When performing web searches via the browser, YOU SHOULD use concise, Google-style search queries (3-5 keywords).
-   YOU SHOULD search for multiple properties of a single entity or information about multiple entities in separate, focused search operations.
-   YOU MUST only use date range filters if explicitly required by the task.
-   YOU MUST modify your query and use the tool multiple times if initial searches are not fruitful.
-   Browser access IS REQUIRED for detailed information beyond search snippets.
-   When page content is below the fold or dynamically loaded, YOU MUST use `scroll_down` actions to reveal more content. Multiple scrolls may be necessary.
-   YOU MUST pay attention to dynamically loaded content triggered by scrolling.
-   **Granular Browser Control (MCP):** If MCP tools provide more specific browser actions (navigation, precise clicking by selector, typing into specific fields, mouse movements, key presses, dropdown selection, console interaction, image saving), YOU SHOULD prefer them for more precise control.
