data remove storage jbt.iris:settings Callback
data remove storage jbt.iris:settings Whitelist
data merge storage jbt.iris:settings {TargetEntities:true,MaxRecursionDepth:16,Blacklist:"#jbt.iris:shape_groups/air"}

execute store result score $max_distance jbt.dummy run attribute @s minecraft:block_interaction_range get 1000000
execute at @s anchored eyes positioned ^ ^ ^ store result score $distance jbt.dummy run function jbt.iris:get_target

tag @s add jbt_bag_ray
execute if score $distance jbt.dummy <= $max_distance jbt.dummy as @n[type=!#jbt.main:hostile,type=!#jbt.main:raybanned,tag=!smithed.strict,tag=jbt.iris.targeted_entity] at @s positioned ~ ~ ~ run function jbt.mob_bag:remove/hit_entity
tag @s remove jbt_bag_ray