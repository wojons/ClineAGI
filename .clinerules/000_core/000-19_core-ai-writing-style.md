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
