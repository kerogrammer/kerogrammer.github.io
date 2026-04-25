import os
from PIL import Image

# Paths
input_dir = r"C:\Users\kerog\.gemini\antigravity\brain\30ebae9f-33e0-4b03-951c-b72103d12ddb"
output_dir = r"e:\OneDrive\문서\kerogrammer.github.io\assets\img\posts\small-world-first-play-review"

if not os.path.exists(output_dir):
    os.makedirs(output_dir)

# File Mapping
files = {
    "media__1776614064082.jpg": "01-mid-game.webp",
    "media__1776614064099.jpg": "02-end-game.webp"
}

# Convert body images
for src, dest in files.items():
    src_path = os.path.join(input_dir, src)
    dest_path = os.path.join(output_dir, dest)
    
    print(f"Converting {src} to {dest}...")
    with Image.open(src_path) as img:
        img.thumbnail((1920, 1920))
        img.save(dest_path, "webp", quality=85)

# Create thumbnail from the end-game image (media__1776614064099.jpg)
src_thumb = os.path.join(input_dir, "media__1776614064099.jpg")
dest_thumb = os.path.join(output_dir, "thumbnail.webp")

print(f"Creating thumbnail from {src_thumb}...")
with Image.open(src_thumb) as img:
    # Resize and crop to a nice thumbnail size/aspect if needed, but for now just resize
    img.thumbnail((1200, 1200))
    img.save(dest_thumb, "webp", quality=90)

print("Conversion complete!")
