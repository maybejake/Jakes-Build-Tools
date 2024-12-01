#lower=1 upper=2
execute if score $pos1 temp matches ..24 run return run scoreboard players set @s jbt_half 1 
execute if score $pos1 temp matches 24.. run return run scoreboard players set @s jbt_half 2