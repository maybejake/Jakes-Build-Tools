function jbt.mob_bag:return/get_id
execute as @e[tag=jbt.bag_contained,predicate=jbt.main:idmatch,limit=1] run function jbt.mob_bag:return/setup_entity

playsound minecraft:item.bundle.drop_contents player @a ~ ~ ~ 2 0.7
playsound minecraft:entity.illusioner.cast_spell player @a ~ ~ ~ 0.2 2
particle minecraft:cloud ~ ~0.8 ~ 0.4 0.4 0.4 0.1 20 force

function jbt.mob_bag:swing

execute if predicate jbt.mob_bag:mainhand run return run item modify entity @s weapon.mainhand [{"function":"minecraft:set_components","components":{"minecraft:item_model":"jbt:mob_bag_empty"}},{"function":"minecraft:set_custom_data","tag":{jbt:{id:"mob_bag",filled:false,uid:-1}}},{"function": "minecraft:set_lore","entity":"this","lore":[{"translate":"jbt.tooltip","font":"jbt:tooltip","color":"white","italic":false}],"mode":"replace_all"}]
execute if predicate jbt.mob_bag:offhand run item modify entity @s weapon.offhand [{"function":"minecraft:set_components","components":{"minecraft:item_model":"jbt:mob_bag_empty"}},{"function":"minecraft:set_custom_data","tag":{jbt:{id:"mob_bag",filled:false,uid:-1}}},{"function": "minecraft:set_lore","entity":"this","lore":[{"translate":"jbt.tooltip","font":"jbt:tooltip","color":"white","italic":false}],"mode":"replace_all"}]