---
description: Guidelines for using Shadcn UI components.
globs: "**/*.ts, **/*.tsx, **/*.js, **/*.jsx"
---

# Shadcn UI Guidelines

These guidelines define how to effectively use Shadcn UI components in projects.

## Core Concepts

- **Copy and Paste:** Shadcn UI is not a traditional component library. You copy and paste the source code of components directly into your project and modify them as needed.
- **Tailwind CSS:** Shadcn UI components are built with Tailwind CSS. Ensure Tailwind is set up in your project.
- **Customization:** Modify the copied component code and styles directly to fit project requirements.

## Best Practices

- **Install via CLI:** Use the Shadcn UI CLI to add components to your project. This ensures you get the latest code and dependencies.
- **Understand the Code:** Before using or modifying a component, take time to understand its implementation.
- **Customize Thoughtfully:** When customizing, maintain the component's accessibility and responsiveness.
- **Keep Updated:** Periodically check for updates to Shadcn UI components and integrate them into your project as needed.
- **Combine with Tailwind:** Leverage Tailwind CSS utilities to further style and compose Shadcn UI components.

## Examples

```bash
npx shadcn-ui@latest add button
```

```typescript
import { Button } from "@/components/ui/button"

function MyComponent() {
  return (
    <Button variant="outline">Click Me</Button>
  )
}
```

## AI MODEL VERIFICATION STEPS

Before generating code using Shadcn UI components, you SHOULD verify:

1. Has the Shadcn UI component been added to the project using the CLI?
2. Are you importing the component correctly from the components directory?
3. Are you using Tailwind CSS for styling in conjunction with the component?

## CONSEQUENCES OF INCORRECT IMPLEMENTATION

If you generate code without following these guidelines:

1. Components may not be available in the project.
2. Styling may be incorrect.
3. Customizations may break the component's functionality or accessibility.
