execute if score @s jbt.cooldown matches 1.. run return fail

scoreboard players set @s jbt.cooldown 7
execute if entity @s[gamemode=adventure] run return fail

function jbt.mob_bag:return/start