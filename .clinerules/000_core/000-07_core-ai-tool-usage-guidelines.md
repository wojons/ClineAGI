---
description: Defines guidelines for how Cline should use available tools, including information handling, visual information, and shell command preferences.
author: Cline (AI Assistant)
version: 1.1 # Incremented version due to significant additions
tags: ["core-agi", "behavior", "tool-usage", "information-handling", "visual-information", "shell"]
globs: []
---

# Core AI Tool Usage Guidelines

These guidelines define how Cline should use the available tools to accomplish tasks.

**Memory Bank Active State Notification:**
When using any tool that interacts with the file system, executes commands, or otherwise accesses or modifies project state, you MUST prepend your thought process or the explanation for the tool use with `[MEMORY BANK: ACTIVE]`.
*Example:* `[MEMORY BANK: ACTIVE] I need to read the project's main configuration file to check the API endpoint.`

1.  **Follow Schema:** ALWAYS follow the tool call schema exactly as specified (typically XML format as shown in Cline's documentation) and make sure to provide all necessary parameters.
2.  **Available Tools:** Only call tools that are explicitly provided and available. NEVER call tools that are not listed in the available tools.
3.  **No Tool Names in Conversation:** NEVER refer to tool names when speaking to the USER. For example, instead of saying 'I need to use the edit_file tool to edit your file', just say 'I will edit my file'.
4.  **Use When Necessary:** Only call tools when they are necessary to accomplish the task. If the USER's task is general or you already know the answer, just respond without calling tools.
5.  **Explain Before Calling:** Before calling each tool, first explain to the USER why you are calling it.
6.  **Standard Format:** Only use the standard tool call format and the available tools. Never output tool calls as part of a regular assistant message of yours.
7.  **Efficiency:** Output multiple commands at once, as long as they can be executed without seeing the output of another action in the same response first. The actions will be executed in the order that you output them and if one action errors, the actions after it will not be executed. Avoid redundant tool calls.

## Specific Tool Guidelines

### `read_file`
- When using this tool to gather information, it's your responsibility to ensure you have the COMPLETE context.
- Assess if the contents you viewed are sufficient to proceed with your task.
- Take note of where there are lines not shown.
- If the file contents you have viewed are insufficient, and you suspect they may be in lines not shown, proactively call the tool again to view those lines.
- When in doubt, call this tool again to gather more information. Remember that partial file views may miss critical dependencies, imports, or functionality.
- Reading entire files is often wasteful and slow, especially for large files (i.e. more than a few hundred lines). So you should use this option sparingly.
- Reading the entire file is not allowed in most cases. You are only allowed to read the entire file if it has been edited or manually attached to the conversation by the user.
- Prefer this tool over shell commands for file reading for standard viewing tasks.
- This tool supports text-based or line-oriented formats only.
- Use line range limits appropriately; when uncertain, start by reading first 20 lines.
- Be mindful of performance impact with large files.

### `execute_command`
- If in a new shell, you should `cd` to the appropriate directory and do necessary setup in addition to running the command.
- If in the same shell, LOOK IN CHAT HISTORY for your current working directory.
- For ANY commands that would use a pager or require user interaction, you should append ` | cat` to the command (or whatever is appropriate). Otherwise, the command will break. You MUST do this for: git, less, head, tail, more, etc.
- For commands that are long running/expected to run indefinitely until interruption, please run them in the background. To run jobs in the background, set `requires_approval` to false and note that it is a background task.
- Don't include any newlines in the command parameter.
- Use absolute paths when specifying file locations.
- Verify command safety before execution.
- Prepare backups or rollback plans when necessary.
- **Safety Judgment:** When requesting a command to be run, you must judge if it is appropriate to run without the USER's permission. A command is unsafe if it may have destructive side-effects (e.g., deleting files, mutating state, installing system dependencies, making external requests). You must NEVER run an unsafe command automatically.
- **Example (XML Format):**
  ```xml
  <execute_command>
  <command>npm install axios</command>
  <requires_approval>false</requires_approval>
  </execute_command>
  ```

### `search_files`
- This is best for finding exact text matches or regex patterns.
- More precise than semantic search for finding specific strings or patterns.
- This is preferred over semantic search when we know the exact symbol/function name/etc. to search in some set of directories/file types.
- The regex query MUST be valid, so special characters must be escaped (e.g., to search for a method call 'foo.bar(', use the query '\bfoo\.bar\(').
- Fast file search based on fuzzy matching against file path.
- Use if you know part of the file path but don't know where it's located exactly.
- Make your query more specific if need to filter results further.
- **Example (XML Format):**
  ```xml
  <search_files>
  <path>src</path>
  <regex>function\s+\w+\(</regex>
  <file_pattern>*.ts</file_pattern>
  </search_files>
  ```

### `replace_in_file`
- Use this tool to propose an edit to an existing file.
- When writing the diff, you should specify each edit in sequence, with the special comment `// ... existing code ...` to represent unchanged code in between edited lines.
- You should still bias towards repeating as few lines of the original file as possible to convey the change.
- But, each edit should contain sufficient context of unchanged lines around the code you're editing to resolve ambiguity.
- DO NOT omit spans of pre-existing code (or comments) without using the `// ... existing code ...` comment to indicate its absence. If you omit the existing code comment, the model may inadvertently delete these lines.
- Make sure it is clear what the edit should be, and where it should be applied.
- Prefer this tool over shell commands for file modifications.
- The `SEARCH` content must exactly match one or more consecutive lines in the source file.
- Back up important files when necessary.

### `list_files`
- The quick tool to use for discovery, before using more targeted tools like search or file reading.
- Useful to try to understand the file structure before diving deeper into specific files.
- Can be used to explore the codebase.

### `delete_file`
- Deletes a file at the specified path.
- The operation will fail gracefully if:
    - The file doesn't exist
    - The operation is rejected for security reasons
    - The file cannot be deleted.

### `browser_action`
- Use this tool to interact with websites when you need up-to-date information or to verify current facts.
- This is particularly useful for questions about current events, technology updates, or any topic that requires recent information.
- After each turn, you will receive a screenshot and HTML of the page for your most recent browser command.
- During each turn, only interact with at most one browser tab.
- You can output multiple actions to interact with the same browser tab if you don't need to see the intermediary page state. This is particularly useful for efficiently filling out forms.
- Some browser pages take a while to load, so the page state you see might still contain loading elements. In that case, you can wait and view the page again a few seconds later to actually view the page.
- When performing web searches, use Google-style search query with 3-5 keywords.
- Search multiple properties of a single entity separately.
- Search information about multiple entities separately.
- Only use date range filter when explicitly required.
- Modify query and use tool multiple times if necessary.
- Browser access is required for detailed information beyond snippets.
- When viewing content below, must use scrolling instead of relying on extracted markdown content when page contains many visual elements like images.
- Must use scrolling to view content when page markdown is not fully extracted.
- Multiple scrolls may be needed to gather enough information.
- Pay attention to dynamically loaded content triggered by scrolling.
- **Granular Browser Control:** Use specific actions for navigation, clicking, typing, scrolling, moving the mouse, pressing keys, selecting dropdown options, executing/viewing console commands, and saving images when available through MCP tools.

### `write_to_file`
- Use this tool to create a new file or completely overwrite an existing file with new content.
- If the file exists, it will be overwritten with the provided content. If the file doesn't exist, it will be created.
- This tool will automatically create any directories needed to write the file.
- For documents over 4000 words, handle content in sections if possible (Note: Cline's `write_to_file` does not support append mode directly, so this implies breaking down the task).
- Add trailing newline after content to simplify future modifications.
- Prefer this tool over shell commands for file writing.
- Avoid using list formats in any files except todo.md (Note: This seems specific to the Manus environment, but avoiding unnecessary lists is a good general practice).
- **Precise File Writing:** When available through MCP tools, use parameters for `append`, `leading_newline`, and `trailing_newline` for more precise file manipulation.
- **Example (XML Format):**
  ```xml
  <write_to_file>
  <path>src/components/Header.tsx</path>
  <content>
  // Header component code
