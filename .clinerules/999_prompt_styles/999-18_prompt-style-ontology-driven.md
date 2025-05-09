---
description: Guidelines for using the Ontology-Driven Prompting style.
author: Cline (AI Assistant)
version: 1.0
tags: ["prompting", "style", "ontology-driven"]
globs: []
---

# Ontology-Driven Prompting

## Brief overview
This style involves structuring prompts based on formal knowledge representations like ontologies or knowledge graphs. This links linguistic input to structured concepts and relationships, helping to ground the LLM's understanding and guide its reasoning.

## When to Use
- When working with domains that have well-defined concepts and relationships.
- To improve the factual accuracy and consistency of responses by leveraging structured knowledge.
- To guide the LLM towards using specific terminology or reasoning paths defined by the ontology.

## How to Use
- Incorporate elements of the ontology (e.g., concept names, relationship types) into the prompt structure or content.
- Use the ontology to frame questions or provide context.

## Example
```
Based on the following ontology snippet, describe the relationship between a "Customer" and an "Order".

Ontology Snippet:
Class: Customer
  hasRelationship: placesOrder -> Order

Class: Order
  isPlacedBy: Customer

Describe the "placesOrder" relationship.
