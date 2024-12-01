$item modify entity @s weapon.mainhand [{"function": "minecraft:set_custom_data","tag": "{jbt_tape_open:1b,jbt_x:$(x),jbt_y:$(y),jbt_z:$(z),jbt_tape_id:$(id)}"},{"function": "minecraft:set_lore","entity": "this","lore": [{"text": "$(x), $(y), $(z)","color":"blue","italic":false}],"mode": "replace_all"},{"function": "minecraft:set_custom_model_data","value": 1022096}]

function jbt:tape/sounds/out