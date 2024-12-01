scoreboard players set @s jbt_trowel_raycast_hit 1

#choose block
function jbt:trowel/random/start

#if no block is chosen, don't place anything
execute store result score @s jbt_chosen_block_check run data get storage jbt:trowel chosen_block
execute if score @s jbt_chosen_block_check matches 0 run return fail

execute at @s run playsound minecraft:block.deepslate.break master @a ~ ~ ~ 1 1.2
execute at @s run playsound minecraft:block.gravel.break master @a ~ ~ ~ 0.1 1

function jbt:trowel/block/place

#handle durability
execute if entity @s[tag=jbt_trowel_mainhand,gamemode=!creative] run function jbt:trowel/ray/durability/mainhand/handle
execute if entity @s[tag=jbt_trowel_offhand,gamemode=!creative] run function jbt:trowel/ray/durability/offhand/handle
