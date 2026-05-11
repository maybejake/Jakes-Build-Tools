scoreboard players remove @s jbt.cooldown 1

execute if score @s jbt.cooldown matches 1.. run return fail

scoreboard players reset @s jbt.cooldown
advancement revoke @s from jbt.main:cooldown