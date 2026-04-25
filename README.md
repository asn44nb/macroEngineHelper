# AME Helper (macroEngineHelper)

A helper & UI datapack for [Advanced Macro Engine (AME)](https://github.com/runtoolkit/macroEngine-dp).  
Provides an in-game menu, status display, and utility shortcuts for macroEngine.

---

## Requirements

| Dependency | Version | Link |
|---|---|---|
| **macroEngine (AME)** | ≥ v4.0.0 | [github.com/runtoolkit/macroEngine-dp](https://github.com/runtoolkit/macroEngine-dp.git) |
| **Minecraft Java Edition** | 1.21.4 | Singleplayer or external server |

> Pack format: **61** (Minecraft 1.21.4)

---

## Installation

1. Clone or download macroEngine (no token required):
   ```
   git clone https://github.com/runtoolkit/macroEngine-dp.git --recurse-submodules
   ```
2. Clone AME Helper:
   ```
   git clone https://github.com/asn44nb/macroEngineHelper.git
   ```
3. Copy **both** datapack folders into your world's `datapacks/` directory.
4. Run `/reload` in-game.
5. Confirm AME gate if prompted: `/function ame_load:load/yes`

---

## Usage

| Command | Description |
|---|---|
| `/function ameh:main_menu` | Open the AME Helper main menu |
| `/function ameh:status` | Show AME load status |

---

## Namespace

| Namespace | Purpose |
|---|---|
| `ameh` | Main helper functions & UI |

---

## Scoreboard Objectives

| Objective | Type | Purpose |
|---|---|---|
| `ameh.data` | `dummy` | Internal helper state |

---

## License

See [LICENSE](./LICENSE).
