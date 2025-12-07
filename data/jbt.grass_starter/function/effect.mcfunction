data remove storage jbt.iris:settings Callback
data remove storage jbt.iris:settings Whitelist
data merge storage jbt.iris:settings {TargetEntities:false,MaxRecursionDepth:16,Blacklist:"#jbt.iris:shape_groups/air"}

execute store result score $max_distance jbt.dummy run attribute @s minecraft:block_interaction_range get 1000000
execute at @s anchored eyes positioned ^ ^ ^ store result score $distance jbt.dummy run function jbt.iris:get_target
execute if score $distance jbt.dummy <= $max_distance jbt.dummy at @n[type=minecraft:marker, tag=jbt.iris.targeted_block] positioned ~ ~ ~ run function jbt.grass_starter:on_block