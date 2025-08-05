#magnet frame effect
execute as @e[type=minecraft:item_frame,tag=jbt_magnet_frame,tag=!jbt_non_magnet_frame] at @s run function jbt.item_magnet:frame/effect

#click check
execute as @a run function jbt.main:player

#flask smash check
execute as @e[type=minecraft:marker,tag=jbt_flask_marker,predicate=!jbt.main:hasvehicle] at @s run function jbt.experience_flask:smash/smash

#ladder break check
execute as @e[type=minecraft:marker,tag=jbt_ladder_stand] at @s run function jbt.rope_ladder:marker/check

#tape selection check
execute as @e[type=minecraft:item_display,tag=jbt_tape_selection] at @s if block ~ ~ ~ #jbt.main:blocks run kill @s

#ladder break check
execute as @e[type=minecraft:marker,tag=jbt_light] at @s run function jbt.mining_helmet:tick