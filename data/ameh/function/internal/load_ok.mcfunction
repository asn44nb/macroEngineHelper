# ─────────────────────────────────────────────────────────────────
# ameh:internal/load_ok
# Fires when AME is confirmed loaded.
# Announces AME Helper is ready to all operators.
# ─────────────────────────────────────────────────────────────────

scoreboard players set #ameh.loaded ameh.data 1

tellraw @a[tag=macro.op] ["",{"text":"[AMEH] ","color":"#00ccff","bold":true},{"text":"AME Helper ","color":"white"},{"text":"v1.0.0","color":"#ffaa00"},{"text":" yüklendi. ","color":"gray"},{"text":"[Menü]","color":"#00ff88","underlined":true,"clickEvent":{"action":"run_command","value":"/function ameh:main_menu"},"hoverEvent":{"action":"show_text","value":[{"text":"ameh:main_menu","color":"gray"}]}}]
