# Define Constants
scoreboard objectives add UHC dummy
scoreboard players set Two UHC 2
scoreboard players set One UHC 1
# Setup Scoreboard Objectives
scoreboard objectives add Deaths deathCount
scoreboard players set @a Deaths 0
scoreboard objectives add Health health
scoreboard objectives setdisplay list Health
scoreboard objectives add Worldborder dummy
scoreboard objectives setdisplay sidebar Worldborder
scoreboard objectives add PlayerCount dummy
scoreboard players reset @a
# Scoreboard Sidebar Visuals
team add WorldborderColor
team modify WorldborderColor color red
team join WorldborderColor Radius:
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
# Setup Player Teams
team add Red
team modify Red color red
team modify Red friendlyFire false
team add Blue
team modify Blue color aqua
team modify Blue friendlyFire false
team add Green
team modify Green color green
team modify Green friendlyFire false
team add Yellow
team modify Yellow color yellow
team modify Yellow friendlyFire false
# Setup Direction Indicator
bossbar add uhc:north "North"
bossbar set uhc:north style notched_6
bossbar add uhc:north_east "North East"
bossbar set uhc:north_east style notched_6
bossbar add uhc:east "East"
bossbar set uhc:east style notched_6
bossbar add uhc:south_east "South East"
bossbar set uhc:south_east style notched_6
bossbar add uhc:south "South"
bossbar set uhc:south style notched_6
bossbar add uhc:south_west "South West"
bossbar set uhc:south_west style notched_6
bossbar add uhc:west "West"
bossbar set uhc:west style notched_6
bossbar add uhc:north_west "North West"
bossbar set uhc:north_west style notched_6