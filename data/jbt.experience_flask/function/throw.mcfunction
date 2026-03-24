execute if score @s jbt.cooldown matches 1.. run return fail
scoreboard players set @s jbt.cooldown 7

function jbt.experience_flask:swing

execute if predicate jbt.experience_flask:mainhand run return run function jbt.experience_flask:throw/mainhand
execute if predicate jbt.experience_flask:offhand run return run function jbt.experience_flask:throw/offhand