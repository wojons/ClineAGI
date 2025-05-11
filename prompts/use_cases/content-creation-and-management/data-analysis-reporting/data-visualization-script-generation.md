# Use Case Definition: Data Visualization Script Generation

**Objective:** To generate scripts (typically in Python using libraries like Matplotlib, Seaborn, Plotly, or R with ggplot2) for creating various types of charts and graphs to visually represent data, uncover insights, and communicate findings.

## 1. Core Requirements & Quality Indicators

*   **Appropriate Chart Type Selection:**
    *   Suggests or uses chart types suitable for the data and the analytical goal (e.g., bar chart for comparisons, line chart for trends, scatter plot for relationships, histogram for distributions).
*   **Accurate Data Representation:**
    *   Visualizations correctly reflect the underlying data.
*   **Clarity & Readability of Visualization:**
    *   Charts are easy to understand, with clear labels for axes, titles, legends, and data points.
    *   Avoids clutter ("chart junk").
    *   Good use of color, font sizes, and layout.
*   **Insightful Visualizations:**
    *   Helps to reveal patterns, trends, correlations, or outliers in the data.
*   **Customization Options:**
    *   Allows user to specify chart titles, axis labels, colors, styles, and other aesthetic elements.
*   **Correct & Runnable Code:**
    *   Generated script executes without errors (given the necessary libraries and data).
    *   Produces the intended visualization.
*   **Handles Common Data Formats:**
    *   Can work with data provided in formats like CSV, Excel, Pandas DataFrames, or arrays.
*   **Interactive Features (for libraries like Plotly):**
    *   If using interactive libraries, script may include features like tooltips, zooming, or filtering.

## 2. Key Stages & Processes Involved

1.  **Understand Data & Visualization Goal:**
    *   What data is being visualized? (Structure, types of variables - categorical, numerical).
    *   What story does the user want to tell with the data? What insights are they looking for? (e.g., compare categories, show a trend over time, visualize a distribution).
2.  **Select Appropriate Chart Type(s):**
    *   Based on the data and goal, choose the most effective visualization(s).
    *   (e.g., Bar chart for comparing quantities across categories; Line chart for time-series data; Scatter plot for relationship between two numerical variables; Histogram/Box plot for distribution of a single numerical variable; Pie chart for parts of a whole - use with caution).
3.  **Map Data to Visual Encodings:**
    *   Decide which data columns map to x-axis, y-axis, color, size, shape, etc.
4.  **Generate Visualization Script:**
    *   Write code using the chosen library (e.g., Matplotlib, Seaborn, Plotly).
    *   Load/prepare data.
    *   Create the plot, setting data, chart type, and aesthetic mappings.
    *   Add labels, title, legend.
    *   Include customization options (colors, styles, annotations).
    *   Add code to display or save the plot.
5.  **Add Comments & Instructions:**
    *   Comment the code to explain key steps.
    *   Provide instructions on how to run the script and any dependencies.
6.  **Refine & Iterate (Conceptual):**
    *   Suggest potential improvements or alternative visualizations if appropriate.

## 3. Inputs Required from User/System

*   **Dataset or Description of Data:** (Column names, data types, sample data if possible).
*   **Input Data Format:** (e.g., CSV file path, direct data array, Pandas DataFrame variable name if in an interactive environment).
*   **Visualization Goal or Question to Answer:** (e.g., "Show sales trend over the last year," "Compare performance across different product categories").
*   **Preferred Chart Type(s) (Optional):**
*   **Specific Columns to Plot:**
*   **Desired Customizations (Optional):** (Title, axis labels, colors, specific library if preferred).
*   **Target Programming Language/Library (Default to Python with Matplotlib/Seaborn if not specified):**

## 4. Potential Challenges & Considerations

*   **Choosing the Right Chart:** Selecting a visualization that effectively and accurately communicates the intended insight.
*   **Overplotting/Clutter:** For large datasets, visualizations can become too dense to interpret.
*   **Misleading Visualizations:** Poor choices in scaling, chart type, or color can distort the perception of data.
*   **Handling Large Datasets:** Performance can be an issue for some plotting libraries with very large data.
*   **Interactivity Complexity:** Scripting complex interactive visualizations can be challenging.
*   **Aesthetic Quality:** Creating visually appealing charts often requires fine-tuning.

## 5. Metrics for Success (How to Evaluate Output)

*   **Correctness of Script:** Does the code run and produce a chart?
*   **Appropriateness of Chart Type:** Is the chosen visualization suitable for the data and goal?
*   **Clarity & Readability of Chart:** Is the generated chart easy to understand? Are labels, titles, and legends clear?
*   **Accuracy of Data Representation:** Does the chart faithfully represent the data?
*   **Insightfulness:** Does the visualization help to reveal meaningful patterns or insights?
*   **Adherence to Customization Requests:**
*   **Code Quality:** Is the generated script well-organized and commented?
