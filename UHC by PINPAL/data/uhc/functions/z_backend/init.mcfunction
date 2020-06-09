# Define Constants
scoreboard objectives add UHC dummy
scoreboard players set Two UHC 2
scoreboard players set One UHC 1
# Setup Scoreboard Objectives
scoreboard objectives add Deaths deathCount
scoreboard objectives add Health health
scoreboard objectives setdisplay list Health
scoreboard objectives add Worldborder dummy
scoreboard objectives add PlayerCount dummy
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
# Setup Coordinates Indicator
scoreboard objectives add coords_r dummy
scoreboard objectives add coords_x dummy
scoreboard objectives add coords_y dummy
scoreboard objectives add coords_z dummy