#> jbt.iris:get_hitbox/entity/scale
#
# Scales a living entity according to its scale attribute
#
# @within jbt.iris:get_hitbox/entity

execute store result score $attribute_scale jbt.iris run attribute @s minecraft:scale get 1000
execute if score $attribute_scale jbt.iris matches 0 run return fail
execute if score $attribute_scale jbt.iris matches 1000 run return 0

scoreboard players operation $entity_width jbt.iris /= $10 jbt.iris
scoreboard players operation $entity_width jbt.iris *= $attribute_scale jbt.iris
scoreboard players operation $entity_width jbt.iris /= $100 jbt.iris

scoreboard players operation $entity_height jbt.iris /= $10 jbt.iris
scoreboard players operation $entity_height jbt.iris *= $attribute_scale jbt.iris
scoreboard players operation $entity_height jbt.iris /= $100 jbt.iris
