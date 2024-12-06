scoreboard players set @s jbt_bag_raycast_hit 1
tag @s remove jbt_bag_ray

summon minecraft:armor_stand ~ ~ ~ {Tags:["jbt_bag_stand"],DisabledSlots:0,Invulnerable:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Marker:1b,Invisible:1b}

scoreboard players operation jbt score_storage = @s jbt_id
execute if entity @s[predicate=jbt:bag/mainhand,predicate=!jbt:bag/offhand] store result score jbt score_storage run data get entity @s SelectedItem.components."minecraft:custom_data".jbt_id
execute if entity @s[predicate=!jbt:bag/mainhand,predicate=jbt:bag/offhand] store result score jbt score_storage run data get entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".jbt_points
execute as @e[tag=jbt_bag_contained,predicate=jbt:idmatch,limit=1] run function jbt:bag/return_ray/setup_entity
kill @e[type=minecraft:armor_stand,tag=jbt_bag_stand,sort=nearest,limit=1]

playsound minecraft:item.bundle.drop_contents master @a ~ ~ ~ 2 0.7
playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 0.2 2
particle minecraft:cloud ~ ~0.8 ~ 0.4 0.4 0.4 0.1 20 force

execute if entity @s[predicate=jbt:bag/mainhand,predicate=!jbt:bag/offhand] run return run item modify entity @s weapon.mainhand [{"function":"minecraft:set_components","components":{"minecraft:custom_model_data":{"strings":["jbt:mob_bag_empty"]}}},{"function":"minecraft:set_custom_data","tag":"{jbt_filled:0b,jbt_id:-1}"},{"function": "minecraft:set_lore","entity":"this","lore":[],"mode":"replace_all"}]
execute if entity @s[predicate=!jbt:bag/mainhand,predicate=jbt:bag/offhand] run item modify entity @s weapon.offhand [{"function":"minecraft:set_components","components":{"minecraft:custom_model_data":{"strings":["jbt:mob_bag_empty"]}}},{"function":"minecraft:set_custom_data","tag":"{jbt_filled:0b,jbt_id:-1}"},{"function": "minecraft:set_lore","entity":"this","lore":[],"mode":"replace_all"}]