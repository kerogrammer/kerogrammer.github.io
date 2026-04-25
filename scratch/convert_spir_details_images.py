import os
from PIL import Image

output_dir = r"e:\OneDrive\문서\kerogrammer.github.io\assets\img\posts\sw-business-information-registration-details"
os.makedirs(output_dir, exist_ok=True)

# List of source files
sources = [
    r"C:\Users\kerog\.gemini\antigravity\brain\2c88bde2-7487-4ce5-aeb7-c2534e6f32e7\media__1776599690781.png",
    r"C:\Users\kerog\.gemini\antigravity\brain\2c88bde2-7487-4ce5-aeb7-c2534e6f32e7\media__1776599690774.png",
    r"C:\Users\kerog\.gemini\antigravity\brain\2c88bde2-7487-4ce5-aeb7-c2534e6f32e7\thumbnail_spir_details_png_1776599846670.png"
]

# Desired output names
names = [
    "01-registration-status",
    "02-security-faq",
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
