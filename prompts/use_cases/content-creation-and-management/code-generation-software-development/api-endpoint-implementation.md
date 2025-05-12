# Use Case Definition: API Endpoint Implementation

**Objective:** To generate server-side code for implementing a specific API endpoint (e.g., for a RESTful or GraphQL API), including request handling, business logic, data access (conceptually), and response generation.

## 1. Core Requirements & Quality Indicators

*   **Correct Routing & Method Handling:**
    *   Code correctly maps to the specified URL path and HTTP method (GET, POST, PUT, DELETE, etc. for REST) or GraphQL query/mutation.
*   **Request Data Parsing & Validation:**
    *   Properly extracts and validates data from request parameters (path, query), request body, and headers.
    *   Handles missing or invalid data gracefully.
*   **Business Logic Implementation:**
    *   Accurately implements the core logic associated with the endpoint's purpose.
*   **Data Access/Manipulation (Conceptual):**
    *   Includes placeholders or clear indications of where database interactions or calls to other services would occur. (AI doesn't directly interact with live databases).
*   **Response Generation:**
    *   Constructs and returns responses in the correct format (e.g., JSON, XML) with appropriate HTTP status codes.
    *   Handles success and error responses correctly.
*   **Error Handling:**
    *   Includes robust error handling for common issues (e.g., invalid input, resource not found, server errors).
*   **Security Considerations (Basic):**
    *   Suggests or implements basic security practices like input sanitization (conceptual), and notes where authentication/authorization checks should occur.
*   **Adherence to Framework/Language Conventions:**
    *   Code follows the idiomatic style and best practices of the specified server-side language and framework (e.g., Node.js/Express, Python/Flask/Django, Java/Spring, Ruby/Rails).
*   **Readability & Maintainability:**
    *   Generated code is well-structured, commented where necessary, and easy to understand.

## 2. Key Stages & Processes Involved

1.  **Understand Endpoint Requirements:**
    *   What is the purpose of this endpoint?
    *   What is its URL path and HTTP method (for REST)? Or its GraphQL schema definition?
    *   What are the expected request parameters, headers, and body?
    *   What are the expected success and error responses (format, status codes)?
    *   What business logic needs to be performed?
2.  **Select Language, Framework, and Key Libraries:**
3.  **Set Up Route Handler/Resolver:**
    *   Write the basic function or class method that will handle requests to this endpoint.
4.  **Implement Request Parsing & Validation:**
    *   Add code to extract data from the request (path params, query params, body, headers).
    *   Validate the data (e.g., check for required fields, correct data types, value ranges). Return appropriate error responses for invalid data.
5.  **Implement Core Business Logic:**
    *   Write the code that performs the main task of the endpoint.
    *   This may involve calculations, data transformations, or orchestrating calls to other services or data layers.
6.  **Integrate Data Access (Conceptual):**
    *   Add comments or placeholder functions indicating where database reads/writes or other service calls would occur (e.g., `// TODO: Fetch user from database by ID`, `data = await userService.getUser(userId)`).
7.  **Construct & Return Responses:**
    *   Based on the outcome of the business logic, create the appropriate success or error response.
    *   Set the correct HTTP status code and response body (e.g., JSON).
8.  **Implement Error Handling:**
    *   Wrap logic in try-catch blocks or use framework-specific error handling mechanisms to manage exceptions and return meaningful error responses.
9.  **Add Security Notes/Placeholders:**
    *   Comment where authentication and authorization checks should be performed.
10. **Review & Refine Code:**
    *   Check for correctness, clarity, security considerations, and adherence to conventions.

## 3. Inputs Required from User/System

*   **Endpoint Definition:**
    *   **For REST:** URL path (e.g., `/users/{id}`), HTTP method (e.g., GET, POST).
    *   **For GraphQL:** Type definition (e.g., `type User { id: ID!, name: String }`), query/mutation definition (e.g., `user(id: ID!): User`).
*   **Request Details:**
    *   Expected path parameters, query parameters, request headers.
    *   Schema for the request body (if any), including field names and data types.
*   **Response Details:**
    *   Schema for success response body, including HTTP status code.
    *   Schemas for potential error responses, including HTTP status codes.
*   **Description of Business Logic:** What the endpoint should do.
*   **Programming Language & Server-Side Framework:** (e.g., Node.js with Express, Python with Flask).
*   **Database Interaction Points (Conceptual):** What kind of data operations are expected (e.g., "fetch user by ID," "create new product record").
*   **Authentication/Authorization Requirements (Conceptual):** (e.g., "requires admin role," "user can only access their own data").

## 4. Potential Challenges & Considerations

*   **Complexity of Business Logic:** Implementing highly complex logic accurately.
*   **Database/Service Integration:** AI can only generate placeholders for these; actual integration is a developer task.
*   **Security:** Ensuring robust security (authentication, authorization, input validation, protection against common vulnerabilities like injection attacks) requires careful design beyond basic AI generation.
*   **Scalability & Performance:** Designing endpoints that perform well under load.
*   **Idempotency (for PUT/DELETE etc.):** Ensuring operations have the correct semantics.
*   **Transaction Management (if multiple data operations):**

## 5. Metrics for Success (How to Evaluate Output)

*   **Correctness of Routing & Request Handling:** Does the code correctly map to the path/method and parse request data?
*   **Implementation of Business Logic:** Does the generated code accurately reflect the described logic?
*   **Appropriate Response Generation:** Are success and error responses handled correctly with proper status codes and formats?
*   **Error Handling Robustness:** Does it include basic error handling?
*   **Code Quality & Readability:** Is the code well-structured and understandable?
*   **Adherence to Framework Conventions:**
*   **Security Awareness:** Are there notes or placeholders for essential security checks like authentication/authorization?
*   **Completeness (for the endpoint's scope):** Does it provide a solid starting point for a developer to complete the endpoint, including data integration?

## 6. Example Output Structure/Format
**Scenario:** User wants to implement a `POST /users` endpoint in Node.js with Express.
*   **User Input:**
    *   Endpoint: `POST /users`
    *   Request Body Schema: `{ "username": "string", "email": "string", "password": "string" }`
    *   Success Response: `201 Created` with `{ "user_id", "username", "email", "created_at" }`
    *   Business Logic: Create a new user record. Hash password before saving.
    *   Language/Framework: Node.js with Express
    *   Database Interaction: Conceptually save user to a database.

*   **Cline Generated Node.js/Express Code Snippet:**
    ```javascript
    const express = require('express');
    const router = express.Router();
    // Assume bcrypt for password hashing and some form of DB utility (e.g., db.js)
    // const bcrypt = require('bcryptjs');
    // const db = require('../db'); // Conceptual database utility

    router.post('/users', async (req, res) => {
        const { username, email, password } = req.body;

        // 1. Validate input
        if (!username || !email || !password) {
            return res.status(400).json({ error: 'Username, email, and password are required.' });
        }

        // TODO: Add more robust validation (e.g., email format, password strength)

        try {
            // 2. Check if user already exists (Conceptual DB call)
            // const existingUser = await db.query('SELECT * FROM users WHERE email = $1', [email]);
            // if (existingUser.rows.length > 0) {
            //     return res.status(409).json({ error: 'User with this email already exists.' });
            // }

            // 3. Hash password
            // const salt = await bcrypt.genSalt(10);
            // const hashedPassword = await bcrypt.hash(password, salt);

            // 4. Save user to database (Conceptual DB call)
            // const newUser = await db.query(
            //     'INSERT INTO users (username, email, password_hash) VALUES ($1, $2, $3) RETURNING user_id, username, email, created_at',
            //     [username, email, hashedPassword]
            // );

            // Placeholder for successful creation
            const createdUser = {
                user_id: Date.now(), // Placeholder ID
                username: username,
                email: email,
                created_at: new Date().toISOString()
            };

            // 5. Return success response
            res.status(201).json(createdUser);

        } catch (err) {
            console.error('Error creating user:', err.message);
            res.status(500).json({ error: 'Failed to create user.' });
        }
    });

    module.exports = router;
    ```

---
**Frontmatter for `prompt_inventory.yaml`:**
name: "API Endpoint Implementation"
path: "prompts/use_cases/content-creation-and-management/code-generation-software-development/api-endpoint-implementation.md"
type: "use_case_guide"
description: "Generates server-side code for a specific API endpoint, including request handling, business logic, and response generation."
triggers: ["implement api endpoint", "create api route", "backend endpoint code", "rest endpoint", "graphql resolver code"]
weight: 100
