# Spectate on death
gamemode spectator @a[scores={Deaths=1..}]
# Update Worldborder objective
execute store result score Radius: Worldborder run worldborder get
scoreboard players operation Radius: Worldborder /= Two UHC
# Anti-Ghosting
tp @a[team=Red,gamemode=spectator] @a[team=Red,gamemode=survival,limit=1]
tp @a[team=Blue,gamemode=spectator] @a[team=Blue,gamemode=survival,limit=1]
tp @a[team=Green,gamemode=spectator] @a[team=Green,gamemode=survival,limit=1]
tp @a[team=Yellow,gamemode=spectator] @a[team=Yellow,gamemode=survival,limit=1]
# Anti-Ghosting Tooltip
title @a[gamemode=spectator] actionbar [{"text":"> ","color":"gray"},{"text":"Press Left Click for First Person View","color":"white"},{"text":" <","color":"gray"}]
# Announce Teams as dead
execute if score GameStarted UHC >= One UHC run execute if score Red PlayerCount >= One UHC run execute unless entity @a[team=Red,scores={Deaths=0}] run function uhc:eliminated/red
execute if score GameStarted UHC >= One UHC run execute if score Yellow PlayerCount >= One UHC run execute unless entity @a[team=Yellow,scores={Deaths=0}] run function uhc:eliminated/yellow
execute if score GameStarted UHC >= One UHC run execute if score Blue PlayerCount >= One UHC run execute unless entity @a[team=Blue,scores={Deaths=0}] run function uhc:eliminated/blue
execute if score GameStarted UHC >= One UHC run execute if score Green PlayerCount >= One UHC run execute unless entity @a[team=Green,scores={Deaths=0}] run function uhc:eliminated/green
# Ban Strength Potions
clear @a minecraft:potion{Potion:"minecraft:strength"}
clear @a minecraft:potion{Potion:"minecraft:long_strength"}
clear @a minecraft:potion{Potion:"minecraft:strong_strength"}
# Direction Indicator
tag @a remove south
tag @a remove south_east
tag @a remove south_west
tag @a remove east
tag @a remove west
tag @a remove north
tag @a remove north_east
tag @a remove north_west
tag @a[y_rotation=-22.5..0] add south
tag @a[y_rotation=0..22.5] add south
tag @a[y_rotation=22.5..67.5] add south_west
tag @a[y_rotation=67.5..112.5] add west
tag @a[y_rotation=112.5..157.5] add north_west
tag @a[y_rotation=-67.5..-22.5] add south_east
tag @a[y_rotation=-112.5..-67.5] add east
tag @a[y_rotation=-157.5..-112.5] add north_east
tag @a[y_rotation=-180..-157.5] add north
tag @a[y_rotation=157.5..180] add north
bossbar set uhc:north players @a[tag=north]
bossbar set uhc:north_east players @a[tag=north_east]
bossbar set uhc:east players @a[tag=east]
bossbar set uhc:south_east players @a[tag=south_east]
bossbar set uhc:south players @a[tag=south]
bossbar set uhc:south_west players @a[tag=south_west]
bossbar set uhc:west players @a[tag=west]
bossbar set uhc:north_west players @a[tag=north_west]