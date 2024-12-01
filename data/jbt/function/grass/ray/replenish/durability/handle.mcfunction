#handle damage
scoreboard players remove @s jbt_grass_damage 1
execute store result storage jbt:grass damage int 1 run scoreboard players get @s jbt_grass_damage

execute if entity @s[tag=jbt_grass_mainhand] run return run function jbt:grass/ray/replenish/durability/apply/mainhand with storage jbt:grass
execute if entity @s[tag=jbt_grass_offhand] run return run function jbt:grass/ray/replenish/durability/apply/offhand with storage jbt:grass