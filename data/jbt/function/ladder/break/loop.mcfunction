function jbt:ladder/break/ladder
function jbt:ladder/break/spawn
particle minecraft:block{block_state:{Name:oak_planks}} ~ ~1 ~ 0.2 0.2 0.2 0.2 6 force
scoreboard players remove @s jbt_ladder_number 1
execute if score @s jbt_ladder_number matches 2.. if block ~ ~-1 ~ minecraft:ladder positioned ~ ~-1 ~ run function jbt:ladder/break/loop