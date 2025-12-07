#> jbt.iris:get_hitbox/block/offset
#
# Computes seeded block offset for e.g. flowers, assuming the shape comprises a single box
#
# @within jbt.iris:get_hitbox/block
# @writes
#	storage jbt.iris:data Shape: compound[]
#       A list of cuboids given by two corners in the format {min: [x, y, z], max: [x, y z]}

# Compute seed(x, y, z)
scoreboard players operation $a jbt.iris = $[x] jbt.iris
scoreboard players operation $a jbt.iris *= $3129871 jbt.iris
scoreboard players operation $b jbt.iris = $[z] jbt.iris
scoreboard players operation $b jbt.iris *= $116129781 jbt.iris
execute store result score $a^b jbt.iris run function jbt.iris:get_hitbox/block/xor

scoreboard players operation $(a^b)² jbt.iris = $a^b jbt.iris
scoreboard players operation $(a^b)² jbt.iris *= $a^b jbt.iris
scoreboard players operation $11*(a^b) jbt.iris = $a^b jbt.iris
scoreboard players operation $11*(a^b) jbt.iris *= $11 jbt.iris

scoreboard players operation $seed jbt.iris = $(a^b)² jbt.iris
scoreboard players operation $seed jbt.iris *= $42317861 jbt.iris
scoreboard players operation $seed jbt.iris += $11*(a^b) jbt.iris
scoreboard players operation $seed jbt.iris /= $65536 jbt.iris

# Compute offsets
scoreboard players operation $x_offset jbt.iris = $seed jbt.iris
scoreboard players operation $x_offset jbt.iris %= $16 jbt.iris
scoreboard players operation $x_offset jbt.iris *= $33333 jbt.iris

scoreboard players operation $z_offset jbt.iris = $seed jbt.iris
scoreboard players operation $z_offset jbt.iris /= $256 jbt.iris
scoreboard players operation $z_offset jbt.iris %= $16 jbt.iris
scoreboard players operation $z_offset jbt.iris *= $33333 jbt.iris

# Adjust/clamp for pointed dripstone blocks
execute if block ~ ~ ~ minecraft:pointed_dripstone run scoreboard players remove $x_offset jbt.iris 125000
execute if block ~ ~ ~ minecraft:pointed_dripstone run scoreboard players remove $z_offset jbt.iris 125000
execute if block ~ ~ ~ minecraft:pointed_dripstone if score $x_offset jbt.iris matches ..0 run scoreboard players set $x_offset jbt.iris 0
execute if block ~ ~ ~ minecraft:pointed_dripstone if score $x_offset jbt.iris matches 250000.. run scoreboard players set $x_offset jbt.iris 250000
execute if block ~ ~ ~ minecraft:pointed_dripstone if score $z_offset jbt.iris matches ..0 run scoreboard players set $z_offset jbt.iris 0
execute if block ~ ~ ~ minecraft:pointed_dripstone if score $z_offset jbt.iris matches 250000.. run scoreboard players set $z_offset jbt.iris 250000

# Apply offsets to the generated shape
execute store result score $min_x jbt.iris run data get storage jbt.iris:data Shape[0].min[0] 1000000
execute store result storage jbt.iris:data Shape[0].min[0] double 0.000001 run scoreboard players operation $min_x jbt.iris += $x_offset jbt.iris
execute store result score $min_z jbt.iris run data get storage jbt.iris:data Shape[0].min[2] 1000000
execute store result storage jbt.iris:data Shape[0].min[2] double 0.000001 run scoreboard players operation $min_z jbt.iris += $z_offset jbt.iris
execute store result score $max_x jbt.iris run data get storage jbt.iris:data Shape[0].max[0] 1000000
execute store result storage jbt.iris:data Shape[0].max[0] double 0.000001 run scoreboard players operation $max_x jbt.iris += $x_offset jbt.iris
execute store result score $max_z jbt.iris run data get storage jbt.iris:data Shape[0].max[2] 1000000
execute store result storage jbt.iris:data Shape[0].max[2] double 0.000001 run scoreboard players operation $max_z jbt.iris += $z_offset jbt.iris
