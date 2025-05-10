---
description: Guidelines for assisting users in selecting and setting up containerization technology (defaulting to Docker).
author: Cline (AI Assistant)
version: 1.0
tags: ["workflow", "container", "setup"]
globs: []
---

# Container Technology Selection Workflow

## Objective

To guide Cline in assisting the user with selecting and setting up the appropriate containerization technology for their environment, defaulting to Docker as the recommended choice.

## Trigger

This workflow is triggered when the user requests to:
- Set up containerization.
- Choose a containerization technology.
- Install Docker or another container runtime.
- Start working with containers for a project.

## Workflow

1.  **Identify User Preference:**
    *   Check if the user has specified a preferred containerization technology (e.g., "I want to use Podman", "Set up Finch").
    *   If no preference is stated, recommend Docker as the default and explain why (widely used, large community, extensive documentation).
2.  **Check for Installation:**
    *   Use the `execute_command` tool to check if the preferred/default container technology is installed.
    *   Command example (for Docker): `docker --version`
    *   Command example (for Podman): `podman --version`
    *   Command example (for Finch): `finch --version`
3.  **Handle Installation:**
    *   **If Installed:** Inform the user that the technology is installed and ready to use. Proceed to the next relevant container workflow (e.g., creating a Dockerfile).
    *   **If Not Installed:**
        *   Inform the user that the technology is not installed.
        *   Provide instructions or a command to install it. This may require a web search to find the correct installation steps for their operating system (macOS Sonoma, bash shell).
        *   Ask the user for approval to execute the installation command if it requires elevated privileges or significant system changes (`requires_approval: true`).
        *   After installation, verify the installation again (Step 2).
4.  **Document Choice:**
    *   Once the container technology is confirmed to be installed and ready, document the chosen technology (e.g., Docker) in `memory-bank/techContext.md` under a "Containerization" section.

## Dependencies

*   Availability of the `execute_command` tool.
*   Availability of the `ask_followup_question` tool.
*   Internet access for researching installation steps if needed.

## Notes

*   This rule focuses on the initial selection and setup. Subsequent rules in the `200_containers/` series will handle Dockerfile management, image building, and container runtime operations.
*   Cline should be prepared to research installation steps for various container runtimes based on the user's operating system.
