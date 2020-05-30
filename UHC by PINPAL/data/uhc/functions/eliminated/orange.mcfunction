title @a times 5 40 5
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 100
title @a title {"text":"Orange Team","color":"gold"}
title @a subtitle {"text":"Eliminated","color":"gold"}
scoreboard players set @a[team=Orange] Deaths 0
scoreboard players set Orange PlayerCount 0