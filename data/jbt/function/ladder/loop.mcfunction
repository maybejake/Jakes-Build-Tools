execute if entity @s[gamemode=!creative] run function jbt:ladder/remove

function jbt:ladder/place/check

execute if block ~ ~-1 ~ #jbt:ladder if score @s jbt_ladder_max matches 0.. positioned ~ ~-1 ~ run function jbt:ladder/loop