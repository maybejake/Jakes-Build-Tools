# get voided list
data modify storage jbt:temp bundle.last_voided set from storage jbt:temp loot_table.output.components.minecraft:custom_data.jbt.void_bundle.last_voided
execute store result score $count jbt.dummy run data get storage jbt:temp bundle.last_voided

# if nothing, fail
execute if score $count jbt.dummy matches 0 run return fail

# get the last voided item and remove it from voided
data modify storage jbt:temp bundle.item set from storage jbt:temp bundle.last_voided[0]
data remove storage jbt:temp bundle.last_voided[0]

# spawn the item
execute anchored eyes positioned ^ ^-0.3 ^ run function jbt.void_bundle:return/create with storage jbt:temp bundle

# success
return 1