#> jbt.iris:raycast/find_next_block
#
# Find the coordinates of the next tile that should be traversed by the ray
#
# @within jbt.iris:raycast/loop
# @writes
#   scores $[x] $[y] $[z] jbt.iris
#       The new position
#   scores $last_[x] $last_[y] $last_[z] jbt.iris
#       The previous position
# @output
#   Result: The distance to the next block
#   Success: 1

# Save previous coordinates
scoreboard players operation $last_[x] jbt.iris = $[x] jbt.iris
scoreboard players operation $last_[y] jbt.iris = $[y] jbt.iris
scoreboard players operation $last_[z] jbt.iris = $[z] jbt.iris

# See what distance the ray needs to travel to hit another tile with a different x coordinate
execute if score $dx jbt.iris matches 0.. run scoreboard players set $to_next_x jbt.iris 1000000000
execute if score $dx jbt.iris matches ..-1 run scoreboard players set $to_next_x jbt.iris 0
scoreboard players operation ${x}*1000 jbt.iris = ${x} jbt.iris
scoreboard players operation ${x}*1000 jbt.iris *= $1000 jbt.iris
scoreboard players operation $to_next_x jbt.iris -= ${x}*1000 jbt.iris
scoreboard players operation $to_next_x jbt.iris /= $dx jbt.iris

# See what distance the ray needs to travel to hit another tile with a different y coordinate
execute if score $dy jbt.iris matches 0.. run scoreboard players set $to_next_y jbt.iris 1000000000
execute if score $dy jbt.iris matches ..-1 run scoreboard players set $to_next_y jbt.iris 0
scoreboard players operation ${y}*1000 jbt.iris = ${y} jbt.iris
scoreboard players operation ${y}*1000 jbt.iris *= $1000 jbt.iris
scoreboard players operation $to_next_y jbt.iris -= ${y}*1000 jbt.iris
scoreboard players operation $to_next_y jbt.iris /= $dy jbt.iris

# See what distance the ray needs to travel to hit another tile with a different z coordinate
execute if score $dz jbt.iris matches 0.. run scoreboard players set $to_next_z jbt.iris 1000000000
execute if score $dz jbt.iris matches ..-1 run scoreboard players set $to_next_z jbt.iris 0
scoreboard players operation ${z}*1000 jbt.iris = ${z} jbt.iris
scoreboard players operation ${z}*1000 jbt.iris *= $1000 jbt.iris
scoreboard players operation $to_next_z jbt.iris -= ${z}*1000 jbt.iris
scoreboard players operation $to_next_z jbt.iris /= $dz jbt.iris

# Determine which distance is the shortest
execute if score $to_next_x jbt.iris <= $to_next_y jbt.iris if score $to_next_x jbt.iris <= $to_next_z jbt.iris run data merge storage jbt.iris:data {NextCoordinateChange: "x"}
execute if score $to_next_y jbt.iris <= $to_next_x jbt.iris if score $to_next_y jbt.iris <= $to_next_z jbt.iris run data merge storage jbt.iris:data {NextCoordinateChange: "y"}
execute if score $to_next_z jbt.iris <= $to_next_x jbt.iris if score $to_next_z jbt.iris <= $to_next_y jbt.iris run data merge storage jbt.iris:data {NextCoordinateChange: "z"}

# Calculate the new coordinates when the ray reaches the next tile
execute if data storage jbt.iris:data {NextCoordinateChange: "x"} run data modify storage jbt.iris:args {} merge value {a: "x", b: "y", c: "z"}
execute if data storage jbt.iris:data {NextCoordinateChange: "y"} run data modify storage jbt.iris:args {} merge value {a: "y", b: "z", c: "x"}
execute if data storage jbt.iris:data {NextCoordinateChange: "z"} run data modify storage jbt.iris:args {} merge value {a: "z", b: "x", c: "y"}
function jbt.iris:raycast/macro_functions/find_next_block_aux with storage jbt.iris:args

# Return the added distance
return run scoreboard players operation $to_next_block jbt.iris *= $1000 jbt.iris
