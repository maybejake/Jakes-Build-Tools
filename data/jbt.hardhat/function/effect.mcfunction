tag @s add jbt_hardhat
execute at @s as @e[type=minecraft:falling_block,tag=!smithed.strict,distance=..5] at @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[tag=jbt_hardhat, dx=0, dy=0, dz=0] run function jbt.hardhat:break
tag @s remove jbt_hardhat