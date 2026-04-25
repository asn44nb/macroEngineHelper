# ─────────────────────────────────────────────────────────────────
# ameh:main_menu
# AME Helper — Ana Menü
#
# Tıklanabilir bir tellraw menüsü gösterir.
# Bölümler: Durum | Wand | Trigger | Interaction | Perm | Araçlar
#
# Gereksinim: AME yüklü olmalı (ameh:internal/guard)
# ─────────────────────────────────────────────────────────────────

execute unless score #ameh.loaded ameh.data matches 1 run return run function ameh:internal/guard

# ╔══════════════════════════════════════════════╗
# ║  BAŞLIK                                      ║
# ╚══════════════════════════════════════════════╝
tellraw @s ["",{"text":"[AMEH] ","color":"#00ccff","bold":true},{"text":"━━━━━━━━ ","color":"#555555"},{"text":"AME Helper","color":"#00ccff","bold":true},{"text":" ","color":"white"},{"text":"v1.0.0","color":"#ffaa00"},{"text":" ━━━━━━━━","color":"#555555"}]

# ── AME sürüm satırı ─────────────────────────────────────────────
execute if score #ame.ver_set ame.pre_version matches 1 run tellraw @s ["",{"text":" ┃ ","color":"#555555"},{"text":"macroEngine ","color":"gray"},{"text":"v","color":"#ffaa00"},{"score":{"name":"#ame.major","objective":"ame.pre_version"},"color":"#ffaa00","bold":true},{"text":".","color":"#ffaa00"},{"score":{"name":"#ame.minor","objective":"ame.pre_version"},"color":"#ffaa00","bold":true},{"text":".","color":"#ffaa00"},{"score":{"name":"#ame.patch","objective":"ame.pre_version"},"color":"#ffaa00","bold":true},{"text":"  ●","color":"#00ff88"}]

tellraw @s ["",{"text":" ┃ ","color":"#555555"},{"text":"MC 1.21.4  pack_format 61","color":"#555555","italic":true}]

# ╔══════════════════════════════════════════════╗
# ║  BÖLÜM: BİLGİ                               ║
# ╚══════════════════════════════════════════════╝
tellraw @s ["",{"text":"[AMEH] ","color":"#00ccff","bold":true},{"text":"─── Bilgi ","color":"#aaaaaa"},{"text":"────────────────────────────","color":"#333333"}]

tellraw @s ["",{"text":" ","color":"white"},{"text":"[ Durum ]","color":"#00ff88","bold":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/function ameh:status"},"hoverEvent":{"action":"show_text","value":[{"text":"ameh:status","color":"gray"},{"text":"\nAME + Helper yüklenme durumunu gösterir.","color":"#aaaaaa"}]}},{"text":"   ","color":"white"},{"text":"[ AME Sürümü ]","color":"#00ccff","underlined":true,"clickEvent":{"action":"run_command","value":"/function macro:version"},"hoverEvent":{"action":"show_text","value":[{"text":"macro:version","color":"gray"},{"text":"\nAME sürüm detaylarını gösterir.","color":"#aaaaaa"}]}}]

# ╔══════════════════════════════════════════════╗
# ║  BÖLÜM: WAND                                ║
# ╚══════════════════════════════════════════════╝
tellraw @s ["",{"text":"[AMEH] ","color":"#00ccff","bold":true},{"text":"─── Wand ","color":"#aaaaaa"},{"text":"─────────────────────────────","color":"#333333"}]

tellraw @s ["",{"text":" ","color":"white"},{"text":"[ Wand Listesi ]","color":"#ffdd55","underlined":true,"clickEvent":{"action":"run_command","value":"/function macro:api/wand/list"},"hoverEvent":{"action":"show_text","value":[{"text":"macro:api/wand/list","color":"gray"},{"text":"\nKayıtlı wand bağlamalarını listeler.","color":"#aaaaaa"}]}},{"text":"   ","color":"white"},{"text":"[ Wand Ver ]","color":"#ffdd55","underlined":true,"clickEvent":{"action":"suggest_command","value":"/function macro:api/wand/give"},"hoverEvent":{"action":"show_text","value":[{"text":"macro:api/wand/give","color":"gray"},{"text":"\nWand (havuç kıskacı) verir.","color":"#aaaaaa"}]}}]

# ╔══════════════════════════════════════════════╗
# ║  BÖLÜM: TRIGGER                             ║
# ╚══════════════════════════════════════════════╝
tellraw @s ["",{"text":"[AMEH] ","color":"#00ccff","bold":true},{"text":"─── Trigger ","color":"#aaaaaa"},{"text":"──────────────────────────","color":"#333333"}]

tellraw @s ["",{"text":" ","color":"white"},{"text":"[ Trigger Listesi ]","color":"#aa88ff","underlined":true,"clickEvent":{"action":"run_command","value":"/function macro:api/trigger/list"},"hoverEvent":{"action":"show_text","value":[{"text":"macro:api/trigger/list","color":"gray"},{"text":"\nKayıtlı trigger bağlamalarını listeler.","color":"#aaaaaa"}]}}]

# ╔══════════════════════════════════════════════╗
# ║  BÖLÜM: INTERACTION                         ║
# ╚══════════════════════════════════════════════╝
tellraw @s ["",{"text":"[AMEH] ","color":"#00ccff","bold":true},{"text":"─── Interaction Entity ","color":"#aaaaaa"},{"text":"────────────","color":"#333333"}]

tellraw @s ["",{"text":" ","color":"white"},{"text":"[ IE Spawn ]","color":"#ff8844","underlined":true,"clickEvent":{"action":"suggest_command","value":"/function macro:api/interaction/spawn"},"hoverEvent":{"action":"show_text","value":[{"text":"macro:api/interaction/spawn","color":"gray"},{"text":"\nBir interaction entity oluşturur.","color":"#aaaaaa"}]}},{"text":"   ","color":"white"},{"text":"[ IE Listesi ]","color":"#ff8844","underlined":true,"clickEvent":{"action":"run_command","value":"/function macro:api/interaction/list"},"hoverEvent":{"action":"show_text","value":[{"text":"macro:api/interaction/list","color":"gray"},{"text":"\nKayıtlı IE bağlamalarını listeler.","color":"#aaaaaa"}]}}]

# ╔══════════════════════════════════════════════╗
# ║  BÖLÜM: İZİN / PERM                        ║
# ╚══════════════════════════════════════════════╝
tellraw @s ["",{"text":"[AMEH] ","color":"#00ccff","bold":true},{"text":"─── İzin ","color":"#aaaaaa"},{"text":"────────────────────────────","color":"#333333"}]

tellraw @s ["",{"text":" ","color":"white"},{"text":"[ Perm Listesi ]","color":"#55ddff","underlined":true,"clickEvent":{"action":"run_command","value":"/function macro:api/perm/list"},"hoverEvent":{"action":"show_text","value":[{"text":"macro:api/perm/list","color":"gray"},{"text":"\nKayıtlı izinleri listeler.","color":"#aaaaaa"}]}}]

# ╔══════════════════════════════════════════════╗
# ║  BÖLÜM: ARAÇLAR                             ║
# ╚══════════════════════════════════════════════╝
tellraw @s ["",{"text":"[AMEH] ","color":"#00ccff","bold":true},{"text":"─── Araçlar ","color":"#aaaaaa"},{"text":"───────────────────────────","color":"#333333"}]

tellraw @s ["",{"text":" ","color":"white"},{"text":"[ Debug Menü ]","color":"#ff5555","underlined":true,"clickEvent":{"action":"run_command","value":"/function macro:debug"},"hoverEvent":{"action":"show_text","value":[{"text":"macro:debug","color":"gray"},{"text":"\nAME debug bilgilerini gösterir.","color":"#aaaaaa"}]}},{"text":"   ","color":"white"},{"text":"[ AME Devre Dışı ]","color":"#ff5555","underlined":true,"clickEvent":{"action":"suggest_command","value":"/function macro:disable"},"hoverEvent":{"action":"show_text","value":[{"text":"macro:disable","color":"gray"},{"text":"\nAME'yi devre dışı bırakır. ","color":"#aaaaaa"},{"text":"Dikkat!","color":"red","bold":true}]}}]

# ── Footer ───────────────────────────────────────────────────────
tellraw @s ["",{"text":"[AMEH] ","color":"#00ccff","bold":true},{"text":"━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━","color":"#555555"}]
