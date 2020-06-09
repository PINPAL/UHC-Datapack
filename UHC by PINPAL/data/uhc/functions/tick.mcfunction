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
# Get Facing
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
# Get Direction
execute as @a at @s run execute store result score @s coords_r run data get entity @s Rotation[0]
# Get Coordinates
execute as @a at @s run execute store result score @s coords_x run data get entity @s Pos[0]
execute as @a at @s run execute store result score @s coords_y run data get entity @s Pos[1]
execute as @a at @s run execute store result score @s coords_z run data get entity @s Pos[2]
# Display Rotation and Coordinates
execute as @a at @s run execute if entity @s[tag=north] run title @s actionbar [{"text":"Facing: ","color":"gray"},{"color":"white","text":"N  "},{"color":"white","score":{"name":"@s","objective":"coords_r"}},{"color":"white","text":"° "},{"color":"gold","text":"| "},{"text":"XYZ: ","color":"gray"},{"color":"white","score":{"name":"@s","objective":"coords_x"}},{"text":" "},{"color":"white","score":{"name":"@s","objective":"coords_y"}},{"text":" "},{"color":"white","score":{"name":"@s","objective":"coords_z"}},{"color":"gold","text":" |"},{"text":" Border: ","color":"gray"},{"color":"white","score":{"name":"Radius:","objective":"Worldborder"}}]
execute as @a at @s run execute if entity @s[tag=north_east] run title @s actionbar [{"text":"Facing: ","color":"gray"},{"color":"white","text":"NE "},{"color":"white","score":{"name":"@s","objective":"coords_r"}},{"color":"white","text":"° "},{"color":"gold","text":"| "},{"text":"XYZ: ","color":"gray"},{"color":"white","score":{"name":"@s","objective":"coords_x"}},{"text":" "},{"color":"white","score":{"name":"@s","objective":"coords_y"}},{"text":" "},{"color":"white","score":{"name":"@s","objective":"coords_z"}},{"color":"gold","text":" |"},{"text":" Border: ","color":"gray"},{"color":"white","score":{"name":"Radius:","objective":"Worldborder"}}]
execute as @a at @s run execute if entity @s[tag=east] run title @s actionbar [{"text":"Facing: ","color":"gray"},{"color":"white","text":"E  "},{"color":"white","score":{"name":"@s","objective":"coords_r"}},{"color":"white","text":"° "},{"color":"gold","text":"| "},{"text":"XYZ: ","color":"gray"},{"color":"white","score":{"name":"@s","objective":"coords_x"}},{"text":" "},{"color":"white","score":{"name":"@s","objective":"coords_y"}},{"text":" "},{"color":"white","score":{"name":"@s","objective":"coords_z"}},{"color":"gold","text":" |"},{"text":" Border: ","color":"gray"},{"color":"white","score":{"name":"Radius:","objective":"Worldborder"}}]
execute as @a at @s run execute if entity @s[tag=south_east] run title @s actionbar [{"text":"Facing: ","color":"gray"},{"color":"white","text":"SE "},{"color":"white","score":{"name":"@s","objective":"coords_r"}},{"color":"white","text":"° "},{"color":"gold","text":"| "},{"text":"XYZ: ","color":"gray"},{"color":"white","score":{"name":"@s","objective":"coords_x"}},{"text":" "},{"color":"white","score":{"name":"@s","objective":"coords_y"}},{"text":" "},{"color":"white","score":{"name":"@s","objective":"coords_z"}},{"color":"gold","text":" |"},{"text":" Border: ","color":"gray"},{"color":"white","score":{"name":"Radius:","objective":"Worldborder"}}]
execute as @a at @s run execute if entity @s[tag=south] run title @s actionbar [{"text":"Facing: ","color":"gray"},{"color":"white","text":"S  "},{"color":"white","score":{"name":"@s","objective":"coords_r"}},{"color":"white","text":"° "},{"color":"gold","text":"| "},{"text":"XYZ: ","color":"gray"},{"color":"white","score":{"name":"@s","objective":"coords_x"}},{"text":" "},{"color":"white","score":{"name":"@s","objective":"coords_y"}},{"text":" "},{"color":"white","score":{"name":"@s","objective":"coords_z"}},{"color":"gold","text":" |"},{"text":" Border: ","color":"gray"},{"color":"white","score":{"name":"Radius:","objective":"Worldborder"}}]
execute as @a at @s run execute if entity @s[tag=south_west] run title @s actionbar [{"text":"Facing: ","color":"gray"},{"color":"white","text":"SW "},{"color":"white","score":{"name":"@s","objective":"coords_r"}},{"color":"white","text":"° "},{"color":"gold","text":"| "},{"text":"XYZ: ","color":"gray"},{"color":"white","score":{"name":"@s","objective":"coords_x"}},{"text":" "},{"color":"white","score":{"name":"@s","objective":"coords_y"}},{"text":" "},{"color":"white","score":{"name":"@s","objective":"coords_z"}},{"color":"gold","text":" |"},{"text":" Border: ","color":"gray"},{"color":"white","score":{"name":"Radius:","objective":"Worldborder"}}]
execute as @a at @s run execute if entity @s[tag=west] run title @s actionbar [{"text":"Facing: ","color":"gray"},{"color":"white","text":"W  "},{"color":"white","score":{"name":"@s","objective":"coords_r"}},{"color":"white","text":"° "},{"color":"gold","text":"| "},{"text":"XYZ: ","color":"gray"},{"color":"white","score":{"name":"@s","objective":"coords_x"}},{"text":" "},{"color":"white","score":{"name":"@s","objective":"coords_y"}},{"text":" "},{"color":"white","score":{"name":"@s","objective":"coords_z"}},{"color":"gold","text":" |"},{"text":" Border: ","color":"gray"},{"color":"white","score":{"name":"Radius:","objective":"Worldborder"}}]
execute as @a at @s run execute if entity @s[tag=north_west] run title @s actionbar [{"text":"Facing: ","color":"gray"},{"color":"white","text":"NW "},{"color":"white","score":{"name":"@s","objective":"coords_r"}},{"color":"white","text":"° "},{"color":"gold","text":"| "},{"text":"XYZ: ","color":"gray"},{"color":"white","score":{"name":"@s","objective":"coords_x"}},{"text":" "},{"color":"white","score":{"name":"@s","objective":"coords_y"}},{"text":" "},{"color":"white","score":{"name":"@s","objective":"coords_z"}},{"color":"gold","text":" |"},{"text":" Border: ","color":"gray"},{"color":"white","score":{"name":"Radius:","objective":"Worldborder"}}]