#cooldown
tag @s add jbt_bag_cooldown
execute store result score @s jbt.bag_cooldown run time query gametime
scoreboard players add @s jbt.bag_cooldown 10
schedule function jbt.mob_bag:remove_ray/cooldown 10t append

$execute if entity @s[predicate=jbt.mob_bag:mainhand] run return run item modify entity @s weapon.mainhand [{"function":"minecraft:set_components","components":{"minecraft:item_model":"jbt:mob_bag_full"}},{"function":"minecraft:set_custom_data","tag":"{jbt_filled:1b,jbt_id:$(id)}"},{"function": "minecraft:set_lore","entity":"this","lore":[{"selector":"@e[tag=jbt_bag_contained,predicate=jbt.main:idmatch,limit=1]","color":"blue","italic":false}],"mode":"replace_all"}]
$execute if entity @s[predicate=jbt.mob_bag:offhand] run item modify entity @s weapon.offhand [{"function":"minecraft:set_components","components":{"minecraft:item_model":"jbt:mob_bag_full"}},{"function":"minecraft:set_custom_data","tag":"{jbt_filled:1b,jbt_id:$(id)}"},{"function": "minecraft:set_lore","entity":"this","lore":[{"selector":"@e[tag=jbt_bag_contained,predicate=jbt.main:idmatch,limit=1]","color":"blue","italic":false}],"mode":"replace_all"}]