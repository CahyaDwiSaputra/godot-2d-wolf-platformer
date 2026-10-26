# 🐺 Godot 2D Wolf Platformer

A responsive 2D platformer game built using **Godot Engine 4.4 (GL Compatibility)** featuring custom wolf character animations, dynamic parallax background layers, obstacle navigation, and state-driven game menus.

---

## 🎮 Game Features
- **Player Character (Wolf)**:
  - Multi-state animations: *Idle (Left/Right)*, *Run (Left/Right)*, *Attack*, *Hurt*, and *Death*.
  - Smooth 2D physics controls utilizing Godot 4 `CharacterBody2D`.
- **Environment & Graphics**:
  - Multi-layered **Parallax Background**: Sky, Mountain, Cloud, and Foreground parallax scrolling.
  - Creaking Crypt and Sprout Lands tileset integration for platforms and terrain.
- **Game Flow & UI**:
  - Interactive Start Menu with Start (`Mulai`), Options, and Exit handling.
  - Dedicated stage transition scenes.

---

## 🛠️ Tech Stack & Requirements
- **Engine**: [Godot Engine 4.4+](https://godotengine.org/)
- **Renderer**: GL Compatibility
- **Language**: GDScript

---

## 🚀 How to Run
1. Download or clone this repository:
   ```bash
   git clone https://github.com/CahyaDwiSaputra/godot-2d-wolf-platformer.git
   ```
2. Open **Godot Engine 4.4+**.
3. Click **Import** -> Navigate to the cloned directory -> Select `project.godot`.
4. Click **Import & Edit**.
5. Press **F5** (or click the Play button in top-right) to launch the game.

### 🕹️ Controls
- **Move Left / Right**: `A` / `D` or Left / Right Arrow keys
- **Jump**: `Space` / `W` / Up Arrow
- **Attack**: Left Mouse Click / Action Key

---

## 📂 Project Structure
```text
├── character_body_2d.gd      # Main player movement & physics controller
├── character_body_2d.tscn    # Player scene
├── start_menu.tscn           # Main menu scene
├── game.tscn                 # Primary gameplay stage scene
├── parallax_2d.tscn          # Parallax background setup
├── Wolf/                     # Sprite frames and animations
├── parallax/                 # High-resolution background art layers
├── creaking_crypt/           # Platform tilesets and textures
├── project.godot             # Godot engine project configuration
└── .gitignore
```

---

## 👤 Author
- **Cahya Dwi Saputra**
