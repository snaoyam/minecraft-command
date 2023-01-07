summon minecraft:bee ~ ~1 ~ {NoAI:1b, Invulnerable:1, Tags:["1.7bee1","1.7bee"]}
summon minecraft:bee ~ ~1 ~ {NoAI:1b, Invulnerable:1, Tags:["1.7bee2","1.7bee"]}
team join All @e[type=minecraft:bee, tag=1.7bee]

execute unless entity @e[type=minecraft:area_effect_cloud, tag=1.7beeD] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:70,Tags:["1.7beeD"]}
  execute as @e[type=minecraft:bee, tag=1.7bee] at @s run playsound minecraft:entity.bee.loop_aggressive neutral @a ^ ^ ^
  effect give @e[type=minecraft:bee, tag=1.7bee] minecraft:resistance 10000 4 true

execute as snowiyam at @s anchored eyes run tp @e[type=minecraft:bee,tag=1.7bee1] ^0.5 ^-0.2 ^
execute as snowiyam at @s anchored eyes run tp @e[type=minecraft:bee,tag=1.7bee2] ^-0.5 ^-0.2 ^
execute as @e[type=minecraft:bee,tag=1.7bee] run data modify entity @s Rotation set from entity snowiyam Rotation
execute as @e[type=minecraft:bee,tag=1.7bee] run data modify entity @s OnGround set value 0b
data modify entity @e[type=minecraft:bee,tag=1.7bee1,limit=1] OnGround set value 0b

