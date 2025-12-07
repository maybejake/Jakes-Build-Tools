#> jbt.iris:get_target
#
# Returns the position of the block targeted
# To tell where a player is looking, anchoring to the eye position is needed: execute as <player> at @s anchored eyes positioned ^ ^ ^ run function jbt.iris:get_target
# Targeted block/entity information is sent to storage (see output below) but a marker with tag 'jbt.iris.ray' is also present in the targeted block after running this function
#
# @public
# @context an entity, their eye position, and their rotation
# @reads
#   storage jbt.iris:settings
#       TargetEntities: byte
#           Whether or not to look for entities
#           Defaults to false (0b)
#       MaxRecursionDepth: int
#           How many blocks to traverse before giving up
#           Defaults to 16
#       Blacklist: string
#           A block or a block tag to ignore
#           Defaults to "#jbt.iris:shape_groups/air"
#           Should be reset if unused, not set to an empty string
#       Whitelist: string
#           A block or a block tag to look for (all other blocks are ignored)
#           Unset by default
#           Should be reset if unused, not set to an empty string
# @writes
#   storage jbt.iris:output
#       TargetType: string
#           What the ray hits
#           One of "BLOCK", "ENTITY", or "NONE"
#       TargetedBlock: int[]
#           The integer coordinates of the block that is hit
#           Corresponds to the "Targeted Block" field in the debug screen
#           Unset if TargetType is not BLOCK
#       TargetedEntity: int
#           The ID of the targeted entity on objective jbt.iris.entity_id
#           The entity executing this function cannot be targeted
#           Unset if TargetType is not ENTITY
#       TargetPosition
#           Unset if TargetType is NONE
#           tile: int[]
#               The integer coordinates of the last traversed tile
#           point: double[]
#               Where exactly the ray hits an obstacle within the last traversed tile, as three coordinates between 0 and 1
#       Distance: double
#           How long the ray travels before hitting an obstacle
#           Unset if TargetType is NONE
#       TargetedBox: compound
#           The axis-aligned bounding box that was hit within the last traversed tile, as six coordinates between 0 and 1
#           Unset if TargetType is NONE
#           min: double[]
#           max: double[]
#       TargetedFace: compound
#           The face ŧhat was hit within the last traversed tile, as six coordinates between 0 and 1
#           Unset if TargetType is NONE
#           min: double[]
#           max: double[]
#           Direction: string
#              Which face of the obstacle is hit
#              One of WEST, EAST, UP, DOWN, NORTH, SOUTH
#   score $total_distance jbt.iris
#       The distance (in µm) travelled by the ray before it hits a block
#       Unset if no block or entity is found
# @output
#   Result: The distance (in blocks, rounded up) before an obstacle is hit, 0 if no block or entity is found
#   Success: 1 if a block or entity was hit, 0 otherwise

# Reset tags, scores and storage
tag @e remove jbt.iris.targeted_entity
tag @e remove jbt.iris.possible_target
kill @e[type=minecraft:marker, tag=jbt.iris.targeted_block]
scoreboard players reset * jbt.iris.id

data modify storage jbt.iris:output TargetType set value "NONE"
data remove storage jbt.iris:output TargetedBlock
data remove storage jbt.iris:output TargetedEntity
data remove storage jbt.iris:output TargetPosition
data remove storage jbt.iris:output Distance
data remove storage jbt.iris:output TargetedBox
data remove storage jbt.iris:output TargetedFace

scoreboard players set $depth jbt.iris 0
scoreboard players set $min_distance jbt.iris 2147483647
scoreboard players set $max_entity_id jbt.iris 0
scoreboard players set $total_distance jbt.iris 0

# Get initial position/rotation
execute summon minecraft:marker run function jbt.iris:get_position/main

# Start the loop
tag @s add jbt.iris.executing
execute store result score $max_depth jbt.iris run data get storage jbt.iris:settings MaxRecursionDepth
return run function jbt.iris:raycast/loop
