# ─────────────────────────────────────────────────────────────────
# ameh:load
# AME Helper — Load Entry Point
#
# Registered via: data/load/tags/function/load.json
# Fires after macroEngine's own load function in the load library
# chain (ameh:load is appended after macro:load).
#
# WHAT THIS DOES:
#   1. Checks that macroEngine (AME) is loaded and initialized.
#   2. If AME is NOT loaded → prints a warning and aborts.
#   3. If AME IS loaded → sets up helper objectives and announces.
#
# DEPENDENCIES:
#   - macroEngine ≥ v4.0.0  (github.com/runtoolkit/macroEngine-dp)
#   - Minecraft Java Edition 1.21.4  (pack_format 61)
# ─────────────────────────────────────────────────────────────────

scoreboard objectives add ameh.data dummy

# ── AME presence check ───────────────────────────────────────────
# #ame.ver_set scores 1 on ame.pre_version when AME loaded cleanly.
execute unless score #ame.ver_set ame.pre_version matches 1 run function ameh:internal/load_fail
execute if     score #ame.ver_set ame.pre_version matches 1 run function ameh:internal/load_ok
