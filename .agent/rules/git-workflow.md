# Git Workflow Rules

To ensure clear communication and maintain a consistent history, all Git operations must follow these rules.

## Commit Messages
- **Language**: All commit messages (subject and body) MUST be written in **Korean**.
- **Structure**:
    - **Subject**: A concise summary of the change (max 50 characters).
    - **Body**: (Optional but encouraged) A detailed explanation of why the change was made and any technical details.
- **Tone**: Use a professional yet accessible tone.

## Branching and Merging
- Main development happens on the `main` or `master` branch (check the current default branch).
- For significant features or experiments, use descriptive branch names in English (e.g., `feature/new-layout`, `fix/broken-images`).

## Synchronization
- Always `pull` before starting work to avoid conflicts.
- `push` changes regularly after verifying them locally.
