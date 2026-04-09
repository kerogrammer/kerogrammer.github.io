import os
from PIL import Image

image_dir = r"C:\Users\kerog\Documents\kerogrammer.github.io\assets\img\posts\dune-imperium-digital-season28-game3"

file_map = {
    "Screenshot_20260407_114616_Dune Imperium.png": "01-modifiers",
    "Screenshot_20260409_105359_Dune Imperium.png": "02-leader",
    "Screenshot_20260409_105503_Dune Imperium.png": "03-round1-start",
    "Screenshot_20260409_105511_Dune Imperium.png": "04-round1-card",
    "Screenshot_20260409_105539_Dune Imperium.png": "05-round1-result",
    "Screenshot_20260409_105733_Dune Imperium.png": "06-round2-start",
    "Screenshot_20260409_105725_Dune Imperium.png": "07-round2-card",
    "Screenshot_20260409_105739_Dune Imperium.png": "08-round2-result",
    "Screenshot_20260409_105931_Dune Imperium.png": "09-round3-start",
    "Screenshot_20260409_105915_Dune Imperium.png": "10-round3-card",
    "Screenshot_20260409_105937_Dune Imperium.png": "11-round3-result",
    "Screenshot_20260409_110206_Dune Imperium.png": "12-round4-start",
    "Screenshot_20260409_110408_Dune Imperium.png": "13-round4-result",
    "Screenshot_20260409_110727_Dune Imperium.png": "14-round5-start",
    "Screenshot_20260409_110736_Dune Imperium.png": "15-round5-result",
    "Screenshot_20260409_111054_Dune Imperium.png": "16-round6-start",
    "Screenshot_20260409_111114_Dune Imperium.png": "17-round6-card",
    "Screenshot_20260409_111130_Dune Imperium.png": "18-round6-result",
    "Screenshot_20260409_111419_Dune Imperium.png": "19-round7-start",
    "Screenshot_20260409_111442_Dune Imperium.png": "20-round7-result",
    "Screenshot_20260409_112135_Dune Imperium.png": "21-round8",
    "Screenshot_20260409_185715_Dune Imperium.png": "22-round9-start",
    "Screenshot_20260409_190213_Dune Imperium.png": "23-round9-twist",
    "Screenshot_20260409_190853_Dune Imperium.png": "24-round10-start",
    "Screenshot_20260409_190900_Dune Imperium.png": "25-round10-result",
    "Screenshot_20260409_190916_Dune Imperium.png": "26-final-score",
    "Screenshot_20260409_190925_Dune Imperium.png": "27-skirmish-points",
    "Screenshot_20260409_191001_Dune Imperium.png": "28-season-ranking"
}

for old_name, new_name in file_map.items():
    old_path = os.path.join(image_dir, old_name)
    new_path = os.path.join(image_dir, f"{new_name}.webp")
    
    if os.path.exists(old_path):
        print(f"Converting {old_name} to {new_name}.webp...")
        with Image.open(old_path) as img:
            # Resize appropriately if it's too big, say max width 1920
            img.thumbnail((1920, 1920))
            img.save(new_path, "webp", quality=80)
        os.remove(old_path)
    else:
        print(f"Skipped: {old_name} not found.")

print("All conversions complete!")
