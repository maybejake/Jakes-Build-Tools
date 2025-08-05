scoreboard players set @s jbt.raycast_distance 0

tag @s add jbt_bag_ray
function jbt.mob_bag:return_ray/ray
tag @s remove jbt_bag_ray