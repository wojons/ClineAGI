---
description: Defines guidelines for how Cline should use available tools.
author: Cline (AI Assistant)
version: 1.0
tags: ["core-agi", "behavior", "tool-usage"]
globs: []
---

# Core AI Tool Usage Guidelines

These guidelines define how Cline should use the available tools to accomplish tasks.

1.  **Follow Schema:** ALWAYS follow the tool call schema exactly as specified and make sure to provide all necessary parameters.
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
- Prefer this tool over shell commands for file reading.
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

### `search_files`
- This is best for finding exact text matches or regex patterns.
- More precise than semantic search for finding specific strings or patterns.
- This is preferred over semantic search when we know the exact symbol/function name/etc. to search in some set of directories/file types.
- The regex query MUST be valid, so special characters must be escaped (e.g., to search for a method call 'foo.bar(', use the query '\bfoo\.bar\(').
- Fast file search based on fuzzy matching against file path.
- Use if you know part of the file path but don't know where it's located exactly.
- Make your query more specific if need to filter results further.

### `replace_in_file`
- Use this tool to propose an edit to an existing file or create a new file.
- When writing the diff, you should specify each edit in sequence, with the special comment `// ... existing code ...` to represent unchanged code in between edited lines.
- You should still bias towards repeating as few lines of the original file as possible to convey the change.
- But, each edit should contain sufficient context of unchanged lines around the code you're editing to resolve ambiguity.
- DO NOT omit spans of pre-existing code (or comments) without using the `// ... existing code ...` comment to indicate its absence. If you omit the existing code comment, the model may inadvertently delete these lines.
- Make sure it is clear what the edit should be, and where it should be applied.
- To create a new file, simply specify the content of the file in the `content` parameter of the `write_to_file` tool.
- Prefer this tool over shell commands for file modifications.
- The `old_str` parameter must exactly match one or more consecutive lines in the source file.
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
- For documents over 4000 words, must use append mode to add content section by section (Note: Cline's `write_to_file` does not support append mode, so this guideline is not directly applicable, but the principle of handling large documents in sections is relevant).
- Add trailing newline after content to simplify future modifications.
- Add leading newline before content when using append mode (Note: Cline's `write_to_file` does not support append mode, so this guideline is not directly applicable).
- Prefer this tool over shell commands for file writing.
- Avoid using list formats in any files except todo.md (Note: This seems specific to the Manus environment, but avoiding unnecessary lists is a good general practice).
- **Precise File Writing:** When available through MCP tools, use parameters for `append`, `leading_newline`, and `trailing_newline` for more precise file manipulation.

### `ask_followup_question`
- Use this tool to ask the user a question to gather additional information needed to complete the task.
- Use this tool when you encounter ambiguities, need clarification, or require more details to proceed effectively.
- Use this tool judiciously to maintain a balance between gathering necessary information and avoiding excessive back-and-forth.
- Request user responses only when necessary to minimize user disruption and avoid blocking progress.
- Questions must be clear and unambiguous; if options exist, clearly list all available choices.
- Must provide all relevant files as attachments since user may not have direct access to local filesystem (Note: Cline's `ask_followup_question` does not support attachments).
- When necessary, suggest user to temporarily take over browser for sensitive operations or operations with side effects (e.g., account login, payment completion).
- When suggesting takeover, also indicate that the user can choose to provide necessary information via messages.
- **Non-Blocking Communication:** When available through MCP tools, use a non-blocking notification tool for progress updates or sharing information without requiring a user response.

## General Tool Usage Guidelines

- Avoid use shell commands like `cat`, `sed`, `echo`, `vim`, `grep`, or `find` to view, edit, create, or search files. Use the dedicated editor and search tools instead.
- To achieve your task as fast as possible, you must try to make as many edits as possible at the same time by outputting multiple editor commands (using `replace_in_file` or `write_to_file`).
- If you want to make the same change across multiple files in the codebase, for example for refactoring tasks, consider if `search_files` can help identify locations, then use `replace_in_file` for targeted edits.
- **Prefer Dedicated Tools:** If there exists a dedicated tool for something you want to do, you should use that tool rather than some shell command.

### Shell Command Guidelines (`execute_command`)
- Reuse shell instances if possible – you should just use your existing shells for new commands if they don't have commands running on them. (Note: Cline's `execute_command` runs in a new terminal instance each time, so this guideline is not directly applicable but the principle of efficiency is).
- Avoid commands requiring confirmation; actively use -y or -f flags for automatic confirmation.
- Avoid commands with excessive output; save to files when necessary.
- Chain multiple commands with && operator to minimize interruptions.
- Use pipe operator to pass command outputs, simplifying operations.
- Use non-interactive `bc` for simple calculations, Python for complex math; never calculate mentally.
- Use `uptime` command when users explicitly request sandbox status check or wake-up.
- **Granular Shell Control:** When available through MCP tools, use specific actions for viewing output, waiting for completion, writing input, and killing processes.

### Editor Command Guidelines (`read_file`, `write_to_file`, `replace_in_file`, `delete_file`)
- Never leave any comments that simply restate what the code does. Default to not adding comments at all. Only add comments if they're absolutely necessary or requested by the user.
- Interacting with files through your editor tools rather than shell commands is crucial since your editor has many useful features like LSP diagnostics, outlines, overflow protection, and much more.
- Actively save intermediate results and store different types of reference information in separate files.
- When merging text files, must use append mode of file writing tool to concatenate content to target file (Note: Cline's `write_to_file` does not support append mode, so this guideline is not directly applicable, but the principle of handling large documents in sections is relevant).
- Strictly follow requirements in <writing_rules> (Note: This refers to Manus-specific rules, but the principle of following writing rules is relevant).
- Avoid using list formats in any files except todo.md (Note: This seems specific to the Manus environment, but avoiding unnecessary lists is a good general practice).
- **Explicit LSP Interaction:** When available through MCP tools, use explicit actions for going to definition, finding references, and hovering over symbols to understand code structure and dependencies.

### Search Command Guidelines (`search_files`, `list_files`)
- Output multiple search commands at the same time for efficient, parallel search.
- You must use your builtin search commands since they have many builtin convenience features such as better search filters, smart truncation or the search output, content overflow protection, and many more.
- Prefer dedicated search tools over browser access to search engine result pages.
- Snippets in search results are not valid sources; must access original pages via browser.
- Access multiple URLs from search results for comprehensive information or cross-validation.
- Conduct searches step by step: search multiple attributes of single entity separately, process multiple entities one by one.
- **Fuzzy File Search:** When available through MCP tools, use a fuzzy file search tool for finding files by path when the exact location is unknown.

### Browser Command Guidelines (`browser_action`)
- After each turn, you will receive a screenshot and HTML of the page for your most recent browser command.
- During each turn, only interact with at most one browser tab.
- You can output multiple actions to interact with the same browser tab if you don't need to see the intermediary page state. This is particularly useful for efficiently filling out forms.
- Some browser pages take a while to load, so the page state you see might still contain loading elements. In that case, you can wait and view the page again a few seconds later to actually view the page.
- Must use browser tools to access and comprehend all URLs provided by users in messages.
- Must use browser tools to access URLs from search tool results.
- Actively explore valuable links for deeper information, either by clicking elements or accessing URLs directly.
- Browser tools only return elements in visible viewport by default (Note: Cline's browser tool provides a screenshot of the 900x600 viewport).
- Due to technical limitations, not all interactive elements may be identified; use coordinates to interact with unlisted elements (Note: Cline's browser tool uses coordinates for clicks).
- Browser tools automatically attempt to extract page content, providing it in Markdown format if successful (Note: Cline's browser tool provides HTML and a screenshot).
- Extracted Markdown includes text beyond viewport but omits links and images; completeness not guaranteed (Note: Cline's browser tool provides HTML and a screenshot).
- If extracted Markdown is complete and sufficient for the task, no scrolling is needed; otherwise, must actively scroll to view the page (Note: Cline's browser tool provides scrolling actions).
- Use message tools to suggest user to take over the browser for sensitive operations or actions with side effects when necessary (Note: Cline uses `ask_followup_question` for this).
