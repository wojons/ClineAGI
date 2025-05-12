# Objective
To generate a conceptual database schema design based on user-provided entities and their relationships. This prompt focuses on identifying entities, attributes, primary keys, foreign keys, and relationship types, not on generating specific SQL DDL.

## User Input Requirements
The user needs to provide:
1.  **Main Purpose of the Database:** What kind of application or system is this database for? (e.g., e-commerce site, blogging platform, project management tool).
2.  **Key Entities:** What are the main objects or concepts that need to be stored? (e.g., Users, Products, Orders, Posts, Comments, Tasks).
3.  **Attributes for Each Entity (Optional but helpful):** What specific pieces of information describe each entity? (e.g., for User: username, email, password_hash, created_at).
4.  **Relationships Between Entities (Optional but helpful):** How do these entities relate to each other? (e.g., "A User can have many Orders," "A Product can be in many Orders," "A Post can have many Comments").
5.  **Specific Requirements (Optional):** Any known constraints, data types to consider (conceptually), or specific features the schema needs to support.

## Cline's Workflow/Guidance
1.  **Analyze Input:** Understand the database purpose, key entities, and any provided attributes or relationships.
2.  **Identify/Refine Entities:** Confirm the list of core entities.
3.  **Define Attributes & Primary Keys:** For each entity:
    *   Suggest common and relevant attributes if not fully provided by the user.
    *   Identify a suitable primary key (e.g., `id`, `user_id`).
4.  **Define Relationships & Foreign Keys:**
    *   For each relationship described or inferred:
        *   Determine the type of relationship (one-to-one, one-to-many, many-to-many).
        *   For one-to-many relationships, identify where the foreign key should reside.
        *   For many-to-many relationships, propose a junction/join table with its own primary keys and foreign keys linking to the related entities.
5.  **Present Conceptual Schema:**
    *   List each entity with its attributes, clearly marking the primary key (PK) and any foreign keys (FK).
    *   Describe the relationships between entities (e.g., "Users (1) -- (M) Orders" or "A User has many Orders. An Order belongs to one User. Foreign Key: `user_id` in Orders table references `id` in Users table.").
    *   A simple Mermaid Entity Relationship Diagram (ERD) can be highly effective here to visualize the schema.
6.  **Focus on Concept:** Reiterate that this is a conceptual schema. Specific data types, indexing, and constraints would be part of a more detailed physical design or SQL DDL generation (which could be a follow-up prompt).

## Example Output Structure/Format
**Scenario:** User wants a conceptual database schema for a simple blog.
*   **User Input:**
    *   Purpose: Simple blogging platform.
    *   Entities: Users, Posts, Comments.
    *   Relationships: A user writes many posts. A post can have many comments. A user can write many comments.

*   **Cline Generated Conceptual Schema Design:**

    **Conceptual Database Schema: Blogging Platform**

    **Entities & Attributes:**

    1.  **Users**
        *   `user_id` (PK)
        *   `username` (e.g., VARCHAR, UNIQUE)
        *   `email` (e.g., VARCHAR, UNIQUE)
        *   `password_hash` (e.g., VARCHAR)
        *   `created_at` (e.g., TIMESTAMP)

    2.  **Posts**
        *   `post_id` (PK)
        *   `author_id` (FK, references Users.user_id)
        *   `title` (e.g., VARCHAR)
        *   `content` (e.g., TEXT)
        *   `published_at` (e.g., TIMESTAMP)
        *   `updated_at` (e.g., TIMESTAMP)

    3.  **Comments**
        *   `comment_id` (PK)
        *   `post_id` (FK, references Posts.post_id)
        *   `commenter_id` (FK, references Users.user_id)
        *   `comment_text` (e.g., TEXT)
        *   `commented_at` (e.g., TIMESTAMP)

    **Relationships:**

    *   **Users (1) -- (M) Posts:** A User can have many Posts. A Post is written by one User.
        *   Implemented by `author_id` in the `Posts` table.
    *   **Posts (1) -- (M) Comments:** A Post can have many Comments. A Comment belongs to one Post.
        *   Implemented by `post_id` in the `Comments` table.
    *   **Users (1) -- (M) Comments:** A User can write many Comments. A Comment is written by one User.
        *   Implemented by `commenter_id` in the `Comments` table.

    **Mermaid ERD (Conceptual):**
    ```mermaid
    erDiagram
        USERS ||--o{ POSTS : writes
        USERS ||--o{ COMMENTS : comments_on
        POSTS ||--o{ COMMENTS : has
        USERS {
            int user_id PK
            string username
            string email
            string password_hash
            datetime created_at
        }
        POSTS {
            int post_id PK
            int author_id FK
            string title
            text content
            datetime published_at
            datetime updated_at
        }
        COMMENTS {
            int comment_id PK
            int post_id FK
            int commenter_id FK
            text comment_text
            datetime commented_at
        }
    ```

---
**Frontmatter for `prompt_inventory.yaml`:**
name: "Conceptual Database Schema Design"
path: "prompts/use_cases/software-design-and-architecture/conceptual-database-schema-design.md"
type: "use_case_guide"
description: "Generates a conceptual database schema design, identifying entities, attributes, keys, and relationships. Can include a Mermaid ERD."
triggers: ["design database schema", "conceptual database design", "database entity relationship diagram", "db schema outline"]
weight: 100
