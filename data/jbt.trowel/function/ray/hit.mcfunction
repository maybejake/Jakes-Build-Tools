#check for entity occupying space
execute align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-0.05 ~-0.05 ~-0.05 if entity @e[tag=!smithed.strict,dx=0,sort=nearest] positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[type=!#jbt.main:raybanned,dx=0] run return fail

#clear storage
data remove storage jbt:temp trowel

#choose block
function jbt.trowel:random/start

#if no block is chosen, don't place anything
execute unless data storage jbt:temp trowel.chosen_block run return fail

execute at @s run playsound minecraft:block.deepslate.break neutral @a ~ ~ ~ 1 1.2
execute at @s run playsound minecraft:block.gravel.break neutral @a ~ ~ ~ 0.1 1

function jbt.trowel:block/place

#handle durability
execute if entity @s[tag=jbt_trowel_mainhand,gamemode=!creative] run function jbt.trowel:durability/mainhand/handle
execute if entity @s[tag=jbt_trowel_offhand,gamemode=!creative] run function jbt.trowel:durability/offhand/handle
execute if entity @s[gamemode=creative] run function jbt.trowel:durability/modify