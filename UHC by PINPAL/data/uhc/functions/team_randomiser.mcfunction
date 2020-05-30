#Reset
tag @a remove
team leave @a
# Tag Every Play to be set
tag @a add Unteamed
#Count Players
scoreboard players set PlayerCount UHC 0
execute as @a run scoreboard players add PlayerCount UHC 1
# Join Blue
team join Blue @r[tag=Unteamed]
tag @a[team=Blue] remove Unteamed
team join Blue @r[tag=Unteamed]
tag @a[team=Blue] remove Unteamed
# Join Red
team join Red @r[tag=Unteamed]
tag @a[team=Red] remove Unteamed
team join Red @r[tag=Unteamed]
tag @a[team=Red] remove Unteamed
# Join Green
team join Green @r[tag=Unteamed]
tag @a[team=Green] remove Unteamed
team join Green @r[tag=Unteamed]
tag @a[team=Green] remove Unteamed
# Join Orange
team join Orange @r[tag=Unteamed]
tag @a[team=Orange] remove Unteamed
team join Orange @r[tag=Unteamed]
tag @a[team=Orange] remove Unteamed
# Store Result
execute store result score Red PlayerCount run team list Red
execute store result score Blue PlayerCount run team list Blue
execute store result score Green PlayerCount run team list Green
execute store result score Orange PlayerCount run team list Orange