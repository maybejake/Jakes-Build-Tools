#check for entity occupying space
execute align xyz if entity @n[type=!#jbt.main:raybanned,tag=!smithed.strict,dx=0,dy=0,dz=0,sort=nearest] run return fail

#clear storage
data remove storage jbt:temp trowel

#choose block
function jbt.trowel:random/start

#if no block is chosen, don't place anything
execute unless data storage jbt:temp trowel.chosen_block run return fail

execute at @s run playsound minecraft:block.deepslate.break neutral @a ~ ~ ~ 1 1.2
execute at @s run playsound minecraft:block.gravel.break neutral @a ~ ~ ~ 0.1 1

function jbt.trowel:block/place

#swiiiiiiiiiiiiiiiiiiiiiiiiiing
function jbt.trowel:swing

#durability
execute if entity @s[gamemode=creative] run return fail
function jbt.trowel:durability

#master builder advancement
execute if data storage jbt:temp durability.break{components:{"minecraft:custom_data":{"jbt":{"id":"trowel","tier":"diamond"}},"minecraft:enchantments":{"minecraft:unbreaking":3}}} run advancement grant @s only jbt.trowel:visible/break_trowel