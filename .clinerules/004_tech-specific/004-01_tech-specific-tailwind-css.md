---
description: Guidelines for using Tailwind CSS.
globs: "**/*.html, **/*.css, **/*.js, **/*.jsx, **/*.ts, **/*.tsx, **/*.vue"
---

# Tailwind CSS Guidelines

These guidelines define how to effectively use Tailwind CSS in projects.

## Core Concepts

- **Utility-First:** Build designs directly in your markup using pre-defined utility classes.
- **Responsive Design:** Use responsive prefixes (e.g., `sm:`, `md:`, `lg:`) to build responsive layouts.
- **Customization:** Extend or override default Tailwind configuration in `tailwind.config.js`.

## Best Practices

- **Apply classes directly:** Add Tailwind classes directly to HTML/JSX elements.
- **Use responsive prefixes:** Design for mobile first, then add responsive prefixes for larger breakpoints.
- **Extract components:** For repeated utility patterns, extract them into reusable components or use `@apply` in your CSS (though direct application in markup is often preferred).
- **Configure `tailwind.config.js`:** Customize colors, fonts, breakpoints, etc., to match project design requirements.
- **Avoid inline styles:** Prefer using Tailwind classes over inline styles for consistency and maintainability.
- **Use Prettier/ESLint with Tailwind plugins:** Ensure consistent formatting and catch errors.

## Examples

```html
<div class="container mx-auto px-4 py-8">
  <h1 class="text-2xl font-bold text-gray-800 mb-4 sm:text-3xl">
    Welcome
  </h1>
  <p class="text-gray-600 leading-relaxed">
    This is a sample paragraph using Tailwind CSS utilities.
  </p>
</div>
```

```css
/* Using @apply for a custom button style */
.btn-primary {
  @apply bg-blue-500 text-white font-bold py-2 px-4 rounded hover:bg-blue-700;
}
```

## AI MODEL VERIFICATION STEPS

Before generating code with Tailwind CSS, you SHOULD verify:

1. Are you applying Tailwind utility classes directly in the markup?
2. Are you using responsive prefixes for different screen sizes?
3. If creating custom styles, are you using `@apply` in a CSS file?
4. Are you avoiding inline styles where Tailwind classes can be used?

## CONSEQUENCES OF INCORRECT IMPLEMENTATION

If you generate code without following these guidelines:

1. Styling may be inconsistent.
2. Designs may not be responsive.
3. Code may be harder to maintain.
