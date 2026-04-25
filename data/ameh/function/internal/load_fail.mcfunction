# ─────────────────────────────────────────────────────────────────
# ameh:internal/load_fail
# Fires when AME is NOT loaded (ame.pre_version missing/unset).
# Prints a warning and marks helper as inactive.
# ─────────────────────────────────────────────────────────────────

scoreboard players set #ameh.loaded ameh.data 0

tellraw @a[tag=macro.op] ["",{"text":"[AMEH] ","color":"#ff4444","bold":true},{"text":"HATA: ","color":"red"},{"text":"macroEngine (AME) yüklü değil!","color":"white"}]
tellraw @a[tag=macro.op] ["",{"text":"[AMEH] ","color":"#ff4444","bold":true},{"text":"AME Helper devre dışı. Önce AME'yi yükleyip ","color":"gray"},{"text":"/function ame_load:load/yes","color":"#ffaa00","hoverEvent":{"action":"show_text","value":[{"text":"AME yükleme onayı","color":"gray"}]},"clickEvent":{"action":"run_command","value":"/function ame_load:load/yes"}},{"text":" çalıştırın, ardından ","color":"gray"},{"text":"/reload","color":"#ffaa00","clickEvent":{"action":"run_command","value":"/reload"}},{"text":" yapın.","color":"gray"}]
