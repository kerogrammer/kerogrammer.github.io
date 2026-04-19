# Jekyll Post Format Rules

All blog posts must adhere to the following structure and naming conventions to ensure consistency and proper rendering by Jekyll.

## File Naming Convention
- Format: `YYYY-MM-DD-slug-title.md`
- Example: `2026-04-19-my-new-post.md`
- Use only lowercase letters, numbers, and hyphens.

## Directory Structure
- All posts must be located in the `_posts/` directory.
- Images related to a post must be placed in `assets/img/posts/{post-slug}/`.

## YAML Front Matter Requirements
Every post must include a YAML front matter block at the very top of the file.

### Required Fields
- `layout`: Must be `post`.
- `title`: The title of the post (use quotes if it contains special characters).
- `date`: Format `YYYY-MM-DD HH:MM:SS +0900`.
- `categories`: An array of categories (e.g., `[Daily, Tech]`).
- `tags`: An array of descriptive tags.
- `description`: A 1-2 sentence summary for SEO and preview.
- `series`: (Optional but recommended) The series name if the post is part of a series.

### Image Field
- `image`:
    - `path`: Path to the thumbnail image (e.g., `/assets/img/posts/my-new-post/thumbnail.webp`).
    - `alt`: Descriptive alt text for the thumbnail.

## Markdown Guidelines
- Use ATX-style headers (`#`, `##`, `###`).
- Ensure there is an `<h1>` (title) and logical hierarchy.
- Use `---` for horizontal rules to separate logical sections.
