# Spectate on death
gamemode spectator @a[scores={Deaths=1..}]
# Update Worldborder objective
execute store result score Radius: Worldborder run worldborder get
scoreboard players operation Radius: Worldborder /= Two UHC
# Anti-Ghosting
tp @a[team=Red,gamemode=spectator] @a[team=Red,gamemode=survival,limit=1]
tp @a[team=Blue,gamemode=spectator] @a[team=Blue,gamemode=survival,limit=1]
tp @a[team=Green,gamemode=spectator] @a[team=Green,gamemode=survival,limit=1]
tp @a[team=Orange,gamemode=spectator] @a[team=Orange,gamemode=survival,limit=1]
# Anti-Ghosting Tooltip
title @a[gamemode=spectator] actionbar [{"text":"> ","color":"gray"},{"text":"Press Left Click for First Person View","color":"white"},{"text":" <","color":"gray"}]
# Announce Teams as dead
execute if score GameStarted UHC >= One UHC run execute if score Red PlayerCount >= One UHC run execute unless entity @a[team=Red,scores={Deaths=0}] run function uhc:eliminated/red
execute if score GameStarted UHC >= One UHC run execute if score Orange PlayerCount >= One UHC run execute unless entity @a[team=Orange,scores={Deaths=0}] run function uhc:eliminated/orange
execute if score GameStarted UHC >= One UHC run execute if score Blue PlayerCount >= One UHC run execute unless entity @a[team=Blue,scores={Deaths=0}] run function uhc:eliminated/blue
execute if score GameStarted UHC >= One UHC run execute if score Green PlayerCount >= One UHC run execute unless entity @a[team=Green,scores={Deaths=0}] run function uhc:eliminated/green