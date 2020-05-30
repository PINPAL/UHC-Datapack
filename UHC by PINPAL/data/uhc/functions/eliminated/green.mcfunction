title @a times 5 40 5
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 100
title @a title {"text":"Green Team","color":"green"}
title @a subtitle {"text":"Eliminated","color":"green"}
scoreboard players set @a[team=Green] Deaths 0
scoreboard players set Green PlayerCount 0