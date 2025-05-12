# Objective
To generate a conceptual design for a User Interface (UI) component, focusing on its purpose, key elements, layout, user flow, and accessibility considerations. This is not for generating code, but for outlining the design principles.

## User Input Requirements
The user needs to provide:
1.  **Component Name/Purpose:** What is the component and what does it do? (e.g., "User login form," "Product card display," "Interactive data dashboard widget").
2.  **Key Functionalities:** What are the essential functions the component must perform?
3.  **Target Users (Optional):** Who will be using this component? (e.g., general public, technical administrators, specific age group). This helps inform accessibility and usability choices.
4.  **Core Elements/Data:** What are the main pieces of information or interactive elements that must be present? (e.g., for a login form: username field, password field, submit button, forgot password link).
5.  **Desired Style/Feel (Optional):** (e.g., modern, minimalist, playful, corporate, data-dense).
6.  **Key Interactions/User Flow (Optional):** How should a user typically interact with this component from start to finish?

## Cline's Workflow/Guidance
1.  **Analyze Input:** Understand the component's purpose, functionalities, target users, core elements, and desired style.
2.  **Outline Component Design:**
    *   **Purpose Statement:** Briefly reiterate the component's main goal.
    *   **Key Elements:** List and describe each essential visual and interactive element.
    *   **Layout & Structure:** Describe the general arrangement of elements. A simple textual description or a very basic Mermaid diagram (if helpful for complex layouts) can be used.
    *   **User Interaction Flow:** Describe the step-by-step process of a user interacting with the component to achieve its purpose.
    *   **Accessibility Considerations:** Briefly mention key accessibility points (e.g., keyboard navigation, clear labeling, sufficient contrast if colors are discussed conceptually).
    *   **Error States/Feedback (Conceptual):** How might the component indicate errors or provide feedback to the user (without designing specific visuals)?
    *   **Responsiveness (Conceptual):** Briefly mention how the layout might adapt to different screen sizes.
3.  **Focus on Concept, Not Code:** Emphasize that this is a conceptual design. Avoid generating HTML/CSS/JS.
4.  **Offer Variations (Optional):** If appropriate, suggest one or two alternative approaches to layout or interaction.

## Example Output Structure/Format
**Scenario:** User wants a conceptual design for a product filtering sidebar.
*   **User Input:**
    *   Component: Product filtering sidebar for an e-commerce site.
    *   Functionalities: Allow users to filter products by category, price range, and brand.
    *   Core Elements: Category list (checkboxes), price range slider, brand list (checkboxes), apply filters button, clear filters button.
    *   Style: Clean, modern.

*   **Cline Generated Conceptual Design:**

    **Component: Product Filtering Sidebar**

    *   **Purpose:** To allow users to refine the displayed product list on an e-commerce site based on selected criteria.
    *   **Key Elements:**
        *   **Category Filter:** A list of product categories, each with a checkbox. A "Show More/Less" option if categories are numerous.
        *   **Price Range Filter:** A dual-handle slider allowing users to select a min/max price. Current selected range displayed.
        *   **Brand Filter:** A list of available brands, each with a checkbox. Searchable if many brands.
        *   **Apply Filters Button:** A prominent button to apply the selected filter criteria.
        *   **Clear All Filters Button/Link:** To reset all selected filters to default.
    *   **Layout & Structure:**
        *   Vertically stacked sections for Category, Price, and Brand.
        *   "Apply Filters" button at the bottom, "Clear All" typically near the top or bottom.
    *   **User Interaction Flow:**
        1.  User views available filter options.
        2.  User selects desired categories by checking boxes.
        3.  User adjusts the price range slider.
        4.  User selects desired brands by checking boxes.
        5.  User clicks "Apply Filters."
        6.  Product list updates. User can then clear filters or modify selections and re-apply.
    *   **Accessibility Considerations:** Ensure checkboxes are keyboard navigable, slider has keyboard controls, and all interactive elements have clear labels. Sufficient contrast for text and controls.
    *   **Feedback:** Selected filters should be visually distinct. A count of matching products could update dynamically or upon applying filters.

---
**Frontmatter for `prompt_inventory.yaml`:**
name: "Conceptual UI Component Design"
path: "prompts/use_cases/software-design-and-architecture/conceptual-ui-component-design.md"
type: "use_case_guide"
description: "Outlines a conceptual design for a UI component, focusing on purpose, elements, layout, user flow, and accessibility, without generating code."
triggers: ["design ui component", "conceptual ui design", "ui component outline", "user interface component plan"]
weight: 100
