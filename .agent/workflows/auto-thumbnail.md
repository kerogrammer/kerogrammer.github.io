# Workflow: Auto-Thumbnail System

This workflow automates the generation, conversion, and placement of a post's thumbnail image.

## Entry Point
- User says: "Create a thumbnail for this post" or "Generate an image for the current blog post".

## Steps

1.  **Analyze Content**:
    - Read the title and description (or draft content) of the current post.
    - Extract key themes (e.g., "Dune", "Cyberpunk", "Minimalist Portfolio").

2.  **Generate Image**:
    - Prompt the `generate_image` tool with a detailed prompt based on the extracted themes.
    - Set the `ImageName` to `raw_thumbnail`.

3.  **Optimization and Placement**:
    - Identify the post slug from the active file name.
    - Target Directory: `assets/img/posts/[slug]/`.
    - Use Python/PIL (or reference `convert_script.py` logic) to:
        - Convert the generated image to **WebP**.
        - Resize to **1920x1920** (max dimension).
        - Save as `thumbnail.webp` in the target directory.
    - Delete the `raw_thumbnail` file.

4.  **Update Front Matter**:
    - Ensure the `image.path` and `image.alt` in the post's YAML front matter are correctly set to point to the new thumbnail.

5.  **Finalize**:
    - Show the generated thumbnail to the user and confirm it looks good.
