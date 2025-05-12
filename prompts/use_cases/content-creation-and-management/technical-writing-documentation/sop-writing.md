# Use Case Definition: Standard Operating Procedure (SOP) Writing

**Objective:** To create clear, step-by-step instructions for performing a specific routine task or process consistently and correctly, often for operational, safety, or quality assurance purposes.

## 1. Core Requirements & Quality Indicators

*   **Clarity & Unambiguity:**
    *   Instructions are precise, easy to understand, and leave no room for misinterpretation.
    *   Uses simple, direct language.
*   **Accuracy & Correctness:**
    *   All steps are technically correct and reflect the approved method for performing the task.
*   **Completeness:**
    *   Includes all necessary steps, information, materials, and safety precautions required to perform the task successfully.
*   **Sequential Logic:**
    *   Steps are presented in the correct chronological order.
*   **Action-Oriented:**
    *   Instructions are written using clear, imperative verbs (e.g., "Connect," "Verify," "Record").
*   **Consistency:**
    *   Terminology and formatting are consistent with other SOPs within the organization (if applicable).
*   **Safety & Compliance (if applicable):**
    *   Clearly highlights any safety warnings, required personal protective equipment (PPE), or compliance checkpoints.
*   **Testability/Verifiability:**
    *   It should be possible for someone to follow the SOP and achieve the desired, consistent outcome.
*   **Accessibility:**
    *   Formatted for easy reading and quick reference, often using numbered steps, bullet points, and clear headings.

## 2. Key Stages & Processes Involved

1.  **Define Purpose & Scope of the SOP:**
    *   What specific task or process will this SOP cover?
    *   Who is the target audience for this SOP (e.g., new employees, experienced technicians)?
    *   What is the desired outcome of following this SOP?
2.  **Gather Information:**
    *   Consult with subject matter experts (SMEs), observe the process being performed, review existing (even informal) documentation, and identify all necessary tools, materials, and safety equipment.
3.  **Break Down the Process into Sequential Steps:**
    *   Identify every individual action required to complete the task from start to finish.
    *   Ensure steps are in the correct logical order.
4.  **Draft Each Step Clearly:**
    *   Start each step with an action verb.
    *   Be specific and provide necessary details (e.g., "Tighten the bolt to 10 Nm," not just "Tighten the bolt").
    *   Include any decision points or conditional logic (e.g., "If X, then do Y, otherwise do Z").
5.  **Incorporate Safety Warnings & Precautions:**
    *   Clearly identify any hazards associated with each step or the overall process.
    *   Specify required PPE or safety measures.
    *   Use standardized warning symbols or formatting if applicable.
6.  **Add Supporting Information:**
    *   **Purpose:** Why this SOP exists.
    *   **Scope:** What this SOP covers (and doesn't cover).
    *   **Responsibilities:** Who is responsible for performing the task and ensuring compliance.
    *   **Materials/Equipment Needed:** A list of all required items.
    *   **Definitions/Glossary (if needed):** For any specialized terms.
    *   **References (if any):** To other relevant documents or standards.
7.  **Structure & Format the SOP Document:**
    *   Use a standardized template if available.
    *   Employ clear headings, numbered steps, bullet points, and visual cues (bolding, warnings).
    *   Suggest where diagrams or photos would be beneficial.
8.  **Review & Validate with SMEs and Target Users:**
    *   Have experts review for technical accuracy and completeness.
    *   Have representative users try to perform the task using the draft SOP to identify any ambiguities or missing steps. (AI can simulate a clarity review).
9.  **Finalize, Approve, and Distribute:**
    *   Incorporate feedback, get official approval (if required by organizational process), and make the SOP accessible to relevant personnel. Include version control.

## 3. Inputs Required from User/System

*   **Task/Process to be Documented:**
*   **Target Audience for the SOP:** Their experience level and role.
*   **Key Steps Involved (if known by user, or to be determined by AI from process description):**
*   **Required Materials, Tools, or Equipment:**
*   **Known Safety Hazards or Precautions:**
*   **Desired Outcome of the Process:**
*   **Any Existing Informal Instructions or Notes:**
*   **Company SOP Template or Formatting Guidelines (if any):**
*   **Regulatory or Compliance Requirements (if applicable):**

## 4. Potential Challenges & Considerations

*   **Capturing Tacit Knowledge:** SMEs may perform steps automatically without realizing they are part of the process.
*   **Ensuring All Edge Cases/Variations are Covered (or explicitly excluded):**
*   **Keeping SOPs Up-to-Date:** Processes change, and SOPs must be revised accordingly.
*   **User Comprehension:** Writing for a diverse audience with varying literacy or technical skills.
*   **Overly Complex SOPs:** Making the document too long or difficult to follow can reduce compliance.
*   **Lack of Visuals:** Text-only SOPs can be less effective for complex physical tasks.

## 5. Metrics for Success (How to Evaluate Output)

*   **Clarity & Understandability:** Can a target user easily understand and follow each step?
*   **Accuracy & Correctness:** Are all steps technically sound and safe?
*   **Completeness:** Does the SOP cover all necessary actions, information, and precautions?
*   **Actionability:** Are the instructions specific and imperative?
*   **Consistency (with other SOPs/standards):**
*   **Task Success Rate (Indirect):** If followed correctly, does the SOP lead to the desired, consistent outcome?
*   **Reduction in Errors/Incidents (Indirect):** Effective SOPs should help reduce mistakes and safety incidents related to the task.
*   **Ease of Use:** Is the SOP well-formatted and easy to reference during task performance?

## 6. Example Output Structure/Format
**Scenario:** User needs an SOP for making a backup of a specific server directory.
*   **User Input:**
    *   Task: Daily backup of `/srv/appdata` on `Server01` to `/mnt/backups/Server01/`.
    *   Audience: Junior System Administrators.
    *   Key Tool: `rsync`.
    *   Retention: Keep 7 daily backups.

*   **Cline Generated SOP (Excerpt):**

    ---
    **Standard Operating Procedure**
    **SOP Number:** OPS-BKUP-001
    **Title:** Daily Backup of AppData on Server01
    **Version:** 1.0
    **Effective Date:** {{CURRENT_DATE_YYYY_MM_DD}}
    **Author:** Cline AI
    ---

    **1. Purpose**
    To ensure a consistent and reliable daily backup of the `/srv/appdata` directory on `Server01`.

    **2. Scope**
    This SOP applies to all Junior System Administrators responsible for routine server backups.

    **3. Responsibilities**
    Junior System Administrators are responsible for executing this SOP daily and verifying successful completion. Senior System Administrators are responsible for reviewing backup logs weekly.

    **4. Materials/Equipment Needed**
    *   Access to a terminal with SSH capabilities.
    *   Credentials for user `backupadmin` on `Server01`.
    *   Access to the backup server where `/mnt/backups/` is located.

    **5. Safety Precautions**
    *   Verify correct server and directory paths before executing commands to prevent accidental data overwrite on the wrong target.

    **6. Procedure**

    *   **6.1. Connect to Server01:**
        1.  Open a terminal window.
        2.  SSH into Server01 as the `backupadmin` user:
            ```bash
            ssh backupadmin@Server01
            ```
    *   **6.2. Prepare Backup Directory:**
        1.  Define today's date for the backup folder name (YYYY-MM-DD format):
            ```bash
            TODAY=$(date +%Y-%m-%d)
            ```
        2.  Define the target backup path:
            ```bash
            TARGET_DIR="/mnt/backups/Server01/$TODAY"
            ```
        3.  Create the target directory if it doesn't exist:
            ```bash
            mkdir -p "$TARGET_DIR"
            ```
    *   **6.3. Perform Backup using rsync:**
        1.  Execute the rsync command:
            ```bash
            rsync -avh --delete /srv/appdata/ "$TARGET_DIR/"
            ```
            *   `-a`: Archive mode (preserves permissions, ownership, timestamps, etc.)
            *   `-v`: Verbose output.
            *   `-h`: Human-readable numbers.
            *   `--delete`: Deletes files in the destination if they no longer exist in the source.
        2.  Monitor the output for any errors.
    *   **6.4. Verify Backup (Basic Check):**
        1.  List the contents of the target directory to ensure files are present:
            ```bash
            ls -lR "$TARGET_DIR" | head -n 20 # Display first 20 lines
            ```
        2.  Compare file counts or sizes if a more thorough check is needed (detailed check SOP may be separate).
    *   **6.5. Log Completion:**
        1.  Record the successful completion (or any errors) in the daily operations log, noting the date and time.
    *   **6.6. Manage Old Backups (Retention Policy):**
        1.  List backup directories older than 7 days:
            ```bash
            find /mnt/backups/Server01/ -mindepth 1 -maxdepth 1 -type d -mtime +7
            ```
        2.  **CAUTION:** Before deleting, verify the list.
        3.  Delete old backup directories (example, verify before running):
            ```bash
            # find /mnt/backups/Server01/ -mindepth 1 -maxdepth 1 -type d -mtime +7 -exec rm -rf {} \;
            ```
            *Note: Automated deletion script is preferred and covered in SOP OPS-BKUP-MGMT-002.*

    **7. References**
    *   SOP OPS-BKUP-MGMT-002: Automated Backup Retention Policy

---
**Frontmatter for `prompt_inventory.yaml`:**
name: "Standard Operating Procedure (SOP) Writing"
path: "prompts/use_cases/content-creation-and-management/technical-writing-documentation/sop-writing.md"
type: "use_case_guide"
description: "Creates clear, step-by-step instructions for performing routine tasks consistently and correctly."
triggers: ["write sop", "standard operating procedure", "create procedure document", "task instructions", "process documentation"]
weight: 100
