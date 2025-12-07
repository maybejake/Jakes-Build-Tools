#> jbt.iris:get_position/get_rotation
#
# Returns the context rotation as a vector
#
# @context A marker and a rotation
# @within jbt.iris:get_position/main

execute positioned 0.0 0.0 0.0 run teleport @s ^ ^ ^1000000
data modify storage jbt.iris:data Pos set from entity @s Pos
execute store result score $dx jbt.iris run data get storage jbt.iris:data Pos[0]
execute store result score $dy jbt.iris run data get storage jbt.iris:data Pos[1]
execute store result score $dz jbt.iris run data get storage jbt.iris:data Pos[2]
