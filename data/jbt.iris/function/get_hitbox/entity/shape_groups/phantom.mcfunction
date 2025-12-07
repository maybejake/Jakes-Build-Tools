scoreboard players set $entity_width jbt.iris 900000
scoreboard players set $entity_height jbt.iris 500000

execute store result score $phantom_size jbt.iris run data get entity @s Size
execute if score $phantom_size jbt.iris matches 0 run return 0
scoreboard players set $phantom_extra_width jbt.iris 135000
scoreboard players operation $phantom_extra_width jbt.iris *= $phantom_size jbt.iris
scoreboard players operation $entity_width jbt.iris += $phantom_extra_width jbt.iris
scoreboard players set $phantom_extra_height jbt.iris 75000
scoreboard players operation $phantom_extra_height jbt.iris *= $phantom_size jbt.iris
scoreboard players operation $entity_height jbt.iris += $phantom_extra_height jbt.iris
