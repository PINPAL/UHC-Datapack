title @a times 5 40 5
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 100
title @a title {"text":"Blue Team","color":"aqua"}
title @a subtitle {"text":"Eliminated","color":"aqua"}
scoreboard players set @a[team=Blue] Deaths 0
scoreboard players set Blue PlayerCount 0