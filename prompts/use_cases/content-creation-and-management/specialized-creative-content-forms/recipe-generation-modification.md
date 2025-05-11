# Use Case Definition: Recipe Generation & Modification

**Objective:** To generate new recipes based on specified ingredients, cuisine type, dietary restrictions, or desired dish, or to modify existing recipes (e.g., scale ingredients, substitute ingredients, adapt for dietary needs).

## 1. Core Requirements & Quality Indicators

*   **Clear & Accurate Ingredient List:**
    *   Lists all necessary ingredients with precise quantities and units.
*   **Step-by-Step Instructions:**
    *   Provides clear, sequential, and actionable instructions for preparing the dish.
    *   Steps are easy to follow.
*   **Correct Proportions & Ratios (for Generation):**
    *   Generated recipes have ingredient ratios that are generally sound for the type of dish.
*   **Plausible Substitutions & Modifications:**
    *   When modifying, suggested substitutions are appropriate and likely to yield a good result.
    *   Adjustments for dietary needs (e.g., gluten-free, vegan) are sensible.
*   **Consideration of Cooking Times & Temperatures:**
    *   Provides reasonable estimates for cooking/baking times and temperatures.
*   **Expected Outcome Description:**
    *   May describe the appearance, texture, or flavor of the finished dish.
*   **Serving Size & Prep/Cook Time Estimates:**
    *   Often includes estimated preparation time, cooking time, and number of servings.
*   **Safety Notes (if applicable):**
    *   May include basic food safety reminders (e.g., "cook chicken thoroughly").

## 2. Key Stages & Processes Involved

*   **For Recipe Generation:**
    1.  **Understand User Request:**
        *   What kind of dish? (e.g., "chicken stir-fry," "chocolate chip cookies").
        *   Any key ingredients to use or avoid?
        *   Cuisine type? (e.g., Italian, Mexican, Thai).
        *   Dietary restrictions? (e.g., vegetarian, gluten-free, low-carb).
        *   Desired difficulty level or cooking time?
    2.  **Brainstorm Core Ingredients & Flavor Profile:**
    3.  **Determine Basic Method/Technique:** (e.g., sauté, bake, roast, blend).
    4.  **Develop Ingredient List with Quantities:**
    5.  **Write Step-by-Step Instructions:**
    6.  **Add Prep Time, Cook Time, Serving Size:**
    7.  **Include Optional Tips or Variations:**
*   **For Recipe Modification:**
    1.  **Understand Existing Recipe & Desired Modification:**
        *   What is the original recipe?
        *   What change is needed? (e.g., "make it vegan," "double the servings," "substitute X for Y," "reduce sugar").
    2.  **Analyze Impact of Modification:**
        *   How will the change affect ingredient ratios, cooking times, texture, or flavor?
    3.  **Adjust Ingredient Quantities (for scaling):**
    4.  **Suggest Ingredient Substitutions (for dietary/preference changes):**
        *   Recommend appropriate alternatives (e.g., flax egg for egg, almond flour for wheat flour).
        *   Note potential impact of substitutions.
    5.  **Modify Instructions as Needed:**
        *   Adjust cooking times, temperatures, or steps based on the modification.
    6.  **Provide the Modified Recipe:**

## 3. Inputs Required from User/System

*   **For Recipe Generation:**
    *   **Desired Dish Type or Key Ingredients:**
    *   **Cuisine Style (Optional):**
    *   **Dietary Restrictions/Preferences (Optional):** (e.g., vegan, gluten-free, nut-free).
    *   **Available Cooking Equipment (Optional):** (e.g., "oven-only recipe," "no special equipment").
    *   **Desired Difficulty Level or Time Commitment (Optional):**
*   **For Recipe Modification:**
    *   **Original Recipe:** (Ingredients and instructions).
    *   **Specific Modification Requested:** (e.g., "scale for 8 servings," "make it dairy-free," "replace sugar with maple syrup").

## 4. Potential Challenges & Considerations

*   **Balancing Flavors & Textures:** Creating or modifying recipes that result in a palatable dish.
*   **Accuracy of Cooking Times/Temperatures:** These can vary based on equipment and altitude. AI provides general estimates.
*   **Ingredient Availability:** Some generated ingredients might be uncommon.
*   **Complexity of Substitutions:** Some ingredients are harder to substitute effectively than others (e.g., in baking).
*   **Food Science (Beyond AI Scope):** Deep understanding of chemical reactions in cooking is complex. AI relies on patterns from existing recipes.
*   **Subjectivity of Taste:** What one person enjoys, another may not.

## 5. Metrics for Success (How to Evaluate Output)

*   **Plausibility & Coherence:** Does the generated/modified recipe make sense? Are the ingredients and steps logical for the dish type?
*   **Clarity of Instructions:** Are the steps easy to follow?
*   **Completeness of Ingredient List:** Are all necessary ingredients listed with reasonable quantities?
*   **Appropriateness of Modifications/Substitutions:** If modifying, are the changes sensible?
*   **Helpfulness of Tips/Variations (if included):**
*   **Likelihood of Success (Conceptual):** If someone followed this recipe, would they likely achieve a good result (assuming basic cooking skills)?
*   **Adherence to Dietary/Cuisine Requests:**
