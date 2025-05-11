# Use Case Definition: Data Cleaning & Preprocessing Script Generation

**Objective:** To generate scripts (typically in Python using libraries like Pandas and NumPy) for cleaning and preprocessing raw datasets, making them suitable for analysis, visualization, or machine learning.

## 1. Core Requirements & Quality Indicators

*   **Handles Common Data Issues:**
    *   Addresses missing values (e.g., imputation, removal).
    *   Corrects data type inconsistencies.
    *   Identifies and handles outliers (e.g., capping, removal, transformation).
    *   Removes duplicate records.
    *   Corrects structural errors or inconsistencies in data formatting.
*   **Efficiency & Readability of Script:**
    *   Generated code is efficient for the given dataset size (conceptually).
    *   Code is well-commented and easy to understand.
    *   Uses standard library functions and vectorized operations where possible.
*   **Flexibility & Customization:**
    *   Allows user to specify cleaning strategies for different columns or data types.
    *   Can handle various input data formats (e.g., CSV, Excel, JSON).
*   **Reproducibility:**
    *   The script ensures that the cleaning process is repeatable.
*   **Output of Cleaned Data:**
    *   The script outputs a cleaned dataset in a specified format.
*   **Reporting/Logging (Optional):**
    *   May generate a summary report of changes made (e.g., number of missing values handled, duplicates removed).

## 2. Key Stages & Processes Involved

1.  **Understand Data & Cleaning Requirements:**
    *   Load a sample of the data (or get schema/description from user).
    *   Identify data types, potential issues (missing values, outliers, inconsistencies) based on user input or initial data exploration (AI can suggest common checks).
    *   Clarify user's goals for data cleaning (e.g., prepare for ML, for specific analysis).
2.  **Plan Cleaning Strategy:**
    *   For each identified issue and relevant column(s):
        *   **Missing Values:** Decide on strategy (e.g., fill with mean/median/mode, forward/backward fill, drop rows/columns, use a constant).
        *   **Data Types:** Plan conversions (e.g., string to numeric, string to datetime).
        *   **Outliers:** Choose method (e.g., Z-score, IQR, manual capping).
        *   **Duplicates:** Define criteria for identifying duplicates.
        *   **Inconsistent Formatting/Typos:** Plan normalization steps (e.g., lowercasing text, standardizing date formats, correcting common misspellings if a dictionary is provided).
        *   **Feature Engineering (Simple):** May include creating new features from existing ones (e.g., extracting year from date, binning numerical data).
3.  **Generate Script Code (e.g., Python with Pandas):**
    *   Write code to load the dataset.
    *   Implement each cleaning step sequentially.
    *   Use appropriate library functions (e.g., `pandas.DataFrame.fillna()`, `pandas.DataFrame.astype()`, `pandas.DataFrame.drop_duplicates()`).
    *   Add comments to explain each step.
4.  **Include Data Export:**
    *   Add code to save the cleaned dataset to a new file.
5.  **Suggest Summary/Logging (Optional):**
    *   Add code to print summary statistics before and after cleaning, or log the number of changes made.
6.  **Provide Instructions for Running the Script:**

## 3. Inputs Required from User/System

*   **Sample of the Dataset or Detailed Schema Description:** (Column names, expected data types, example values).
*   **Input Data Format:** (e.g., CSV, Excel, JSON, SQL query).
*   **Specific Cleaning Tasks Required:** (e.g., "handle missing values in 'Age' column," "remove duplicate rows based on 'Email'").
*   **Preferred Strategies for Handling Issues (Optional):** (e.g., "fill missing 'Age' with median," "drop rows with more than 3 missing values").
*   **Output Data Format & Filename:**
*   **Target Programming Language/Libraries (Default to Python/Pandas if not specified):**

## 4. Potential Challenges & Considerations

*   **Data Volume:** Scripts need to be reasonably efficient for the dataset size.
*   **Complexity of Issues:** Highly messy or unstructured data can require very complex cleaning logic.
*   **Defining "Clean":** What constitutes clean data can be subjective and depends on the downstream use case.
*   **Information Loss:** Some cleaning operations (like dropping rows/columns or aggressive outlier removal) can lead to loss of valuable information.
*   **Order of Operations:** The sequence of cleaning steps can matter.
*   **Domain Knowledge:** Effective cleaning often requires understanding the data's domain.

## 5. Metrics for Success (How to Evaluate Output)

*   **Correctness of Script:** Does the script run without errors (given appropriate environment)?
*   **Effectiveness of Cleaning:** Does the script successfully address the specified data issues?
*   **Readability & Maintainability of Code:** Is the generated script easy to understand and modify?
*   **Efficiency (Conceptual):** Does the script use appropriate methods for data manipulation?
*   **Adherence to User Specifications:** Does it implement the cleaning strategies requested by the user?
*   **Completeness:** Does the script handle loading data, cleaning, and saving the result?
*   **Usefulness for Downstream Tasks:** Is the cleaned data suitable for the user's intended next steps (analysis, ML)?
