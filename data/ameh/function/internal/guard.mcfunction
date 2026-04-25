# ─────────────────────────────────────────────────────────────────
# ameh:internal/guard
# Call at the top of any public-facing function that requires AME.
# Returns 0 (fails) if helper is not initialized.
# ─────────────────────────────────────────────────────────────────

execute unless score #ameh.loaded ameh.data matches 1 run tellraw @s ["",{"text":"[AMEH] ","color":"#ff4444","bold":true},{"text":"Helper yüklü değil. /reload çalıştırın.","color":"red"}]
execute unless score #ameh.loaded ameh.data matches 1 run return 0

return 1
