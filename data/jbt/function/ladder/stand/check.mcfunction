execute unless block ~ ~ ~ minecraft:ladder positioned ~ ~-1 ~ run function jbt:ladder/break/check
execute if entity @s[tag=jbt_ladder_stand_new] run function jbt:ladder/stand/place_sound