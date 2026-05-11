scoreboard players set $entity_width jbt.iris 510000
scoreboard players set $entity_height jbt.iris 510000
execute store result score $slime_size jbt.iris run data get entity @s Size
scoreboard players add $slime_size jbt.iris 1
scoreboard players operation $entity_width jbt.iris *= $slime_size jbt.iris
scoreboard players operation $entity_height jbt.iris *= $slime_size jbt.iris
