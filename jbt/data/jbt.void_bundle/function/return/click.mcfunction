scoreboard players set @s jbt.cooldown 5

data remove storage jbt:temp bundle
execute if predicate jbt.void_bundle:mainhand run return run function jbt.void_bundle:return/mainhand
execute if predicate jbt.void_bundle:offhand run return run function jbt.void_bundle:return/offhand