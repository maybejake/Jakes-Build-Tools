scoreboard players set @s jbt_bucket_raycast_hit 1

#arbitrarily modify the item data to make it look like its moving
function jbt:bucket/modify

playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 1 2
playsound minecraft:entity.illusioner.mirror_move master @a ~ ~ ~ 0.4 1.4
particle minecraft:smoke ~ ~0.4 ~ 0.3 0.3 0.3 0.01 20 force

execute if block ~ ~ ~ minecraft:water run playsound minecraft:item.bucket.fill master @a ~ ~ ~ 1 1
execute if block ~ ~ ~ minecraft:lava run playsound minecraft:item.bucket.fill_lava master @a ~ ~ ~ 1 1
execute if block ~ ~ ~ minecraft:powder_snow run playsound minecraft:item.bucket.fill_powder_snow master @a ~ ~ ~ 1 1

execute if block ~ ~ ~ minecraft:lava run return run setblock ~ ~ ~ minecraft:air replace
execute if block ~ ~ ~ minecraft:water run return run setblock ~ ~ ~ minecraft:air replace
execute if block ~ ~ ~ minecraft:powder_snow run return run setblock ~ ~ ~ minecraft:air replace
execute if block ~ ~ ~ minecraft:lava_cauldron run return run setblock ~ ~ ~ minecraft:cauldron replace
execute if block ~ ~ ~ minecraft:water_cauldron run return run setblock ~ ~ ~ minecraft:cauldron replace
execute if block ~ ~ ~ minecraft:powder_snow_cauldron run setblock ~ ~ ~ minecraft:cauldron replace