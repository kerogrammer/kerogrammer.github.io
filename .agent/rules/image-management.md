# Image Management Rules

Efficient image management is crucial for blog performance and organization.

## Format and Compression
- **Preferred Format**: Always use **WebP** for blog post images.
- **Conversion**: Use the `convert_script.py` located at the root to convert PNG/JPG images to WebP and resize them (max width 1920px).
- **Quality**: Target a quality setting of 80 to balance size and visual fidelity.

## Organization
- Images MUST be stored in a sub-folder named with the post date and slug:
  `assets/img/posts/YYYY-MM-DD-{post-slug}/`
- The main thumbnail should be named `thumbnail.webp`.

## Metadata and Accessibility
- Every image in a post must have meaningful `alt` text.
- Image paths in markdown should be relative to the root or use absolute paths starting with `/assets/...`.

## Cleanup
- Original high-resolution PNG or JPG files should be removed from the repository after successful conversion to WebP to save space.
