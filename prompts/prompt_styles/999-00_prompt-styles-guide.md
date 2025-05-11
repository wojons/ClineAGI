---
description: A guide to different prompting styles and how to use them effectively.
author: Cline (AI Assistant)
version: 1.0
tags: ["prompting", "guide", "workflow"]
globs: []
---

# Prompting Styles Guide

This guide outlines various prompting styles that can be used to interact with and guide Large Language Models (LLMs) effectively. Understanding and applying these styles can help elicit more accurate, structured, and useful responses, and can be particularly valuable for tasks requiring complex reasoning, planning, or specific output formats.

## Core Concepts

Prompting is the art and science of crafting inputs to guide an LLM's behavior. Different prompting styles leverage the LLM's capabilities in distinct ways. The choice of style depends on the task, the desired output, and the characteristics of the LLM being used.

## Prompting Styles

Here are some common prompting styles:

### 1. Zero-Shot Prompting

**Description:** Asking the LLM to perform a task directly without providing any examples in the prompt.

**When to Use:**
- For simple tasks that the LLM is likely to understand based on its pre-training.
- When you want to test the LLM's baseline understanding of a concept or instruction.

**How to Use:**
- Provide a clear and concise instruction or question.

**Example:**
```
Translate the following English sentence to French: "Hello, how are you?"
```

### 2. Few-Shot Prompting (In-Context Learning - ICL)

**Description:** Providing a small number of examples (typically 1-5) of the desired input/output format or task execution within the prompt. The LLM learns from these examples to perform the task on a new input.

**When to Use:**
- For tasks where the desired format or style is specific.
- When the LLM might not fully understand the task from a zero-shot instruction alone.
- To guide the LLM towards a particular type of response.

**How to Use:**
- Include pairs of input and desired output that demonstrate the task.
- Clearly separate the examples from the final input.

**Example:**
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
```

### 3. Chain-of-Thought (CoT) Prompting

**Description:** Encouraging the LLM to break down a problem into intermediate reasoning steps before providing the final answer. This makes the LLM's thinking process more explicit and can improve accuracy on complex tasks.

**When to Use:**
- For tasks requiring multi-step reasoning, logic, or calculations.
- When you want to understand the LLM's reasoning process.
- To improve the reliability of answers on challenging problems.

**How to Use:**
- Include instructions like "Let's think step by step," "Think aloud," or provide examples that show the step-by-step reasoning.
- You can use specific tags to delineate the thinking process.

**Example (using XML tags for thinking):**
```
Calculate the final price after a 10% discount on an item costing $100.

<thinking>
1. Identify the original price: $100.
2. Identify the discount percentage: 10%.
3. Calculate the discount amount: 10% of $100 = 0.10 * $100 = $10.
4. Calculate the final price: Original price - Discount amount = $100 - $10 = $90.
</thinking>
The final price is $90.
```

### 4. Fake CoT Prompting

**Description:** Guiding an LLM to *simulate* a Chain-of-Thought reasoning process, even if the underlying model is not a native CoT reasoner. This is achieved by providing examples of reasoning and explicitly instructing the model to generate its own reasoning steps, often within specific tags.

**When to Use:**
- When working with LLMs that don't naturally produce CoT but you want to encourage a more structured approach.
- To make the reasoning process transparent for debugging or evaluation, regardless of the model's internal mechanisms.

**How to Use:**
- Provide examples of the desired reasoning format, including the use of specific tags (e.g., `<cot-thinking>`).
- Explicitly instruct the LLM to generate its reasoning within these tags before providing the final answer.

**Example:**
```
Evaluate the following options for a programming language based on performance and ease of learning. Options: Python, Rust.

<cot-thinking>
Goal: Choose a programming language balancing performance and ease of learning.
Option 1: Python - Pros: Easy to learn, large community, extensive libraries. Cons: Slower execution compared to compiled languages.
Option 2: Rust - Pros: High performance, memory safety. Cons: Steep learning curve, smaller community/library ecosystem than Python.
Reasoning: The user prioritizes both performance and ease of learning. Python is easier to learn but less performant. Rust is highly performant but harder to learn. For a balance, considering the user's potential need for rapid development and access to libraries, Python might be a better starting point, with performance optimizations considered later if needed.
Conclusion: Python offers a better balance for initial development focusing on ease of learning and library access, despite performance trade-offs.
</cot-thinking>
Selected Language: Python
```

### 5. Role Prompting (Persona Prompting)

**Description:** Assigning a specific role or persona to the LLM to influence its tone, style, and the perspective from which it answers.

**When to Use:**
- When you need the LLM to adopt a specific voice or expertise (e.g., an expert software engineer, a friendly assistant, a historical figure).
- To shape the overall interaction style.

**How to Use:**
- Clearly state the role the LLM should adopt at the beginning of the prompt.

**Example:**
```
# ROLE
You are an expert software engineer.

Explain the concept of recursion in programming.
```

### 6. Structured Output Prompting

**Description:** Instructing the LLM to format its output in a specific structure, such as JSON, XML, Markdown tables, or a custom format.

**When to Use:**
- When the output needs to be machine-readable or adhere to a predefined schema.
- To ensure consistency in the format of responses.

**How to Use:**
- Clearly specify the desired output format and provide examples if necessary.

**Example:**
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
```

### 7. Self-Correction/Reflection Prompts

**Description:** Asking the LLM to review its previous output, identify flaws or limitations, and suggest or implement corrections.

**When to Use:**
- To improve the quality and accuracy of the LLM's responses iteratively.
- To encourage the LLM to evaluate its own performance.

**How to Use:**
- Provide the LLM's previous output and instruct it to critique or correct it based on specific criteria or a rubric.

**Example:**
```
Review your previous response for factual accuracy and clarity. Identify any potential errors or areas for improvement and provide a revised response.

Previous Response: [Insert previous LLM response here]
```

### 8. Prompt Chaining/Decomposition

**Description:** Breaking a complex task into a sequence of simpler prompts, where the output of one prompt serves as the input or context for the next prompt. This is often orchestrated by an external system or agent.

**When to Use:**
- For complex, multi-step tasks that are too challenging for a single prompt.
- To manage the complexity of a workflow and allow for intermediate checks or actions.

**How to Use:**
- Design a sequence of prompts, where each prompt builds upon the previous one.
- Use an external system to manage the flow and pass information between prompts.

**Example (Conceptual Flow):**
1. **Prompt 1 (Task Decomposition):** Given a high-level goal, break it down into smaller steps.
2. **Prompt 2 (Information Gathering):** Based on Step 1, identify necessary information and formulate search queries.
3. **Prompt 3 (Synthesis):** Given search results from Step 2, synthesize the information to address the current sub-goal.
4. **Prompt 4 (Code Generation):** Based on the synthesized information from Step 3, generate code for a specific module.
5. **Prompt 5 (Verification):** Given the generated code from Step 4, write unit tests or perform static analysis.

### 9. Ontology-Driven Prompting

**Description:** Structuring prompts based on formal knowledge representations like ontologies or knowledge graphs. This links linguistic input to structured concepts and relationships, helping to ground the LLM's understanding and guide its reasoning.

**When to Use:**
- When working with domains that have well-defined concepts and relationships.
- To improve the factual accuracy and consistency of responses by leveraging structured knowledge.
- To guide the LLM towards using specific terminology or reasoning paths defined by the ontology.

**How to Use:**
- Incorporate elements of the ontology (e.g., concept names, relationship types) into the prompt structure or content.
- Use the ontology to frame questions or provide context.

**Example:**
```
Based on the following ontology snippet, describe the relationship between a "Customer" and an "Order".

Ontology Snippet:
Class: Customer
  hasRelationship: placesOrder -> Order

Class: Order
  isPlacedBy: Customer

Describe the "placesOrder" relationship.
```

## Using XML Tags for Thinking and Planning

As demonstrated in the CoT and Fake CoT examples, XML-style tags can be used to explicitly delineate the LLM's internal thinking or planning process within the response. This makes the process transparent and can be useful for debugging, evaluation, or simply allowing the user to follow along.

**Common Tags:**
- `<thinking>`: General tag for internal thought processes, analysis, or reasoning steps.
- `<planning>`: Specific tag for outlining steps, strategies, or action sequences.
- `<cot-thinking>`: Used specifically for Chain-of-Thought or simulated CoT.

**How to Use:**
- Before performing an action or providing a final answer, include a block of text wrapped in the chosen XML tags.
- Within the tags, write out the steps, considerations, or reasoning that leads to the subsequent action or conclusion.
- Ensure the content within the tags is distinct from the final response or tool calls.

**Example (using `<planning>`):**
```
User Request: Create a simple HTML page with a title and a heading.

<planning>
1. The user wants an HTML page.
2. I need to create a new file with an .html extension.
3. The page needs a title within the <head> section.
4. The page needs a main heading within the <body> section.
5. I will use the `write_to_file` tool to create the file with the necessary HTML structure.
</planning>
I will create a new HTML file with a title and a heading.
```

## Meta-Prompting

Meta-prompting is a higher-level concept that involves designing prompts that influence *how* the LLM interprets and responds to other prompts or instructions. It's about defining the rules of engagement or the overall strategy the LLM should follow.

To support meta-prompting, we can create a dedicated folder within `.clinerules/`.

```xml
<execute_command>
<command>mkdir -p .clinerules/997_meta-prompting</command>
<requires_approval>false</requires_approval>
</execute_command>
