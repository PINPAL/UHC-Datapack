# Setup Scoreboard Objectives
scoreboard players set @a Deaths 0
scoreboard players reset @a
scoreboard objectives setdisplay sidebar
# Setup
spawnpoint @a 0 100 0
setworldspawn 0 100 0
worldborder center 0 0
worldborder set 2500
effect clear @a
tag @a remove Dead
title @a clear
# Game Rules
gamerule announceAdvancements true
gamerule naturalRegeneration false
gamerule doWeatherCycle false
gamerule doDaylightCycle false
gamerule doInsomnia false
gamerule commandBlockOutput false
gamerule disableElytraMovementCheck true
gamerule disableRaids true
gamerule doPatrolSpawning false