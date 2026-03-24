scoreboard players remove @s jbt.cooldown 1
execute unless score @s jbt.cooldown matches 0 run return fail
advancement revoke @s from jbt.main:cooldown