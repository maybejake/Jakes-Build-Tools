execute if block ~ ~ ~ #jbt.main:unbreakable run return fail

data remove storage jbt:temp wrench

scoreboard players set $place_check jbt.dummy 0


# Clone target to overworld and get block
clone ~ ~ ~ ~ ~ ~ to minecraft:overworld -20000000 -64 97
execute in minecraft:overworld positioned -20000000 -64 97 run function jbt.block_wrench:get_block

execute store success score $place_check jbt.dummy run function jbt.block_wrench:rotation/check with storage jbt:temp wrench

execute if score $place_check jbt.dummy matches 1 run function jbt.block_wrench:particle with storage jbt:temp wrench
execute if score $place_check jbt.dummy matches 1 run playsound minecraft:entity.shulker.close neutral @a ~ ~ ~ 1 1
execute if score $place_check jbt.dummy matches 1 run playsound minecraft:item.spyglass.use neutral @a ~ ~ ~ 0.4 1
execute if score $place_check jbt.dummy matches 0 run return run playsound minecraft:block.bamboo_wood_button.click_off neutral @a ~ ~ ~ 1 0.7

#swing
function jbt.block_wrench:swing

#durability
execute if entity @s[gamemode=creative] run return fail
execute if predicate jbt.block_wrench:mainhand run return run function jbt.main:durability/mainhand/handle
execute if predicate jbt.block_wrench:offhand run return run function jbt.main:durability/offhand/handle