#magnet frame effect
execute as @e[type=minecraft:item_frame,tag=jbt_magnet_frame,tag=!jbt_non_magnet_frame] at @s run function jbt:magnet/frame/effect

#click check
execute as @a run function jbt:player

#flask smash check
execute as @e[type=minecraft:marker,tag=jbt_flask_marker,predicate=!jbt:hasvehicle] at @s run function jbt:flask/smash/smash

#ladder break check
execute as @e[type=minecraft:armor_stand,tag=jbt_ladder_stand] at @s run function jbt:ladder/stand/check