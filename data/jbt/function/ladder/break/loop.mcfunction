function jbt:ladder/break/ladder
function jbt:ladder/break/spawn
particle minecraft:block{block_state:{Name:oak_planks}} ~ ~1 ~ 0.2 0.2 0.2 0.2 6 force
execute if block ~ ~-1 ~ minecraft:ladder positioned ~ ~-1 ~ run function jbt:ladder/break/loop