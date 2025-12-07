#> jbt.iris:raycast/on_hit
#
# Writes all available information about the encountered block or entity
# See jbt.iris:get_target for full documentation
#
# @within jbt.iris:raycast/loop

# Remove the executing tag
tag @s remove jbt.iris.executing

# Write target type (one of BLOCK, ENTITY)
execute if score $block_hit jbt.iris matches 1 if score $entity_hit jbt.iris matches 0 run data modify storage jbt.iris:output TargetType set value "BLOCK"
execute if score $entity_hit jbt.iris matches 1 if score $block_hit jbt.iris matches 0 run data modify storage jbt.iris:output TargetType set value "ENTITY"
execute if score $block_hit jbt.iris matches 1 if score $entity_hit jbt.iris matches 1 if score $block_distance jbt.iris <= $entity_distance jbt.iris run data modify storage jbt.iris:output TargetType set value "BLOCK"
execute if score $block_hit jbt.iris matches 1 if score $entity_hit jbt.iris matches 1 if score $block_distance jbt.iris > $entity_distance jbt.iris run data modify storage jbt.iris:output TargetType set value "ENTITY"

# Write targeted block
execute if data storage jbt.iris:output {TargetType: "BLOCK"} run data modify storage jbt.iris:output TargetedBlock set value [0, 0, 0]
execute if data storage jbt.iris:output {TargetType: "BLOCK"} store result storage jbt.iris:output TargetedBlock[0] int 1 run scoreboard players get $[x] jbt.iris
execute if data storage jbt.iris:output {TargetType: "BLOCK"} store result storage jbt.iris:output TargetedBlock[1] int 1 run scoreboard players get $[y] jbt.iris
execute if data storage jbt.iris:output {TargetType: "BLOCK"} store result storage jbt.iris:output TargetedBlock[2] int 1 run scoreboard players get $[z] jbt.iris
execute if data storage jbt.iris:output {TargetType: "BLOCK"} align xyz run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags: ["iris", "jbt.iris.targeted_block"]}

# Write targeted entity
execute if data storage jbt.iris:output {TargetType: "ENTITY"} run data modify storage jbt.iris:output TargetedEntity set from storage jbt.iris:data TargetedBox.entity_id
execute if data storage jbt.iris:output {TargetType: "ENTITY"} run data remove storage jbt.iris:data TargetedBox.entity_id
execute if data storage jbt.iris:output {TargetType: "ENTITY"} run data remove storage jbt.iris:data TargetedFace.entity_id
execute if data storage jbt.iris:output {TargetType: "ENTITY"} store result score $entity_id jbt.iris run data get storage jbt.iris:output TargetedEntity
execute if data storage jbt.iris:output {TargetType: "ENTITY"} as @e[tag=jbt.iris.possible_target] if score @s jbt.iris.id = $entity_id jbt.iris run tag @s add jbt.iris.targeted_entity
execute if data storage jbt.iris:output {TargetType: "ENTITY"} run tag @e remove jbt.iris.possible_target

# Write target position
data modify storage jbt.iris:output TargetPosition.tile set value [0, 0, 0]
execute store result storage jbt.iris:output TargetPosition.tile[0] int 1 run scoreboard players get $[x] jbt.iris
execute store result storage jbt.iris:output TargetPosition.tile[1] int 1 run scoreboard players get $[y] jbt.iris
execute store result storage jbt.iris:output TargetPosition.tile[2] int 1 run scoreboard players get $[z] jbt.iris
data modify storage jbt.iris:output TargetPosition.point set from storage jbt.iris:data TargetPoint
execute store result score ${x} jbt.iris run data get storage jbt.iris:output TargetPosition.point[0] 1000000
execute store result score ${y} jbt.iris run data get storage jbt.iris:output TargetPosition.point[1] 1000000
execute store result score ${z} jbt.iris run data get storage jbt.iris:output TargetPosition.point[2] 1000000

# Write targeted box
data modify storage jbt.iris:output TargetedBox set from storage jbt.iris:data TargetedBox

# Write targeted face
data modify storage jbt.iris:output TargetedFace set from storage jbt.iris:data TargetedFace
execute if data storage jbt.iris:output TargetedFace{Direction: "WEST_EAST"} if score $dx jbt.iris matches 0.. run data modify storage jbt.iris:output TargetedFace.Direction set value "WEST"
execute if data storage jbt.iris:output TargetedFace{Direction: "WEST_EAST"} if score $dx jbt.iris matches ..-1 run data modify storage jbt.iris:output TargetedFace.Direction set value "EAST"
execute if data storage jbt.iris:output TargetedFace{Direction: "UP_DOWN"} if score $dy jbt.iris matches 0.. run data modify storage jbt.iris:output TargetedFace.Direction set value "DOWN"
execute if data storage jbt.iris:output TargetedFace{Direction: "UP_DOWN"} if score $dy jbt.iris matches ..-1 run data modify storage jbt.iris:output TargetedFace.Direction set value "UP"
execute if data storage jbt.iris:output TargetedFace{Direction: "NORTH_SOUTH"} if score $dz jbt.iris matches 0.. run data modify storage jbt.iris:output TargetedFace.Direction set value "NORTH"
execute if data storage jbt.iris:output TargetedFace{Direction: "NORTH_SOUTH"} if score $dz jbt.iris matches ..-1 run data modify storage jbt.iris:output TargetedFace.Direction set value "SOUTH"

# Write total distance
execute if data storage jbt.iris:output {TargetType: "BLOCK"} run scoreboard players operation $total_distance jbt.iris += $block_distance jbt.iris
execute if data storage jbt.iris:output {TargetType: "ENTITY"} run scoreboard players operation $total_distance jbt.iris += $entity_distance jbt.iris
execute store result storage jbt.iris:output Distance double 0.000001 run scoreboard players get $total_distance jbt.iris

# Run callback
execute if data storage jbt.iris:settings Callback run data modify storage jbt.iris:args function set from storage jbt.iris:settings Callback
execute if data storage jbt.iris:settings Callback run function jbt.iris:raycast/macro_functions/callback with storage jbt.iris:args

return run scoreboard players get $total_distance jbt.iris
