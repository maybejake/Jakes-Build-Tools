data modify storage jbt.iris:data EntityTag set from entity @s
execute if data storage jbt.iris:data EntityTag{Small: 1b} run scoreboard players set $entity_width jbt.iris 250000
execute if data storage jbt.iris:data EntityTag{Small: 1b} run scoreboard players set $entity_height jbt.iris 987500
execute unless data storage jbt.iris:data EntityTag{Small: 1b} run scoreboard players set $entity_width jbt.iris 500000
execute unless data storage jbt.iris:data EntityTag{Small: 1b} run scoreboard players set $entity_height jbt.iris 1975000
execute if data storage jbt.iris:data EntityTag{Marker: 1b} store result score $entity_width jbt.iris run scoreboard players set $entity_height jbt.iris 0