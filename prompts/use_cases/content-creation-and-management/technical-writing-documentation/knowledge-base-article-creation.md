# Use Case Definition: Knowledge Base Article Creation

**Objective:** To create clear, concise, and informative articles for a knowledge base, addressing specific user questions, problems, or tasks related to a product, service, or topic.

## 1. Core Requirements & Quality Indicators

*   **Problem/Solution Focused:**
    *   Clearly addresses a specific question, issue, or task that a user might have.
    *   Provides a clear solution, explanation, or set of instructions.
*   **Accuracy & Up-to-Date Information:**
    *   Content is technically accurate and reflects the current state of the product/service.
*   **Clarity & Simplicity:**
    *   Written in clear, easy-to-understand language, avoiding unnecessary jargon.
    *   Steps or explanations are straightforward.
*   **Actionability:**
    *   If instructional, provides clear, step-by-step guidance that users can follow.
*   **Conciseness:**
    *   Gets straight to the point and provides necessary information efficiently.
*   **Discoverability (Keywords & Titling):**
    *   Article title and content use keywords that users are likely to search for when encountering the problem or seeking the information.
*   **Proper Formatting & Structure:**
    *   Uses headings, subheadings, bullet points, numbered lists, and bold text to improve readability and scannability.
    *   May include (or suggest inclusion of) screenshots or diagrams where helpful.
*   **Completeness (for the specific issue):**
    *   Provides all necessary information for the user to understand or resolve the specific issue addressed by the article.
*   **Linking to Related Articles (if applicable):**
    *   May suggest links to other relevant knowledge base articles for further information or related issues.

## 2. Key Stages & Processes Involved

1.  **Identify User Need/Problem:**
    *   What specific question, problem, or task will this article address? (This often comes from support tickets, FAQs, user feedback, or product updates).
2.  **Research & Gather Information:**
    *   Collect all necessary factual information, technical details, and procedural steps related to the topic.
3.  **Define Target Audience for the Article:**
    *   Consider the user's likely technical proficiency and prior knowledge.
4.  **Outline Article Structure:**
    *   **Title:** Clear, concise, and keyword-rich. Often phrased as a question or "How to..."
    *   **Introduction/Problem Statement:** Briefly state the issue or question the article addresses.
    *   **Solution/Explanation/Steps:** Provide the core information or instructions.
    *   **Additional Information/Tips (Optional):**
    *   **Related Articles/Resources (Optional):**
5.  **Draft the Content:**
    *   Write clearly and directly.
    *   Use step-by-step instructions for procedures.
    *   Explain any necessary technical terms.
6.  **Incorporate Keywords Naturally:**
    *   Include terms that users would search for.
7.  **Format for Readability:**
    *   Use headings, lists, bold text, etc.
    *   Suggest where screenshots or visuals would be beneficial.
8.  **Review for Accuracy, Clarity, and Completeness:**
    *   Verify all technical information and steps.
    *   Ensure the article fully addresses the intended question/problem.
    *   Proofread for errors.
9.  **Add Metadata (Tags/Categories):**
    *   Assign relevant tags or categories to help with organization and searchability within the knowledge base.

## 3. Inputs Required from User/System

*   **Topic/Problem/Question for the Article:**
*   **Target Audience (e.g., end-users, developers, beginners, advanced users):**
*   **Key Information, Steps, or Solutions to Include:**
*   **Product/Service/Feature the Article Pertains To:**
*   **Relevant Keywords (Optional):**
*   **Any Existing Related Documentation or Internal Notes:**
*   **Desired Tone (e.g., formal, friendly, technical):**

## 4. Potential Challenges & Considerations

*   **Keeping Articles Up-to-Date:** As products/services evolve, knowledge base articles need regular review and updates.
*   **Anticipating All User Questions/Variations:** It's hard to cover every possible scenario.
*   **Balancing Detail with Simplicity:** Providing enough information without overwhelming the user.
*   **Discoverability:** Ensuring users can find the right article when they need it.
*   **Consistency Across Articles:** Maintaining a consistent style, tone, and format across the entire knowledge base.

## 5. Metrics for Success (How to Evaluate Output)

*   **Clarity & Understandability:** Can users easily understand the information provided?
*   **Problem Resolution (Indirect):** Does the article effectively help users solve the specific problem or answer their question?
*   **Accuracy:** Is the technical information correct?
*   **Completeness (for the specific topic):** Does it provide all necessary details for the issue at hand?
*   **Actionability:** If it's a how-to, are the steps clear and easy to follow?
*   **Findability (Title & Keywords):** Is the title descriptive and likely to match user search queries?
*   **Readability & Formatting:** Is the article well-structured and easy to scan?

## 6. Example Output Structure/Format
**Scenario:** User needs a knowledge base article on how to reset a password for "AppX."
*   **User Input:**
    *   Topic: How to reset password for AppX.
    *   Product: AppX
    *   Target Audience: End-users.
    *   Key Steps: Go to login page, click "Forgot Password," enter email, receive reset link, create new password.

*   **Cline Generated Knowledge Base Article:**

    ---
    **Title:** How to Reset Your AppX Password

    **Applies to:** AppX User Accounts

    **Last Updated:** {{CURRENT_DATE_YYYY_MM_DD}}

    ---

    If you've forgotten your password for AppX, you can easily reset it by following these steps:

    1.  **Navigate to the Login Page:**
        *   Open your web browser and go to the AppX login page (e.g., `https://appx.example.com/login`).

    2.  **Click "Forgot Password":**
        *   On the login form, locate and click the link that says "Forgot Password?" or "Reset Password." This is usually found below the password input field.
        *   *(Suggested Screenshot: Login page with "Forgot Password?" link highlighted)*

    3.  **Enter Your Email Address:**
        *   You will be prompted to enter the email address associated with your AppX account.
        *   Type your email address into the field and click "Submit" or "Send Reset Link."
        *   *(Suggested Screenshot: Email input field for password reset)*

    4.  **Check Your Email:**
        *   AppX will send a password reset link to the email address you provided. This email usually arrives within a few minutes.
        *   **Important:** If you don't see the email in your inbox, please check your spam or junk folder.
        *   The email will contain a unique link to reset your password. Click on this link.

    5.  **Create a New Password:**
        *   The link will take you to a page where you can create a new password for your AppX account.
        *   Enter your new password in the designated fields. Ensure it meets any stated complexity requirements (e.g., minimum length, use of numbers or special characters).
        *   Confirm your new password by typing it again.
        *   Click "Save Password" or "Reset Password."
        *   *(Suggested Screenshot: New password creation form)*

    6.  **Login with Your New Password:**
        *   Once your password has been successfully reset, you can return to the AppX login page and sign in with your email address and your new password.

    **Troubleshooting:**

    *   **Didn't receive the reset email?** Double-check your spam/junk folder. Ensure you entered the correct email address associated with your account. If you still don't receive it after 15-20 minutes, try the "Forgot Password" process again or contact AppX support.
    *   **Reset link expired?** Password reset links are often time-sensitive. If the link has expired, you'll need to restart the "Forgot Password" process.

    **Related Articles:**
    *   [[How to Change Your AppX Email Address]]
    *   [[Securing Your AppX Account]]

---
**Frontmatter for `prompt_inventory.yaml`:**
name: "Knowledge Base Article Creation"
path: "prompts/use_cases/content-creation-and-management/technical-writing-documentation/knowledge-base-article-creation.md"
type: "use_case_guide"
description: "Creates clear, concise articles for knowledge bases, addressing specific user questions or problems."
triggers: ["knowledge base article", "write help document", "create faq entry", "how-to guide for product", "troubleshooting article"]
weight: 100
