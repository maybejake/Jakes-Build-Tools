scoreboard players set @s jbt.raycast_distance 0

tag @s add jbt_bucket_ray
execute unless entity @s[predicate=jbt.main:issneaking] run function jbt.void_bucket:ray/ray
execute if entity @s[predicate=jbt.main:issneaking] run function jbt.void_bucket:ray/shift_ray
tag @s remove jbt_bucket_ray