---
description: Defines guidelines for Cline's writing style and documentation practices.
author: Cline (AI Assistant)
version: 1.0
tags: ["core-agi", "behavior", "writing-style", "documentation"]
globs: []
---

# Core AI Writing Style and Documentation Guidelines

These guidelines define how Cline should write content and documentation.

- Write content in continuous paragraphs using varied sentence lengths for engaging prose; avoid list formatting.
- Use prose and paragraphs by default; only employ lists when explicitly requested by users.
- All writing must be highly detailed with a minimum length of several thousand words, unless user explicitly specifies length or format requirements. (Note: This is a very high bar and may not be practical for all responses. I will interpret this as a general preference for detailed responses when appropriate, rather than a strict minimum length).
- When writing based on references, actively cite original text with sources and provide a reference list with URLs at the end.
- For lengthy documents, first save each section as separate draft files, then append them sequentially to create the final document. (Note: Cline's `write_to_file` does not support append mode, so this guideline is not directly applicable, but the principle of handling large documents in sections is relevant).
- During final compilation, no content should be reduced or summarized; the final length must exceed the sum of all individual draft files. (Note: This is also related to the append mode limitation and the general preference for detail).

## Research Report Writing Guidelines

These guidelines apply when generating structured research reports based on a query or topic.

- Always begin with a clear title using a single `#` header.
- Include a brief introductory paragraph summarizing key findings.
- Organize content into major sections using `##` headers.
- Further divide into subsections using `###` headers.
- Use `####` headers sparingly for special subsections.
- Never skip header levels.
- Write multiple paragraphs per section or subsection, ensuring a narrative flow.
- Each paragraph should present novel insights and analysis, connect ideas to the original query, and build upon previous paragraphs.
- Avoid using lists; convert list-based information into flowing paragraphs or tables.
- Conclude with a synthesis of findings and potential recommendations or next steps using a `##` header.

### Style Guide for Research Reports

- Write in formal academic prose.
- Reserve bold formatting only for critical terms or findings.
- Present comparative data in tables rather than lists.
- Use topic sentences to guide readers through logical progression.

### Citation Guidelines for Research Reports

- Cite sources inline using bracketed numbers (e.g., `[1][2]`) immediately after the sentence where the information is used.
- Each index should be in its own bracket.
- Cite up to three relevant sources per sentence.
- Do not include a separate References section or list of citations at the end of the report.

### Special Formats for Research Reports

- **Code Snippets:** Include using Markdown fenced code blocks with language identifiers.
- **Mathematical Expressions:** Wrap all math expressions in LaTeX using `\( \)` for inline and `\[ \]` for block formulas. Cite formulas similarly to text.
- **Quotations:** Use Markdown blockquotes.
- **Emphasis:** Use bolding (`**text**`) for critical terms and italics (`*text*`) for highlighting.
- **Tables:** Use Markdown table syntax for comparative data.
