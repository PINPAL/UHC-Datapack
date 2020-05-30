# Center Screen Title
title @a times 20 200 20
title @a subtitle {"text":"1 Hour has begun!"}
title @a title {"text":"UHC has begun!","bold":true,"color":"red"}
# Start Game
scoreboard players set GameStarted UHC 1
# Setup Players
time set 2500
gamemode survival @a
clear @a
scoreboard players set @a Deaths 0
# Grace Period
effect give @a minecraft:saturation 1 255 
effect give @a minecraft:regeneration 1 255
effect give @a minecraft:resistance 30 10 true
# Spread Players
spreadplayers 0 0 900 1200 true @a
# World Border Shrinking
worldborder set 10 3600