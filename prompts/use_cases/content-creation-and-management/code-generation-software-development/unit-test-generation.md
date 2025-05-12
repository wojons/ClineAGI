# Use Case Definition: Unit Test Generation

**Objective:** To generate unit tests for a given piece of code (e.g., a function, method, or class) to verify its correctness by testing individual components in isolation.

## 1. Core Requirements & Quality Indicators

*   **Coverage of Logic Paths:**
    *   Tests cover different execution paths within the code, including conditional branches and loops.
*   **Testing Edge Cases:**
    *   Includes tests for boundary conditions, empty inputs, null inputs (if applicable), and other potential edge cases.
*   **Correct Assertions:**
    *   Assertions accurately verify the expected outcomes for given inputs.
*   **Isolation:**
    *   Tests focus on a single unit of code and mock dependencies where necessary to ensure isolation.
*   **Readability & Maintainability of Tests:**
    *   Test code is clear, well-structured, and easy to understand and maintain.
    *   Uses descriptive test case names.
*   **Adherence to Testing Framework Syntax:**
    *   Generated tests use the correct syntax and conventions of the specified testing framework (e.g., Jest, PyTest, JUnit, NUnit, Go's `testing` package).
*   **Non-Trivial Tests:**
    *   Goes beyond simple "happy path" testing to include more complex scenarios.
*   **Idempotency:**
    *   Tests should produce the same results every time they are run with the same inputs and code.

## 2. Key Stages & Processes Involved

1.  **Understand Code Under Test:**
    *   Analyze the function/method/class to be tested: its inputs, outputs, internal logic, dependencies, and expected behavior.
2.  **Identify Test Scenarios:**
    *   Brainstorm different scenarios to test:
        *   **Happy Path:** Normal, expected inputs and outputs.
        *   **Edge Cases:** Boundary values, empty inputs, nulls, large inputs.
        *   **Error Conditions:** How the code handles invalid inputs or exceptional situations.
        *   **Specific Logic Paths:** Inputs that trigger different conditional branches or loop behaviors.
3.  **Select Testing Framework & Language:**
    *   Confirm the programming language of the code and the testing framework to be used.
4.  **Write Test Cases:**
    *   For each scenario:
        *   **Arrange:** Set up any necessary preconditions or input data. Mock dependencies if needed.
        *   **Act:** Execute the unit of code being tested with the prepared inputs.
        *   **Assert:** Verify that the actual output or behavior matches the expected outcome.
5.  **Structure Test Code:**
    *   Organize tests into a test suite or class.
    *   Use descriptive names for test methods/functions.
    *   Follow the conventions of the chosen testing framework.
6.  **Handle Dependencies (Mocking/Stubbing):**
    *   If the unit under test has external dependencies, generate code to mock or stub those dependencies so the unit can be tested in isolation.
7.  **Review & Refine Tests:**
    *   Check for test coverage, clarity, correctness of assertions, and maintainability.

## 3. Inputs Required from User/System

*   **Source Code of the Unit to be Tested:** (The function, method, or class).
*   **Programming Language:**
*   **Testing Framework to be Used:** (e.g., Jest, PyTest, JUnit).
*   **Key Functionality or Logic Paths to Prioritize for Testing (Optional):**
*   **Specific Edge Cases or Error Conditions to Test (Optional):**
*   **Information about Dependencies that Might Need Mocking (Optional):**

## 4. Potential Challenges & Considerations

*   **Testing Code with Side Effects:** Units that modify global state or interact with external systems (files, databases, networks) are harder to test in isolation and require careful mocking.
*   **Complex Dependencies:** Mocking intricate or numerous dependencies can be challenging.
*   **Private/Internal Methods:** Unit testing typically focuses on public interfaces. Testing private methods directly is often discouraged (test them via public methods).
*   **Achieving High Coverage:** Ensuring all significant logic paths and edge cases are covered.
*   **Test Brittleness:** Writing tests that don't break unnecessarily when the underlying code is refactored without changing its behavior.
*   **Understanding Code Intent:** AI might struggle to infer all intended behaviors or edge cases if the code is unclear or lacks good comments/documentation.

## 5. Metrics for Success (How to Evaluate Output)

*   **Functionality of Tests:** Do the generated tests run correctly within the specified framework?
*   **Coverage (Conceptual):** Do the tests cover a reasonable range of scenarios, including happy paths, edge cases, and error conditions relevant to the unit's logic?
*   **Correctness of Assertions:** Do the assertions accurately reflect the expected behavior of the code unit?
*   **Isolation:** Are dependencies appropriately mocked or handled to ensure the unit is tested in isolation?
*   **Readability & Maintainability:** Is the test code clear, well-named, and easy to understand?
*   **Adherence to Framework Conventions:**
*   **Usefulness:** Would these tests genuinely help in verifying the correctness of the code and preventing regressions?

## 6. Example Output Structure/Format
**Scenario:** User wants unit tests for a simple Python function `add(a, b)` using `unittest`.
*   **User Input:**
    *   Source Code:
        ```python
        def add(a, b):
            """Returns the sum of two numbers."""
            return a + b
        ```
    *   Language: Python
    *   Testing Framework: `unittest`

*   **Cline Generated Unit Tests (Conceptual - would be in a separate test file):**
    ```python
    import unittest
    # Assuming the function 'add' is in a file named 'my_module.py'
    # from my_module import add # Or however the function is imported

    # For demonstration, defining 'add' here if not importing
    def add(a, b):
        return a + b

    class TestAddFunction(unittest.TestCase):

        def test_add_positive_numbers(self):
            """Test adding two positive numbers."""
            self.assertEqual(add(2, 3), 5)
            self.assertEqual(add(100, 200), 300)

        def test_add_negative_numbers(self):
            """Test adding two negative numbers."""
            self.assertEqual(add(-2, -3), -5)
            self.assertEqual(add(-100, -50), -150)

        def test_add_positive_and_negative_number(self):
            """Test adding a positive and a negative number."""
            self.assertEqual(add(5, -3), 2)
            self.assertEqual(add(-7, 4), -3)

        def test_add_zero(self):
            """Test adding zero to a number."""
            self.assertEqual(add(0, 5), 5)
            self.assertEqual(add(5, 0), 5)
            self.assertEqual(add(0, 0), 0)
            self.assertEqual(add(-5, 0), -5)

        # Optional: Test for non-numeric input if error handling is expected
        # def test_add_non_numeric_input(self):
        #     """Test adding non-numeric types (should raise TypeError)."""
        #     with self.assertRaises(TypeError):
        #         add(2, "hello")
        #     with self.assertRaises(TypeError):
        #         add("world", 3)

    if __name__ == '__main__':
        unittest.main()
    ```

---
**Frontmatter for `prompt_inventory.yaml`:**
name: "Unit Test Generation"
path: "prompts/use_cases/content-creation-and-management/code-generation-software-development/unit-test-generation.md"
type: "use_case_guide"
description: "Generates unit tests for a given piece of code (function, method, class) using a specified testing framework."
triggers: ["generate unit tests", "write tests for code", "create test cases", "pytest generation", "jest test generation", "junit tests"]
weight: 100
