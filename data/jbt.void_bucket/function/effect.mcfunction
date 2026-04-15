scoreboard players set @s jbt.cooldown 2
scoreboard players set @s[tag=jbt.using] jbt.cooldown 2
execute if entity @s[tag=jbt.using] run return run tag @s remove jbt.using

tag @s add jbt.using

execute if entity @s[gamemode=adventure] run return fail

data remove storage jbt.iris:settings Callback
data remove storage jbt.iris:settings Whitelist
data merge storage jbt.iris:settings {TargetEntities:false,MaxRecursionDepth:16,Blacklist:"#jbt.iris:shape_groups/air_no_liquid"}

execute store result score $max_distance jbt.dummy run attribute @s minecraft:block_interaction_range get 1000000
execute at @s anchored eyes positioned ^ ^ ^ store result score $distance jbt.dummy run function jbt.iris:get_target
execute if score $distance jbt.dummy <= $max_distance jbt.dummy at @n[type=minecraft:marker, tag=jbt.iris.targeted_block] if block ~ ~ ~ #jbt.main:liquids positioned ~ ~ ~ run function jbt.void_bucket:on_block