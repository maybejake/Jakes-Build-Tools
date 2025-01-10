#cooldown
execute store result score @s jbt_void_bundle_cooldown run time query gametime
scoreboard players add @s jbt_void_bundle_cooldown 5
schedule function jbt:bundle/return/cooldown 5t append

data remove storage jbt:bundle temp_item
execute if entity @s[predicate=jbt:bundle/mainhand] run return run function jbt:bundle/return/mainhand
execute if entity @s[predicate=jbt:bundle/offhand] run return run function jbt:bundle/return/offhand