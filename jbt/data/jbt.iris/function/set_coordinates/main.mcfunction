#> jbt.iris:set_coordinates
#
# Teleports the executing entity at a given position from six scores.
# Meant to be executed as the ray marker after raycasting, scores are then set to the player's targeted position:
#    execute as @p at @s anchored eyes positioned ^ ^ ^ run function jbt.iris:get_target
#    execute as @e[type=minecraft:marker, tag=jbt.iris.ray] run function jbt.iris:set_coordinates
#
# @public
# @context any entity
# @input
#   score $[x] jbt.iris
#       The integer value of the new X position
#   score ${x} jbt.iris
#       The fractional value of the new X position, as a number between 0 and 1000000

execute unless entity @s run return fail

# Clamp to 0..999999
execute if score ${x} jbt.iris matches ..0 run scoreboard players set ${x} jbt.iris 0
execute if score ${y} jbt.iris matches ..0 run scoreboard players set ${y} jbt.iris 0
execute if score ${z} jbt.iris matches ..0 run scoreboard players set ${z} jbt.iris 0
execute if score ${x} jbt.iris matches 1000000.. run scoreboard players set ${x} jbt.iris 999999
execute if score ${y} jbt.iris matches 1000000.. run scoreboard players set ${y} jbt.iris 999999
execute if score ${z} jbt.iris matches 1000000.. run scoreboard players set ${z} jbt.iris 999999

# Get integer coordinates for the first teleport command (absolute coordinates)
execute store result storage jbt.iris:args x int 1 run scoreboard players get $[x] jbt.iris
execute store result storage jbt.iris:args y int 1 run scoreboard players get $[y] jbt.iris
execute store result storage jbt.iris:args z int 1 run scoreboard players get $[z] jbt.iris

# Get fractional coordinates for the second teleport command (relative coordinates)
execute store result storage jbt.iris:args value int 1 run scoreboard players get ${x} jbt.iris
function jbt.iris:set_coordinates/pad_with_zeros with storage jbt.iris:args
data modify storage jbt.iris:args dx set string storage jbt.iris:data String -6

execute store result storage jbt.iris:args value int 1 run scoreboard players get ${y} jbt.iris
function jbt.iris:set_coordinates/pad_with_zeros with storage jbt.iris:args
data modify storage jbt.iris:args dy set string storage jbt.iris:data String -6

execute store result storage jbt.iris:args value int 1 run scoreboard players get ${z} jbt.iris
function jbt.iris:set_coordinates/pad_with_zeros with storage jbt.iris:args
data modify storage jbt.iris:args dz set string storage jbt.iris:data String -6

# Generate the two teleport commands
function jbt.iris:set_coordinates/teleport with storage jbt.iris:args
