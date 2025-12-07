#> jbt.iris:raycast/check_intersection/ray_plane
#
# Tests for ray-plane intersections with a face
#
# @within jbt.iris:raycast/check_intersection/ray_box
# @reads
#   storage jbt.iris:data Face: compound
#       Direction: string
#           The axis that is perpendicular to this face
#           One of WEST_EAST, UP_DOWN, NORTH_SOUTH
#       min: float[]
#       max: float[]
# @output
#   Success: 1 if the face is hit, 0 otherwise
#   Result: the distance, in mm, before the face is hit

# Save face coordinates
execute store result score $x0 jbt.iris run data get storage jbt.iris:data Face.min[0] 1000000
execute store result score $y0 jbt.iris run data get storage jbt.iris:data Face.min[1] 1000000
execute store result score $z0 jbt.iris run data get storage jbt.iris:data Face.min[2] 1000000
execute store result score $x1 jbt.iris run data get storage jbt.iris:data Face.max[0] 1000000
execute store result score $y1 jbt.iris run data get storage jbt.iris:data Face.max[1] 1000000
execute store result score $z1 jbt.iris run data get storage jbt.iris:data Face.max[2] 1000000

# Get distance (in mm) to the plane, i.e. how long the ray should extend before it hits the plane
# This value should be at most sqrt(3)*1000; if it's more than 2000, we fail (otherwise we risk overflow errors)
execute if data storage jbt.iris:data {Face: {Direction: "WEST_EAST"}} run scoreboard players operation $distance jbt.iris = $x0 jbt.iris
execute if data storage jbt.iris:data {Face: {Direction: "WEST_EAST"}} run scoreboard players operation $distance jbt.iris -= ${x} jbt.iris
execute if data storage jbt.iris:data {Face: {Direction: "UP_DOWN"}} run scoreboard players operation $distance jbt.iris = $y0 jbt.iris
execute if data storage jbt.iris:data {Face: {Direction: "UP_DOWN"}} run scoreboard players operation $distance jbt.iris -= ${y} jbt.iris
execute if data storage jbt.iris:data {Face: {Direction: "NORTH_SOUTH"}} run scoreboard players operation $distance jbt.iris = $z0 jbt.iris
execute if data storage jbt.iris:data {Face: {Direction: "NORTH_SOUTH"}} run scoreboard players operation $distance jbt.iris -= ${z} jbt.iris
scoreboard players operation $distance jbt.iris *= $1000 jbt.iris
execute if data storage jbt.iris:data {Face: {Direction: "WEST_EAST"}} run scoreboard players operation $distance jbt.iris /= $dx jbt.iris
execute if data storage jbt.iris:data {Face: {Direction: "UP_DOWN"}} run scoreboard players operation $distance jbt.iris /= $dy jbt.iris
execute if data storage jbt.iris:data {Face: {Direction: "NORTH_SOUTH"}} run scoreboard players operation $distance jbt.iris /= $dz jbt.iris
execute if score $distance jbt.iris matches ..-1 run return fail
execute if score $distance jbt.iris matches 2000.. run return fail

# Get x position of the ray/plane intersection
scoreboard players operation $x_intersection jbt.iris = $distance jbt.iris
scoreboard players operation $x_intersection jbt.iris *= $dx jbt.iris
scoreboard players operation $x_intersection jbt.iris /= $1000 jbt.iris
scoreboard players operation $x_intersection jbt.iris += ${x} jbt.iris
execute if data storage jbt.iris:data {Face: {Direction: "WEST_EAST"}} run scoreboard players operation $x_intersection jbt.iris = $x0 jbt.iris

# Get y position of the ray/plane intersection
scoreboard players operation $y_intersection jbt.iris = $distance jbt.iris
scoreboard players operation $y_intersection jbt.iris *= $dy jbt.iris
scoreboard players operation $y_intersection jbt.iris /= $1000 jbt.iris
scoreboard players operation $y_intersection jbt.iris += ${y} jbt.iris
execute if data storage jbt.iris:data {Face: {Direction: "UP_DOWN"}} run scoreboard players operation $y_intersection jbt.iris = $y0 jbt.iris

# Get z position of the ray/plane intersection
scoreboard players operation $z_intersection jbt.iris = $distance jbt.iris
scoreboard players operation $z_intersection jbt.iris *= $dz jbt.iris
scoreboard players operation $z_intersection jbt.iris /= $1000 jbt.iris
scoreboard players operation $z_intersection jbt.iris += ${z} jbt.iris
execute if data storage jbt.iris:data {Face: {Direction: "NORTH_SOUTH"}} run scoreboard players operation $z_intersection jbt.iris = $z0 jbt.iris

# Save the position of the intersection
data modify storage jbt.iris:data Face.Collision set value [0.0d, 0.0d, 0.0d]
execute store result storage jbt.iris:data Face.Collision[0] double 0.000001 run scoreboard players get $x_intersection jbt.iris
execute store result storage jbt.iris:data Face.Collision[1] double 0.000001 run scoreboard players get $y_intersection jbt.iris
execute store result storage jbt.iris:data Face.Collision[2] double 0.000001 run scoreboard players get $z_intersection jbt.iris

# See if that intersection falls within the face
execute if score $x_intersection jbt.iris >= $x0 jbt.iris if score $x_intersection jbt.iris <= $x1 jbt.iris \
        if score $y_intersection jbt.iris >= $y0 jbt.iris if score $y_intersection jbt.iris <= $y1 jbt.iris \
        if score $z_intersection jbt.iris >= $z0 jbt.iris if score $z_intersection jbt.iris <= $z1 jbt.iris \
        run return run scoreboard players get $distance jbt.iris

return fail
