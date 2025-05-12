# Use Case Definition: Release Notes & Changelog Generation

**Objective:** To generate clear, concise, and informative release notes or a changelog for a software product, detailing new features, improvements, bug fixes, and any breaking changes in a specific version or release.

## 1. Core Requirements & Quality Indicators

*   **Accuracy & Completeness:**
    *   All significant changes (new features, bug fixes, improvements, deprecations, breaking changes) for the release are included.
    *   Information is technically accurate.
*   **Clarity & Conciseness:**
    *   Written in clear, easy-to-understand language.
    *   Avoids excessive jargon or overly technical descriptions unless the target audience is highly technical.
    *   Highlights the most important changes for users.
*   **User-Centric Language:**
    *   Focuses on the benefits and impact of changes from the user's perspective.
    *   Explains "what's in it for them."
*   **Structured Format:**
    *   Organized logically, typically by category (e.g., New Features, Improvements, Bug Fixes, Breaking Changes).
    *   Uses headings, bullet points, and consistent formatting for readability.
*   **Actionable Information (if applicable):**
    *   If there are breaking changes or actions users need to take, these are clearly communicated.
    *   May link to more detailed documentation or migration guides.
*   **Version Specificity:**
    *   Clearly indicates the product version to which the notes apply.
*   **Tone Appropriateness:**
    *   Maintains a professional and informative tone, appropriate for the product and company.

## 2. Key Stages & Processes Involved

1.  **Gather Information about Changes:**
    *   Collect data from commit logs, issue trackers (e.g., Jira, GitHub Issues), pull requests, developer notes, and product management specifications.
2.  **Categorize Changes:**
    *   Group changes into logical categories:
        *   `New Features` or `Added`
        *   `Improvements` or `Changed`
        *   `Bug Fixes` or `Fixed`
        *   `Deprecated` (features planned for removal)
        *   `Removed` (features removed in this version)
        *   `Security` (security-related fixes)
        *   `Breaking Changes` (critical for users to know)
3.  **Write Descriptions for Each Change:**
    *   For each item, write a brief, clear description of the change and its impact or benefit to the user.
    *   Link to relevant issue numbers or pull requests if appropriate (common in changelogs).
4.  **Highlight Key Features/Changes:**
    *   If there are major new features or significant improvements, give them more prominence.
5.  **Draft Introduction & Conclusion (Optional):**
    *   A brief introduction summarizing the release.
    *   A concluding remark, perhaps pointing to future plans or where to get support.
6.  **Structure and Format:**
    *   Organize the notes with clear headings for each category.
    *   Use bullet points for individual items within categories.
    *   Ensure consistent formatting.
7.  **Review for Accuracy, Clarity, and Completeness:**
    *   Verify that all significant changes are included and accurately described.
    *   Check for clarity and conciseness.
    *   Proofread for typos and grammatical errors.
8.  **Add Version Number and Release Date:**

## 3. Inputs Required from User/System

*   **List of Changes:** This is the primary input. It can be a list of commit messages, issue tracker tickets, pull request summaries, or a manually compiled list of features/fixes.
*   **Product Name and Version Number:**
*   **Release Date:**
*   **Previous Version Number (for comparison, if generating a diff-like changelog):**
*   **Target Audience:** (e.g., end-users, developers, internal team).
*   **Desired Format/Style:** (e.g., formal release notes, developer-focused changelog, marketing-oriented announcement).
*   **Categorization Scheme (if specific preferences exist):**
*   **Links to Issue Tracker/PRs (Optional, for changelogs):**

## 4. Potential Challenges & Considerations

*   **Gathering Comprehensive Change Information:** Ensuring no significant changes are missed, especially in large projects.
*   **Translating Technical Changes into User Benefits:** Explaining the value of changes in a way users understand.
*   **Handling Breaking Changes:** Communicating these clearly and providing guidance for users.
*   **Consistency in Detail and Tone:** Maintaining a uniform style across all entries.
*   **Timeliness:** Release notes should be available at the time of release.
*   **Audience Variation:** Different audiences (technical vs. non-technical) may need different levels of detail or different language.

## 5. Metrics for Success (How to Evaluate Output)

*   **Accuracy & Completeness:** Are all important changes for the version included and correctly described?
*   **Clarity:** Can users easily understand what has changed and how it affects them?
*   **Usefulness:** Do the notes provide valuable information to users about the new release?
*   **Organization & Readability:** Is the information well-structured and easy to scan?
*   **Actionability:** If actions are required from users (e.g., for breaking changes), are these clearly communicated?
*   **Professionalism:** Do the notes reflect positively on the product and company?

## 6. Example Output Structure/Format
**Scenario:** User needs release notes for version 1.2.0 of "PhotoMagicApp."
*   **User Input:**
    *   Product: PhotoMagicApp
    *   Version: 1.2.0
    *   Release Date: {{CURRENT_DATE_YYYY_MM_DD}}
    *   Changes:
        *   New: Added "Vintage Film" filter pack. (Issue #101)
        *   Improved: Faster image processing for large RAW files. (Issue #105)
        *   Fixed: Crash when applying "Sharpen" filter to panoramic images. (Issue #98)
        *   Fixed: Incorrect color balance on some imported HEIC files. (Issue #102)
        *   Security: Addressed a vulnerability in the image metadata parser. (Issue #110)

*   **Cline Generated Release Notes:**

    ---
    **PhotoMagicApp - Version 1.2.0 Release Notes**

    **Release Date:** {{CURRENT_DATE_YYYY_MM_DD}}

    We're excited to announce the release of PhotoMagicApp version 1.2.0! This update brings new creative options, performance enhancements, and important bug fixes.

    **✨ New Features**
    *   **Vintage Film Filter Pack:** Explore a new collection of stunning vintage film filters to give your photos a classic, nostalgic look. (Related to #101)

    **🚀 Improvements**
    *   **Enhanced RAW File Processing:** Experience significantly faster processing speeds when working with large RAW image files, getting you to your edits quicker. (Related to #105)

    **🐞 Bug Fixes**
    *   Fixed an issue that could cause the application to crash when applying the "Sharpen" filter to panoramic images. (Related to #98)
    *   Resolved a problem where incorrect color balance was sometimes applied to imported HEIC files. (Related to #102)

    **🔒 Security**
    *   Addressed a security vulnerability related to the parsing of image metadata. We recommend all users update to ensure the security of their application. (Related to #110)

    ---
    Thank you for using PhotoMagicApp! We're always working to improve your photo editing experience. For feedback or support, please visit our community forum or contact our support team.

---
**Frontmatter for `prompt_inventory.yaml`:**
name: "Release Notes & Changelog Generation"
path: "prompts/use_cases/content-creation-and-management/technical-writing-documentation/release-notes-changelog.md"
type: "use_case_guide"
description: "Generates release notes or changelogs for software, detailing new features, fixes, and changes for a specific version."
triggers: ["release notes", "changelog generation", "software update notes", "what's new in version", "product update summary"]
weight: 100
