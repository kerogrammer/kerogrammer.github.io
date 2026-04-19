# Workflow: Create New Post

This workflow automates the process of creating a new blog post file with the correct metadata and structure.

## Entry Point
- User says: "Create a new post about [Topic]" or "Start a new blog post titled [Title]".

## Steps

1.  **Gather Information**:
    - Ask the user for:
        - Post Title
        - Categories (e.g., Daily, Tech, Games)
        - Series name (if any)
    - Automatically determine:
        - Date: Current datetime in `YYYY-MM-DD HH:MM:SS +0900`
        - Slug: URL-friendly version of the title

2.  **Generate File**:
    - Create a file in `_posts/` with the name `YYYY-MM-DD-{slug}.md`.
    - Populate with standard Jekyll Front Matter:
        ```yaml
        ---
        layout: post
        title: "[Title]"
        date: YYYY-MM-DD HH:MM:SS +0900
        categories: [Categories]
        tags: []
        image:
          path: /assets/img/posts/[slug]/thumbnail.webp
          alt: "[Title]"
        description: ""
        series: [Series]
        ---
        ```

3.  **Prepare Directory**:
    - Create the image directory: `assets/img/posts/[slug]/`.

4.  **Skeleton Content**:
    - Add a basic structure to the body:
        ```markdown
        ## 서론
        (기본 서론을 작성합니다.)

        ---

        ## 본문
        (섹션을 나누어 상세 내용을 작성합니다.)

        ---

        ## 마무리
        (배운 점이나 향후 계획을 정리합니다.)
        ```

5.  **Finalize**:
    - Open the newly created file for the user.
    - Reminder: Prompt the user to add a description and tags.
