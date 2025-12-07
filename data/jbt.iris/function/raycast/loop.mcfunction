#> jbt.iris:raycast/loop
#
# Loops forward until an obstacle is hit or until the maximum recursion depth has been reached
#
# @context a marker and the current ray position
# @within jbt.iris:get_target
# @within jbt.iris:raycast/loop

# Test for collisions
execute store success score $block_hit jbt.iris store result score $block_distance jbt.iris run function jbt.iris:raycast/test_for_block
execute store success score $entity_hit jbt.iris store result score $entity_distance jbt.iris run function jbt.iris:raycast/test_for_entity
execute if score $block_hit jbt.iris matches 1 run return run function jbt.iris:raycast/on_hit
execute if score $entity_hit jbt.iris matches 1 run return run function jbt.iris:raycast/on_hit

# Proceed to the next block
execute store result score $to_next_block jbt.iris run function jbt.iris:raycast/find_next_block
scoreboard players operation $total_distance jbt.iris += $to_next_block jbt.iris

# Fail if the maximum recursion depth is reached and nothing was found
scoreboard players add $depth jbt.iris 1
execute if score $depth jbt.iris = $max_depth jbt.iris run tag @s remove jbt.iris.executing
execute if score $depth jbt.iris = $max_depth jbt.iris run return fail

# Otherwise, loop this function at the next block
execute if data storage jbt.iris:data {NextCoordinateChange: "x"} if score $dx jbt.iris matches 0.. positioned ~1 ~ ~ run return run function jbt.iris:raycast/loop
execute if data storage jbt.iris:data {NextCoordinateChange: "x"} if score $dx jbt.iris matches ..-1 positioned ~-1 ~ ~ run return run function jbt.iris:raycast/loop
execute if data storage jbt.iris:data {NextCoordinateChange: "y"} if score $dy jbt.iris matches 0.. positioned ~ ~1 ~ run return run function jbt.iris:raycast/loop
execute if data storage jbt.iris:data {NextCoordinateChange: "y"} if score $dy jbt.iris matches ..-1 positioned ~ ~-1 ~ run return run function jbt.iris:raycast/loop
execute if data storage jbt.iris:data {NextCoordinateChange: "z"} if score $dz jbt.iris matches 0.. positioned ~ ~ ~1 run return run function jbt.iris:raycast/loop
execute if data storage jbt.iris:data {NextCoordinateChange: "z"} if score $dz jbt.iris matches ..-1 positioned ~ ~ ~-1 run return run function jbt.iris:raycast/loop
execute if score $depth jbt.iris < $max_depth jbt.iris at @s run return run function jbt.iris:raycast/loop
