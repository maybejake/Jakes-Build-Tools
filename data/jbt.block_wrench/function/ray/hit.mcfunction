data remove storage jbt:temp tape

scoreboard players set $place_check jbt.dummy 0

function jbt.block_wrench:get_block
execute store success score $place_check jbt.dummy run function jbt.block_wrench:rotation/check with storage jbt:temp wrench

execute if score $place_check jbt.dummy matches 1 run function jbt.block_wrench:ray/particle with storage jbt:temp wrench
execute if score $place_check jbt.dummy matches 1 run playsound minecraft:entity.shulker.close neutral @a ~ ~ ~ 1 1
execute if score $place_check jbt.dummy matches 1 run playsound minecraft:item.spyglass.use neutral @a ~ ~ ~ 0.4 1
execute if score $place_check jbt.dummy matches 0 run function jbt.block_wrench:durability/modify
execute if score $place_check jbt.dummy matches 0 run return run playsound minecraft:block.bamboo_wood_button.click_off neutral @a ~ ~ ~ 1 0.7

#handle durability
execute if entity @s[tag=jbt_wrench_mainhand,gamemode=!creative] run function jbt.block_wrench:durability/mainhand/handle
execute if entity @s[tag=jbt_wrench_offhand,gamemode=!creative] run function jbt.block_wrench:durability/offhand/handle
execute if entity @s[gamemode=creative] run function jbt.block_wrench:durability/modify