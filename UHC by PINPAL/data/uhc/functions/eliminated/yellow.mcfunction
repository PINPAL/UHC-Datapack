title @a times 5 40 5
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 100
title @a title {"text":"Yellow Team","color":"yellow"}
title @a subtitle {"text":"Eliminated","color":"yellow"}
scoreboard players set @a[team=Yellow] Deaths 0
scoreboard players set Yellow PlayerCount 0