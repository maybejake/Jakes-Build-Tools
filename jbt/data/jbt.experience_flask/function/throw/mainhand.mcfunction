data remove storage jbt:temp flask

function jbt.main:loot_table/to_data {loot_table:"jbt.main:technical/get_slot/mainhand"}
data modify storage jbt:temp flask.item set from storage jbt:temp loot_table.output

item replace entity @s[gamemode=!creative] weapon.mainhand with minecraft:air
function jbt.experience_flask:potion/summon