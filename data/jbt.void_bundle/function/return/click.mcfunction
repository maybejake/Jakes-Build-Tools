#cooldown
execute store result score @s jbt.bundle_cooldown run time query gametime
scoreboard players add @s jbt.bundle_cooldown 5
schedule function jbt.void_bundle:return/cooldown 5t append

data remove storage jbt:temp bundle
execute if entity @s[predicate=jbt.void_bundle:mainhand] run return run function jbt.void_bundle:return/mainhand
execute if entity @s[predicate=jbt.void_bundle:offhand] run return run function jbt.void_bundle:return/offhand