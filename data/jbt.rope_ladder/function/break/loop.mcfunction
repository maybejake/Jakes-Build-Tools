scoreboard players remove @s jbt.ladder_count 1
scoreboard players add $ladder_count jbt.dummy 1

function jbt.rope_ladder:break/ladder
particle minecraft:block{block_state:{Name:oak_planks}} ~ ~1 ~ 0.2 0.2 0.2 0.2 6 force
execute if score @s jbt.ladder_count matches 1.. if block ~ ~-1 ~ minecraft:ladder positioned ~ ~-1 ~ run function jbt.rope_ladder:break/loop