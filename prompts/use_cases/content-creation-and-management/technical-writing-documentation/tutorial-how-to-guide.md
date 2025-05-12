# Use Case Definition: Tutorial & How-To Guide Creation

**Objective:** To create instructional content that guides a user step-by-step through a specific task, process, or the usage of a feature, enabling them to learn and perform the task successfully.

## 1. Core Requirements & Quality Indicators

*   **Clear Goal/Objective:**
    *   The tutorial has a clearly stated learning objective or task outcome.
*   **Logical Step-by-Step Structure:**
    *   Instructions are broken down into a clear, logical sequence of manageable steps.
*   **Action-Oriented Instructions:**
    *   Each step clearly describes an action the user needs to take. Uses imperative verbs.
*   **Clarity & Simplicity:**
    *   Language is simple, direct, and easy for the target audience to understand.
    *   Avoids jargon or explains it if necessary.
*   **Accuracy & Correctness:**
    *   All steps and information provided are technically accurate and up-to-date.
*   **Completeness:**
    *   Includes all necessary information, prerequisites, and resources needed to complete the task.
*   **Visual Aids (Suggestions for):**
    *   Suggests where screenshots, diagrams, or code snippets would enhance understanding.
*   **Expected Outcomes/Verification:**
    *   Clearly describes what the user should expect to see or achieve after completing each step or the entire tutorial.
    *   May include verification steps.
*   **Troubleshooting/Common Issues (Optional but helpful):**
    *   May address common problems users might encounter and how to resolve them.
*   **Context & Prerequisites:**
    *   Clearly states any prior knowledge, software, or setup required before starting the tutorial.

## 2. Key Stages & Processes Involved

1.  **Define Tutorial Goal & Target Audience:**
    *   What specific skill or task will the user learn?
    *   Who is the tutorial for (e.g., beginner, intermediate, advanced)? What is their existing knowledge?
2.  **Break Down the Task into Core Steps:**
    *   Identify all the major actions and sub-actions required to complete the task from start to finish.
    *   Arrange steps in a logical, chronological order.
3.  **Gather Necessary Information & Assets:**
    *   Collect all technical details, commands, code snippets, and identify where visuals (screenshots, diagrams) would be needed.
4.  **Write an Introduction:**
    *   State the tutorial's objective.
    *   List any prerequisites.
    *   Briefly outline what the user will accomplish.
5.  **Draft Each Step:**
    *   Start each step with a clear action verb.
    *   Provide concise instructions for that action.
    *   Explain the "why" behind a step if it's not obvious.
    *   Describe the expected result of the step.
6.  **Incorporate Visual Cues & Code Snippets:**
    *   Indicate where screenshots or diagrams should be placed.
    *   Format code snippets clearly and ensure they are correct.
7.  **Add Explanations & Context:**
    *   Provide brief explanations for concepts or tools as they are introduced.
8.  **Write a Conclusion/Summary:**
    *   Recap what the user has learned or accomplished.
    *   Suggest next steps or further learning resources.
9.  **Include Troubleshooting/FAQ (Optional):**
    *   Anticipate common problems and provide solutions.
10. **Review & Test (Walkthrough):**
    *   Follow the tutorial steps exactly as written to ensure accuracy, clarity, and completeness. (AI can simulate this by reviewing logic).
    *   Have someone from the target audience test the tutorial if possible.
    *   Proofread for errors.

## 3. Inputs Required from User/System

*   **Task or Process to be Taught:**
*   **Target Audience & Their Assumed Skill Level:**
*   **Specific Software, Tool, or Feature Being Used:**
*   **Key Steps or Workflow (if already partially defined by user):**
*   **Desired Outcome for the User:** What should they be able to do after the tutorial?
*   **Any Specific Points to Emphasize or Avoid:**
*   **Preferred Format (e.g., blog post, knowledge base article, video script outline):**
*   **Code Snippets or Commands to be Included (if available):**

## 4. Potential Challenges & Considerations

*   **Assuming Prior Knowledge:** Incorrectly gauging the target audience's existing knowledge.
*   **Missing Steps:** Overlooking small but crucial steps that are obvious to an expert but not to a beginner.
*   **Lack of Clarity:** Using ambiguous language or unclear instructions.
*   **Outdated Information:** Tutorials can quickly become outdated if the software or process changes.
*   **Overwhelming Detail:** Providing too much information at once.
*   **Insufficient Visuals:** Text-only tutorials for visual tasks can be hard to follow.

## 5. Metrics for Success (How to Evaluate Output)

*   **Task Completion Rate (Indirect):** Can users successfully complete the task by following the tutorial?
*   **Clarity & Understandability:** Are the instructions easy to follow?
*   **Accuracy:** Are all steps and technical details correct?
*   **Completeness:** Does it include all necessary information?
*   **Actionability:** Are the steps clear and direct?
*   **Efficiency:** Can users learn or perform the task relatively quickly using the guide?
*   **User Confidence:** Does the tutorial empower the user and build their confidence?
*   **Reduction in Support/Help Requests (Indirect):**

## 6. Example Output Structure/Format
**Scenario:** User wants a tutorial on how to create a new Git branch and push it to a remote repository.
*   **User Input:**
    *   Task: Create a new Git branch, make a commit, and push it to GitHub.
    *   Target Audience: Beginner Git users.
    *   Tools: Git command line, GitHub.

*   **Cline Generated Tutorial (Excerpt):**

    ---
    **Title: How to Create and Push a New Git Branch to GitHub**

    This tutorial will guide you through the process of creating a new branch in your local Git repository, making changes, committing them, and then pushing the new branch to your remote repository on GitHub.

    **Prerequisites:**
    *   Git installed on your computer.
    *   An existing local Git repository connected to a remote GitHub repository.
    *   Basic understanding of Git concepts (commit, repository).

    **Steps:**

    1.  **Navigate to Your Local Repository:**
        *   Open your terminal or command prompt.
        *   Use the `cd` command to navigate into the directory of your local Git project.
            ```bash
            cd path/to/your/project
            ```

    2.  **Ensure Your Main Branch is Up-to-Date (Optional but Recommended):**
        *   It's good practice to start new branches from an up-to-date main branch (often called `main` or `master`).
            ```bash
            git checkout main
            git pull origin main
            ```

    3.  **Create a New Branch:**
        *   Use the `git checkout -b` command followed by your desired branch name. This command creates the new branch and immediately switches you to it.
            *Example: To create a branch named `feature/new-login-page`*
            ```bash
            git checkout -b feature/new-login-page
            ```
        *   *Verification:* You can confirm you are on the new branch by typing `git branch`. The current branch will have an asterisk (*) next to it.

    4.  **Make Your Code Changes:**
        *   Work on your files as usual. Add new files, modify existing ones, etc., for the feature or fix you are working on.

    5.  **Stage Your Changes:**
        *   Once you've made your changes, you need to "stage" them for commit. This tells Git which changes you want to include in the next commit.
            *To stage all changes:*
            ```bash
            git add .
            ```
            *To stage a specific file:*
            ```bash
            git add path/to/your/file.txt
            ```

    6.  **Commit Your Changes:**
        *   Commit your staged changes with a descriptive message.
            ```bash
            git commit -m "Implement new login page design"
            ```

    7.  **Push the New Branch to GitHub:**
        *   The first time you push a new local branch, you need to tell Git which remote repository and remote branch to push to. The `-u` (or `--set-upstream`) option sets up tracking for future pushes.
            ```bash
            git push -u origin feature/new-login-page
            ```
            *(Replace `feature/new-login-page` with your actual branch name).*
        *   For subsequent pushes on this branch, you can simply use `git push`.

    8.  **Verify on GitHub:**
        *   Open your repository on GitHub in a web browser. You should see a notification about your recently pushed branch, often with an option to create a Pull Request.

    **Congratulations!** You've successfully created a new branch, committed changes, and pushed it to GitHub.

---
**Frontmatter for `prompt_inventory.yaml`:**
name: "Tutorial & How-To Guide Creation"
path: "prompts/use_cases/content-creation-and-management/technical-writing-documentation/tutorial-how-to-guide.md"
type: "use_case_guide"
description: "Creates step-by-step instructional content to guide users through a specific task, process, or feature usage."
triggers: ["create tutorial", "how-to guide", "step-by-step instructions", "write a guide for", "product tutorial"]
weight: 100
