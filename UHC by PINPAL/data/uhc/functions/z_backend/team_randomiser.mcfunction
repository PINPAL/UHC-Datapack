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
# Join Yellow
team join Yellow @r[tag=Unteamed]
tag @a[team=Yellow] remove Unteamed
team join Yellow @r[tag=Unteamed]
tag @a[team=Yellow] remove Unteamed
# Store Result
function uhc:z_backend/team_calculate