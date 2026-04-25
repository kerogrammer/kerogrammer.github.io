import os
from PIL import Image

output_dir = r"e:\OneDrive\문서\kerogrammer.github.io\assets\img\posts\sw-business-information-repository"
os.makedirs(output_dir, exist_ok=True)

# List of source files
sources = [
    r"C:\Users\kerog\.gemini\antigravity\brain\2c88bde2-7487-4ce5-aeb7-c2534e6f32e7\media__1776599519034.png",
    r"C:\Users\kerog\.gemini\antigravity\brain\2c88bde2-7487-4ce5-aeb7-c2534e6f32e7\media__1776599519052.png",
    r"C:\Users\kerog\.gemini\antigravity\brain\2c88bde2-7487-4ce5-aeb7-c2534e6f32e7\media__1776599519059.png",
    r"C:\Users\kerog\.gemini\antigravity\brain\2c88bde2-7487-4ce5-aeb7-c2534e6f32e7\media__1776599519079.png",
    r"C:\Users\kerog\.gemini\antigravity\brain\2c88bde2-7487-4ce5-aeb7-c2534e6f32e7\thumbnail_spir_png_1776599738698.png"
]

# Desired output names
names = [
    "01-requirements",
    "02-agreement",
    "03-already-user",
    "04-basic-info",
    "thumbnail"
]

for src, name in zip(sources, names):
    if os.path.exists(src):
        try:
            with Image.open(src) as img:
                out_path = os.path.join(output_dir, f"{name}.webp")
                img.save(out_path, "webp", quality=85)
                print(f"Converted {src} -> {out_path}")
        except Exception as e:
            print(f"Error converting {src}: {e}")
    else:
        print(f"Source not found: {src}")
