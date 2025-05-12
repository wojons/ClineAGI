# Use Case Definition: API Documentation Generation

**Objective:** To generate clear, comprehensive, and accurate documentation for an Application Programming Interface (API), detailing its endpoints, request/response formats, authentication methods, parameters, error codes, and usage examples.

## 1. Core Requirements & Quality Indicators

*   **Accuracy & Completeness:**
    *   All public endpoints are documented.
    *   Information about request methods (GET, POST, PUT, DELETE, etc.), parameters, headers, and authentication is correct and complete.
    *   Response formats (e.g., JSON, XML), status codes, and error messages are accurately described.
*   **Clarity & Understandability:**
    *   Documentation is easy for developers to understand, regardless of their familiarity with the API.
    *   Uses clear, concise language and avoids jargon where possible (or explains it).
*   **Actionable Examples:**
    *   Provides practical code examples for common use cases in one or more popular programming languages.
    *   Examples are correct and runnable.
*   **Standardized Format:**
    *   Often follows established API documentation standards or tools (e.g., OpenAPI Specification/Swagger, API Blueprint, Slate, ReadMe.com). AI can generate content suitable for these formats.
*   **Ease of Navigation:**
    *   Well-organized with a clear structure, making it easy for developers to find the information they need (e.g., by endpoint, by resource).
*   **Up-to-Date:**
    *   Documentation accurately reflects the current version and behavior of the API. (AI generates based on provided info; maintenance is key).
*   **Covers Key Aspects:**
    *   **Authentication:** How to authenticate requests.
    *   **Endpoints:** List of all available endpoints with their paths and HTTP methods.
    *   **Request Parameters:** Path parameters, query parameters, request body schema.
    *   **Response Schemas:** Structure of successful responses and error responses.
    *   **Status & Error Codes:** Meaning of different HTTP status codes returned by the API.
    *   **Rate Limiting (if applicable):** Information on usage limits.
    *   **Versioning (if applicable):** How API versions are handled.

## 2. Key Stages & Processes Involved

1.  **Gather API Specifications & Source Code (if available):**
    *   Collect all relevant information about the API: design documents, source code (especially controller/route definitions and data models), existing (even partial) documentation.
2.  **Identify All Endpoints & HTTP Methods:**
    *   List every accessible API endpoint and the HTTP methods it supports.
3.  **Document Each Endpoint:**
    *   For each endpoint:
        *   **Summary/Purpose:** Briefly explain what the endpoint does.
        *   **Path & Method:** (e.g., `GET /users/{id}`).
        *   **Authentication Requirements:**
        *   **Request Parameters:**
            *   Path parameters (e.g., `{id}`): Name, data type, description, required/optional.
            *   Query parameters: Name, data type, description, required/optional.
            *   Request Headers: Name, description, example values.
            *   Request Body: Schema (e.g., JSON object with fields, data types, descriptions), example.
        *   **Responses:**
            *   Success Responses: HTTP status code (e.g., 200 OK, 201 Created), description, response body schema, example.
            *   Error Responses: Possible HTTP status codes (e.g., 400, 401, 404, 500), description, error response body schema, example.
4.  **Document Global Information:**
    *   **Authentication:** Detailed explanation of how to authenticate with the API (e.g., API keys, OAuth 2.0).
    *   **Base URL:**
    *   **Rate Limiting:**
    *   **Versioning Strategy:**
    *   **General Error Handling Principles:**
5.  **Write Code Examples:**
    *   Provide clear, runnable code snippets demonstrating how to call key endpoints in popular languages (e.g., Python, JavaScript, Java, cURL).
6.  **Structure & Organize Documentation:**
    *   Organize by resource, functionality, or endpoint.
    *   Create an overview/introduction.
    *   Ensure easy navigation (e.g., a table of contents, sidebar).
7.  **Review for Accuracy, Clarity, and Completeness:**
    *   Verify all information against the actual API behavior.
    *   Have another developer (or AI in a review role) check for clarity.

## 3. Inputs Required from User/System

*   **API Design Specifications or Source Code:** The most crucial input. This could be OpenAPI specs, controller/route definitions from code, database schemas, etc.
*   **Target Audience for Documentation:** (e.g., internal developers, external partners, public).
*   **List of Programming Languages for Code Examples:**
*   **Authentication Method(s) Used:**
*   **Information about Rate Limiting, Versioning (if applicable):**
*   **Desired Documentation Format/Tool (Optional):** (e.g., "generate Swagger UI compatible JSON," "Markdown for Slate").
*   **Examples of Existing API Documentation Liked by User (Optional):**

## 4. Potential Challenges & Considerations

*   **Keeping Documentation Synchronized with API Changes:** This is a major ongoing challenge. Automated generation from code/specs helps.
*   **Documenting Complex Workflows:** APIs involving multiple chained calls or asynchronous operations can be hard to document clearly.
*   **Technical Accuracy:** Ensuring all parameter names, data types, and response structures are perfectly correct.
*   **Balancing Detail with Simplicity:** Providing enough information without overwhelming the user.
*   **Maintaining Code Examples:** Ensuring examples remain correct as the API or client libraries evolve.

## 5. Metrics for Success (How to Evaluate Output)

*   **Accuracy:** Does the documentation correctly reflect the API's behavior?
*   **Completeness:** Are all necessary aspects (endpoints, params, auth, errors, examples) covered?
*   **Clarity:** Is the documentation easy for a developer to understand and use to integrate with the API?
*   **Actionability of Examples:** Can developers use the code examples to make successful API calls?
*   **Navigability & Organization:** Can information be found quickly?
*   **Adherence to Standards (if specified):** Does it meet OpenAPI or other formatting requirements?
*   **Reduction in Support Questions (Indirect):** Good documentation should reduce the need for developers to ask basic questions about API usage.

## 6. Example Output Structure/Format
**Scenario:** User needs documentation for a `GET /products/{id}` endpoint.
*   **User Input:**
    *   Endpoint: `GET /products/{id}`
    *   Description: Retrieves details for a specific product.
    *   Authentication: API Key in `X-API-KEY` header.
    *   Path Parameter: `id` (integer, required, product's unique identifier).
    *   Successful Response (200 OK): JSON object with `id`, `name`, `description`, `price`.
    *   Error Response (404 Not Found): JSON object with `error`, `message`.
    *   Code Example Language: Python

*   **Cline Generated API Documentation Snippet:**

    ---

    ### Get Product by ID

    Retrieves the details of a specific product identified by its ID.

    **HTTP Request**
    `GET /products/{id}`

    **Authentication**
    Requires an API Key passed in the `X-API-KEY` header.

    **Path Parameters**

    | Parameter | Type    | Required | Description                  |
    | :-------- | :------ | :------- | :--------------------------- |
    | `id`      | Integer | Yes      | The unique identifier of the product. |

    **Responses**

    *   **`200 OK`** - Product details retrieved successfully.
        ```json
        {
          "id": 123,
          "name": "Wireless Noise-Cancelling Headphones",
          "description": "Premium headphones with active noise cancellation and long battery life.",
          "price": 299.99,
          "category": "Electronics"
        }
        ```

    *   **`401 Unauthorized`** - API key is missing or invalid.
        ```json
        {
          "error": "Unauthorized",
          "message": "Valid API key required."
        }
        ```

    *   **`404 Not Found`** - No product found with the specified ID.
        ```json
        {
          "error": "Not Found",
          "message": "Product with ID {id} not found."
        }
        ```

    **Example Request (Python):**
    ```python
    import requests

    api_key = "YOUR_API_KEY"
    product_id = 123
    base_url = "https://api.example.com/v1" # Assuming v1 is part of base URL

    headers = {
        "X-API-KEY": api_key
    }

    response = requests.get(f"{base_url}/products/{product_id}", headers=headers)

    if response.status_code == 200:
        product_data = response.json()
        print("Product Name:", product_data.get("name"))
        print("Price:", product_data.get("price"))
    elif response.status_code == 404:
        print("Error:", response.json().get("message"))
    else:
        print("An error occurred:", response.status_code, response.text)
    ```

---
**Frontmatter for `prompt_inventory.yaml`:**
name: "API Documentation Generation"
path: "prompts/use_cases/content-creation-and-management/technical-writing-documentation/api-documentation-generation.md"
type: "use_case_guide"
description: "Generates comprehensive documentation for APIs, including endpoints, requests, responses, auth, and examples."
triggers: ["api documentation", "document rest api", "swagger generation help", "openapi spec writing", "api reference guide"]
weight: 100
