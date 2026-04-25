# ─────────────────────────────────────────────────────────────────
# ameh:status
# Prints a quick status summary to the calling player.
# Shows: AME version, AME load state, helper load state.
# Usage: /function ameh:status
# ─────────────────────────────────────────────────────────────────

tellraw @s ["",{"text":"[AMEH] ","color":"#00ccff","bold":true},{"text":"━━━ Durum ","color":"aqua"},{"text":"━━━━━━━━━━━━━━━━━━━━━━━━━","color":"#555555"}]

# ── AME ──────────────────────────────────────────────────────────
execute if score #ame.ver_set ame.pre_version matches 1 run tellraw @s ["",{"text":" ◈ ","color":"#00ccff"},{"text":"macroEngine  ","color":"gray"},{"text":"● yüklü","color":"#00ff88"},{"text":"  v","color":"#555555"},{"score":{"name":"#ame.major","objective":"ame.pre_version"},"color":"#ffaa00"},{"text":".","color":"#ffaa00"},{"score":{"name":"#ame.minor","objective":"ame.pre_version"},"color":"#ffaa00"},{"text":".","color":"#ffaa00"},{"score":{"name":"#ame.patch","objective":"ame.pre_version"},"color":"#ffaa00"}]
execute unless score #ame.ver_set ame.pre_version matches 1 run tellraw @s ["",{"text":" ◈ ","color":"#ff4444"},{"text":"macroEngine  ","color":"gray"},{"text":"✖ yüklü değil","color":"red"}]

# ── AME Helper ───────────────────────────────────────────────────
execute if score #ameh.loaded ameh.data matches 1 run tellraw @s ["",{"text":" ◈ ","color":"#00ccff"},{"text":"AME Helper   ","color":"gray"},{"text":"● yüklü","color":"#00ff88"},{"text":"  v1.0.0","color":"#ffaa00"}]
execute unless score #ameh.loaded ameh.data matches 1 run tellraw @s ["",{"text":" ◈ ","color":"#ff4444"},{"text":"AME Helper   ","color":"gray"},{"text":"✖ yüklü değil","color":"red"}]

tellraw @s ["",{"text":"[AMEH] ","color":"#00ccff","bold":true},{"text":"━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━","color":"#555555"}]
