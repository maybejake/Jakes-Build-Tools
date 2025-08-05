execute if entity @s[predicate=jbt.main:unbreaking/offhand/all] if function jbt.trowel:durability/offhand/unbreaking run return run function jbt.trowel:durability/modify

#handle damage
data modify storage jbt:temp trowel.components set from entity @s equipment.offhand.components

scoreboard players set $damage jbt.dummy 0
execute store result score $damage jbt.dummy run data get storage jbt:temp trowel.components."minecraft:damage"
scoreboard players add $damage jbt.dummy 1

scoreboard players set $max_damage jbt.dummy 0
execute store result score $max_damage jbt.dummy run data get storage jbt:temp trowel.components."minecraft:max_damage"

execute store result storage jbt:temp trowel.damage int 1 run scoreboard players get $damage jbt.dummy

function jbt.trowel:durability/offhand/apply with storage jbt:temp trowel
execute if score $damage jbt.dummy >= $max_damage jbt.dummy run function jbt.trowel:durability/offhand/break