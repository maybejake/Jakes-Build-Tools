#> jbt.iris:raycast/check_intersection/loop
#
# Tests for ray-box intersections with all axis-aligned bounding boxes of a hitbox
#
# @within jbt.iris:raycast/test_for_block
# @within jbt.iris:raycast/test_for_entity
# @within jbt.iris:raycast/check_intersection/loop
# @reads
#   storage jbt.iris:data Shape
#       A list of axis-aligned bounding boxes of the form {min: [x, y, z], max: [x, y, z]}
# @output
#   Success: 1 if a box is hit, 0 otherwise
#   Result: the distance to the first box that is hit

# Test for intersection with a single bounding box
data modify storage jbt.iris:data Box set from storage jbt.iris:data Shape[-1]
data remove storage jbt.iris:data Shape[-1]
execute store success score $is_hit jbt.iris store result score $distance jbt.iris run function jbt.iris:raycast/check_intersection/ray_box

# If this box is indeed hit before any other this far, remember the targeted box and the targeted face
execute if score $is_hit jbt.iris matches 1 if score $distance jbt.iris >= $min_distance jbt.iris run scoreboard players set $is_hit jbt.iris 0
execute if score $is_hit jbt.iris matches 1 run data modify storage jbt.iris:data TargetedBox set from storage jbt.iris:data Box
execute if score $is_hit jbt.iris matches 1 if score $hits_x_face jbt.iris matches 1 if score $to_aabb jbt.iris = $to_x_face jbt.iris run data modify storage jbt.iris:data TargetedFace set from storage jbt.iris:data Faces[0]
execute if score $is_hit jbt.iris matches 1 if score $hits_y_face jbt.iris matches 1 if score $to_aabb jbt.iris = $to_y_face jbt.iris run data modify storage jbt.iris:data TargetedFace set from storage jbt.iris:data Faces[1]
execute if score $is_hit jbt.iris matches 1 if score $hits_z_face jbt.iris matches 1 if score $to_aabb jbt.iris = $to_z_face jbt.iris run data modify storage jbt.iris:data TargetedFace set from storage jbt.iris:data Faces[2]
execute if score $is_hit jbt.iris matches 1 run scoreboard players operation $min_distance jbt.iris = $distance jbt.iris

# Loop this function until all boxes have been analyzed
execute if data storage jbt.iris:data Shape[-1] run return run function jbt.iris:raycast/check_intersection/loop
execute if score $min_distance jbt.iris matches 2147483647 run return fail
scoreboard players operation $min_distance jbt.iris *= $1000 jbt.iris
return run scoreboard players get $min_distance jbt.iris
