execute if entity @s[gamemode=!creative] run function jbt:ladder/remove
scoreboard players add @n[type=minecraft:armor_stand,tag=jbt_ladder_stand_new] jbt_ladder_number 1

function jbt:ladder/place/check

execute if block ~ ~-1 ~ #jbt:ladder if score @s jbt_ladder_max matches 1.. positioned ~ ~-1 ~ run function jbt:ladder/loop