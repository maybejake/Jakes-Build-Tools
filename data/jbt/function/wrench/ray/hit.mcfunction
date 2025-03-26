scoreboard players set @s jbt_wrench_raycast_hit 1
scoreboard players set @s jbt_place_check 0

function jbt:wrench/get_block
execute store success score @s jbt_place_check run function jbt:wrench/rotation/check with storage jbt:wrench

execute if score @s jbt_place_check matches 1 run function jbt:wrench/ray/particle with storage jbt:wrench
execute if score @s jbt_place_check matches 1 run playsound minecraft:entity.shulker.close master @a ~ ~ ~ 1 1
execute if score @s jbt_place_check matches 1 run playsound minecraft:item.spyglass.use master @a ~ ~ ~ 0.4 1
execute if score @s jbt_place_check matches 0 run return run playsound minecraft:block.bamboo_wood_button.click_off master @a ~ ~ ~ 1 0.7

#handle durability
execute if entity @s[tag=jbt_wrench_mainhand,gamemode=!creative] run function jbt:wrench/ray/durability/mainhand/handle
execute if entity @s[tag=jbt_wrench_offhand,gamemode=!creative] run function jbt:wrench/ray/durability/offhand/handle