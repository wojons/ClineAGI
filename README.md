# ClineAGI

ClineAGI is an AI-powered software engineering assistant designed to help users with various development tasks directly within their coding environment.

This repository contains the core application code and configuration for ClineAGI.

## Getting Started

To set up ClineAGI, follow these steps:

1.  **Clone the ClineAGI Repository:**
    ```bash
    git clone https://github.com/wojons/ClineAGI.git
    cd ClineAGI
    ```
2.  **Set up your Memory Bank:**
    *   ClineAGI uses a `memory-bank/` directory to store its knowledge and context. This directory is personal and should not be committed to the main ClineAGI repository.
    *   Clone the Memory Bank Template repository:
        ```bash
        git clone https://github.com/wojons/ClineAGI-MemoryBank-Template.git temp_memory_bank_template
        ```
    *   Create the `memory-bank/` directory and copy the template contents:
        ```bash
        mkdir memory-bank
        cp -R temp_memory_bank_template/. memory-bank/
        rm -rf temp_memory_bank_template
        ```
    *   Initialize your personal master memory bank repository and link it to your own remote (optional but recommended for syncing across machines):
        ```bash
        cd memory-bank
        git init
        # Add your remote URL here (replace <your_memory_bank_repo_url>)
        # git remote add origin <your_memory_bank_repo_url>
        # git push -u origin main # Or your preferred branch
        cd .. # Return to the ClineAGI root directory
        ```
    *   Ensure `memory-bank/` is ignored by the main ClineAGI repository's Git:
        ```bash
        # This should already be in .gitignore, but double-check
        echo "memory-bank/" >> .gitignore
        ```
3.  **Clone the Project Template:**
    *   ClineAGI uses a project template to initialize new user projects. Clone the template repository:
        ```bash
        git clone https://github.com/wojons/ClineAGI-Project-Template.git ClineAGI-Project-Template
        ```
    *   Ensure `ClineAGI-Project-Template/` is ignored by the main ClineAGI repository's Git:
        ```bash
        # This should already be in .gitignore, but double-check
        echo "ClineAGI-Project-Template/" >> .gitignore
        ```
4.  **Install Dependencies:**
    *   (Add instructions for installing ClineAGI's dependencies here - e.g., Node.js, Python, etc.)
5.  **Launch ClineAGI:**
    *   (Add instructions for launching ClineAGI - e.g., VS Code extension)

You are now ready to start using ClineAGI and creating projects!

## .clinerules

The `.clinerules/` directory contains rules and guidelines that govern Cline's behavior and workflows.

## projects/

The `projects/` directory is where user-specific code projects are managed by Cline.

## memory-bank/

The `memory-bank/` directory contains the user's personalized memory and knowledge base for their ClineAGI instance.
