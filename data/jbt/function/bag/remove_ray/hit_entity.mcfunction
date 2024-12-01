scoreboard players set @s jbt_bag_raycast_hit 1
tag @s remove jbt_bag_ray

#generate id
function jbt:bag/generate_id

execute as @e[tag=jbt_bag_target,sort=nearest,distance=..5,limit=1] run function jbt:bag/remove_ray/hit_entity_damage

playsound minecraft:item.bundle.insert master @a ~ ~ ~ 2 0.1
playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 0.2 2
particle minecraft:cloud ~ ~ ~ 0.4 0.4 0.4 0.1 20 force

function jbt:bag/remove_ray/modify with storage jbt:bag