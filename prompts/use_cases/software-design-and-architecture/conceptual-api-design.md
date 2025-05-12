# Objective
To generate a conceptual design for a RESTful API, focusing on defining resources, HTTP methods, common request/response payloads, and status codes, without generating actual implementation code.

## User Input Requirements
The user needs to provide:
1.  **Purpose of the API:** What service or data will this API expose? (e.g., user management, product catalog, order processing).
2.  **Key Resources:** What are the main entities the API will manage? (e.g., Users, Products, Orders).
3.  **Core Operations/Functionalities:** What are the essential actions that need to be performed on these resources? (e.g., create user, get product details, update order status).
4.  **Data for Each Resource (Conceptual):** What kind of information is associated with each resource? (e.g., for User: name, email, role).
5.  **Authentication/Authorization Needs (Conceptual, Optional):** Any high-level thoughts on who can access what? (e.g., "only admins can delete users," "users can only see their own orders").

## Cline's Workflow/Guidance
1.  **Analyze Input:** Understand the API's purpose, key resources, core operations, and any conceptual data or security requirements.
2.  **Define Resources & Endpoints:**
    *   For each key resource, define the base endpoint path (e.g., `/users`, `/products`, `/orders`).
    *   Identify common CRUD (Create, Read, Update, Delete) operations and map them to standard HTTP methods and endpoint patterns:
        *   `GET /resources`: List all resources.
        *   `POST /resources`: Create a new resource.
        *   `GET /resources/{id}`: Get a specific resource by ID.
        *   `PUT /resources/{id}` or `PATCH /resources/{id}`: Update a specific resource.
        *   `DELETE /resources/{id}`: Delete a specific resource.
    *   Consider any custom actions or nested resources if implied by the user's needs (e.g., `GET /users/{id}/orders`).
3.  **Outline Request/Response Payloads (Conceptual):**
    *   For each endpoint, briefly describe the expected JSON request payload (for POST/PUT) and the typical JSON response payload. Focus on key fields rather than exhaustive detail.
    *   Example for `POST /users`: Request might include `username`, `email`, `password`. Response might include `user_id`, `username`, `email`, `created_at`.
4.  **Identify Common HTTP Status Codes:**
    *   List relevant status codes for typical outcomes:
        *   `200 OK` (Successful GET, PUT, PATCH)
        *   `201 Created` (Successful POST)
        *   `204 No Content` (Successful DELETE)
        *   `400 Bad Request` (Client error, e.g., invalid payload)
        *   `401 Unauthorized` (Authentication required)
        *   `403 Forbidden` (Authenticated but not permitted)
        *   `404 Not Found` (Resource not found)
        *   `500 Internal Server Error` (Server-side issue)
5.  **Mention Authentication (Conceptual):** Briefly note how authentication might be handled (e.g., "Authentication could be token-based (JWT) via an Authorization header").
6.  **Present Conceptual API Design:**
    *   Organize by resource. For each resource, list its endpoints, methods, conceptual payloads, and common status codes.
    *   A simple textual list or a table format can be effective.

## Example Output Structure/Format
**Scenario:** User wants a conceptual API design for a basic task management service.
*   **User Input:**
    *   Purpose: Task management.
    *   Resources: Tasks.
    *   Operations: Create task, list tasks, get task, update task, delete task.
    *   Task Data: title, description, status (e.g., todo, in-progress, done), due_date.

*   **Cline Generated Conceptual API Design:**

    **Conceptual API Design: Task Management Service**

    **Resource: Tasks (`/tasks`)**

    1.  **`GET /tasks`**
        *   **Description:** List all tasks.
        *   **Response Payload (Array of Tasks):** `[{ "task_id", "title", "status", "due_date" }, ...]`
        *   **Status Codes:** `200 OK`

    2.  **`POST /tasks`**
        *   **Description:** Create a new task.
        *   **Request Payload:** `{ "title": "string", "description": "string", "due_date": "date" }`
        *   **Response Payload:** `{ "task_id", "title", "description", "status": "todo", "due_date", "created_at" }`
        *   **Status Codes:** `201 Created`, `400 Bad Request`

    3.  **`GET /tasks/{task_id}`**
        *   **Description:** Get a specific task by its ID.
        *   **Response Payload:** `{ "task_id", "title", "description", "status", "due_date", "created_at", "updated_at" }`
        *   **Status Codes:** `200 OK`, `404 Not Found`

    4.  **`PUT /tasks/{task_id}`** (or `PATCH`)
        *   **Description:** Update an existing task.
        *   **Request Payload:** `{ "title": "string" (optional), "description": "string" (optional), "status": "string" (optional), "due_date": "date" (optional) }`
        *   **Response Payload:** Updated task object.
        *   **Status Codes:** `200 OK`, `400 Bad Request`, `404 Not Found`

    5.  **`DELETE /tasks/{task_id}`**
        *   **Description:** Delete a task.
        *   **Response Payload:** None.
        *   **Status Codes:** `204 No Content`, `404 Not Found`

    **Authentication (Conceptual):**
    *   Endpoints could be protected, requiring a user authentication token (e.g., JWT) passed in an `Authorization` header. Access control might restrict users to only manage their own tasks.

---
**Frontmatter for `prompt_inventory.yaml`:**
name: "Conceptual API Design"
path: "prompts/use_cases/software-design-and-architecture/conceptual-api-design.md"
type: "use_case_guide"
description: "Outlines a conceptual design for a RESTful API, including resources, methods, payload ideas, and status codes."
triggers: ["design api", "conceptual api design", "rest api outline", "api endpoint planning"]
weight: 100
