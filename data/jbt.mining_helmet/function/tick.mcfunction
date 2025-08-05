execute unless block ~ ~ ~ minecraft:light run return run kill @s

execute positioned ~-0.5 ~-0.5 ~-0.5 unless entity @p[predicate=jbt.mining_helmet:mining_helmet, dx=0, dy=0, dz=0] run function jbt.mining_helmet:break