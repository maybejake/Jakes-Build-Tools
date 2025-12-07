scoreboard players remove @s jbt.cooldown 1
execute unless score @s jbt.cooldown matches 0 run return fail
tag @s remove jbt_bag_cooldown
advancement revoke @s from jbt.main:cooldown