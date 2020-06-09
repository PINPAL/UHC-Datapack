# Reset Scoreboard
scoreboard players set @a Deaths 0
scoreboard players set GameStarted UHC 0
scoreboard players set Red PlayerCount 0
scoreboard players set Blue PlayerCount 0
scoreboard players set Green PlayerCount 0
scoreboard players set Yellow PlayerCount 0
# Lobby Setup
clear @a
gamemode adventure @a
spawnpoint @a 0 100 0
worldborder center 0 0
worldborder set 6
team leave @a
# Position Players at ground height at 0 0
tp @a 0 200 0
# Give Players God Mode
effect give @a minecraft:slowness 999999 255 true
effect give @a minecraft:jump_boost 999999 128 true
effect give @a minecraft:invisibility 999999 1 true
effect give @a minecraft:blindness 999999 1 true
effect give @a minecraft:weakness 999999 255 true
effect give @a minecraft:resistance 999999 255 true
effect give @a minecraft:mining_fatigue 999999 255 true
effect give @a minecraft:regeneration 999999 255 true
effect give @a minecraft:saturation 999999 255 true
effect give @a minecraft:water_breathing 999999 255 true
# Display Title
title @a times 0 999999999 0
title @a subtitle {"text":"Please Wait...","color":"gray"}
title @a title {"text":"Game is starting...","color":"white"}
# Assign Teams
function uhc:team_randomiser