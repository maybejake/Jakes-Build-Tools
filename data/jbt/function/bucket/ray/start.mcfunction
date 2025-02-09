tag @s add jbt_bucket_ray
scoreboard players set @s jbt_bucket_raycast_hit 0
scoreboard players set @s jbt_bucket_raycast_distance 0

execute unless entity @s[predicate=jbt:issneaking] run function jbt:bucket/ray/ray
execute if entity @s[predicate=jbt:issneaking] run function jbt:bucket/ray/shift_ray
tag @s remove jbt_bucket_ray