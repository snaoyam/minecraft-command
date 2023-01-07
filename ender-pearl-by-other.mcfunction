
execute as @e[type=minecraft:ender_pearl] unless data entity @s {Tags:["1.6pearlP"]} unless data entity @s {Tags:["1.6pearlPP"]} unless data entity @s {Tags:["1.6pearlPPP"]} run data modify entity @s Tags append value "1.6pearlP"
  summon minecraft:area_effect_cloud ~ ~ ~ {Duration:10,Tags:["1.6D"]}

execute as @e[type=minecraft:ender_pearl,tag=1.6pearlP] at @s unless entity @e[type=minecraft:area_effect_cloud, tag=1.6D] run summon minecraft:ender_pearl ^ ^ ^ {Invulnerable: 0b,LeftOwner: 1b,Air: 300s,OnGround: 0b,PortalCooldown: 0,FallDistance: 0.0f,HasBeenShot: 1b,Fire: -1s,Tags:["1.6pearlPP"]}
  data modify entity @e[type=minecraft:ender_pearl,tag=1.6pearlPP,limit=1] Motion set from entity @e[type=minecraft:ender_pearl,tag=1.6pearlP,limit=1] Motion
  data modify entity @e[type=minecraft:ender_pearl,tag=1.6pearlPP,limit=1] Rotation set from entity @e[type=minecraft:ender_pearl,tag=1.6pearlP,limit=1] Rotation
  data modify entity @e[type=minecraft:ender_pearl,tag=1.6pearlPP,limit=1] Owner set from entity snowiyam UUID
  kill @e[type=minecraft:ender_pearl,tag=1.6pearlP,limit=1]
  data modify entity @e[type=minecraft:ender_pearl,tag=1.6pearlPP,limit=1,sort=nearest] Tags set value ["1.6pearlPPP"]