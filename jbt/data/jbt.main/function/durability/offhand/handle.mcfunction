data remove storage jbt:temp durability

execute if predicate jbt.main:unbreaking/offhand/all if function jbt.main:durability/offhand/unbreaking run return fail

#handle damage
data modify storage jbt:temp durability.components set from entity @s equipment.offhand.components

scoreboard players set $damage jbt.dummy 0
execute store result score $damage jbt.dummy run data get storage jbt:temp durability.components."minecraft:damage"
scoreboard players add $damage jbt.dummy 1

scoreboard players set $max_damage jbt.dummy 0
execute store result score $max_damage jbt.dummy run data get storage jbt:temp durability.components."minecraft:max_damage"

execute store result storage jbt:temp durability.damage int 1 run scoreboard players get $damage jbt.dummy

function jbt.main:durability/offhand/apply with storage jbt:temp durability
execute if score $damage jbt.dummy >= $max_damage jbt.dummy run function jbt.main:durability/offhand/break