# Workflow: Pre-Publish Checklist

This workflow performs a final quality and technical check before a post is deployed to GitHub Pages.

## Entry Point
- User says: "Check this post before I publish" or "Ready to publish".

## Steps

1.  **YAML Front Matter Check**:
    - Validate `title`, `date`, `categories`, `description`, and `image` are present.
    - Check if `date` is correctly formatted.
    - Ensure `description` is between 120-160 characters.

2.  **Image Path Validation**:
    - Verify that all image paths in the markdown (and the thumbnail path) actually exist in the `assets/` directory.
    - Check if images are in **WebP** format. Warn user if PNG/JPG are used.

3.  **Link Checking**:
    - Scan for internal links (`/posts/...`) and verify they seem valid.
    - (Optional) Check external links if possible.

4.  **Tone and Style Review**:
    - Briefly scan for forbidden "AI-ish" phrases (e.g., "할 수 있습니다").
    - Suggest alternatives if found.

5.  **SEO Check**:
    - Verify header hierarchy (`##` -> `###`).
    - Check for alt text on all images.

6.  **Summary Report**:
    - Present a summary of findings:
        - `[OK]` Front Matter
        - `[OK]` Images
        - `[WARNING]` Description length (if too short/long)
        - `[WARNING]` Non-WebP images found
    - Ask the user: "Would you like me to fix the warnings automatically?"
