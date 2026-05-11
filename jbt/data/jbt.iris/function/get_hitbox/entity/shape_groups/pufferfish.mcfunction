execute store result score $pufferfish_puffstate jbt.iris run data get entity @s PuffState
execute if score $pufferfish_puffstate jbt.iris matches 0 run scoreboard players set $entity_width jbt.iris 350000
execute if score $pufferfish_puffstate jbt.iris matches 1 run scoreboard players set $entity_width jbt.iris 490000
execute if score $pufferfish_puffstate jbt.iris matches 2 run scoreboard players set $entity_width jbt.iris 700000
scoreboard players operation $entity_height jbt.iris = $entity_width jbt.iris

