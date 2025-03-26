execute unless block ~ ~ ~ #jbt:unbreakable run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
gamerule doTileDrops false
execute unless block ~ ~ ~ #jbt:unbreakable run setblock ~ ~ ~ minecraft:air destroy
execute if score jbt jbt_tile_drops matches 1 run gamerule doTileDrops true
