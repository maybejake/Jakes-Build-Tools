#> jbt.iris:get_position/get_coordinates
#
# Gets the coordinates of the executing entity
#
# @context A marker
# @within jbt.iris:get_position/main
# @within jbt.iris:get_hitbox/entity

tag @s add jbt.iris.coordinate_getter

# Get integer coordinates
data modify storage jbt.iris:data Pos set from entity @s Pos
execute store result score $[x] jbt.iris store result storage jbt.iris:args x int -1 run data get storage jbt.iris:data Pos[0]
execute store result score $[y] jbt.iris store result storage jbt.iris:args y int -1 run data get storage jbt.iris:data Pos[1]
execute store result score $[z] jbt.iris store result storage jbt.iris:args z int -1 run data get storage jbt.iris:data Pos[2]

# Get fractional coordinates
function jbt.iris:get_position/teleport with storage jbt.iris:args
data modify storage jbt.iris:data Pos set from entity @s Pos
execute store result score ${x} jbt.iris run data get storage jbt.iris:data Pos[0] 1000000
execute store result score ${y} jbt.iris run data get storage jbt.iris:data Pos[1] 1000000
execute store result score ${z} jbt.iris run data get storage jbt.iris:data Pos[2] 1000000

# Clean up
data remove storage jbt.iris:data Pos
