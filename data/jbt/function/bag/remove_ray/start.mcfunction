tag @s add jbt_bag_ray
scoreboard players set #ray jbt_bag_raycast_hit 0
scoreboard players set @s jbt_bag_raycast_distance 0

function jbt:bag/remove_ray/ray
tag @s remove jbt_bag_ray