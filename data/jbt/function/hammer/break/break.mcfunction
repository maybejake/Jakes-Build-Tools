execute if block ~ ~ ~ #jbt:unbreakable run return fail

#spawn item
execute if score jbt jbt_tile_drops matches 1 run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand

#break to initiate block updates
clone ~ ~ ~ ~ ~ ~ -20000000 -64 94 replace
setblock ~ ~ ~ minecraft:air replace

#animation
gamerule doTileDrops false
clone -20000000 -64 94 -20000000 -64 94 ~ ~ ~ replace
setblock -20000000 -64 94 minecraft:bedrock replace
setblock ~ ~ ~ minecraft:air destroy
execute if score jbt jbt_tile_drops matches 1 run gamerule doTileDrops true
