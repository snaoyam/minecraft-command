summon minecraft:chicken ~ ~1 ~ {Tags:[1.8rocketC],NoAI:1b,DeathLootTable:"minecraft:empty",Silent:1b}
team join NoCollision @e[type=minecraft:chicken,tag=1.8rocketC, limit=1]
effect give snowiyam minecraft:speed 10000 50
effect give @e[type=minecraft:chicken, tag=1.8rocketC] minecraft:resistance 10000 4 true

execute as @e[type=minecraft:chicken,tag=1.8rocketC] at @s run tp @s ~ ~ ~ facing entity zkzldi4

execute as @e[type=minecraft:chicken,tag=1.8rocketC] at @s run particle minecraft:flame ^ ^ ^ 0.05 0 0.05 0 100 force

execute as @e[type=minecraft:chicken,tag=1.8rocketC] at @s run tp @s ^ ^ ^2.1

data modify entity @e[type=minecraft:chicken,tag=1.8rocketC,limit=1] OnGround set value 0b

execute as @e[type=minecraft:chicken,tag=1.8rocketC] at @s run execute as @p at @s anchored eyes if entity @e[type=minecraft:chicken,tag=1.8rocketC,distance=..1] run particle minecraft:explosion ^ ^ ^ 0 0 0 1 1 force
  execute as @e[type=minecraft:chicken,tag=1.8rocketC] at @s run execute as @p run kill @s
  kill @e[type=minecraft:chicken,tag=1.8rocketC]