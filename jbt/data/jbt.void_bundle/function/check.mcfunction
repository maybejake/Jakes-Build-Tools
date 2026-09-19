# check for void bundle
execute unless items entity @s jbt.void_bundle:filled * run return fail

# grab the bundle data
function jbt.main:loot_table/to_data {loot_table:"jbt.void_bundle:technical/filled"}

# grab the inserted item
data modify storage jbt:temp bundle.just_voided set from storage jbt:temp loot_table.output.components.minecraft:bundle_contents

# grab the last voided list
data modify storage jbt:temp bundle.old_last_voided set from storage jbt:temp loot_table.output.components.minecraft:custom_data.jbt.void_bundle.last_voided

# merge contents
data modify storage jbt:temp bundle.just_voided append from storage jbt:temp bundle.old_last_voided[]

# only use last 3 voided items (done like this to avoid loss of items when multiple are voided in one tick)
data modify storage jbt:temp bundle.last_voided set value []
data modify storage jbt:temp bundle.last_voided append from storage jbt:temp bundle.just_voided[0]
data modify storage jbt:temp bundle.last_voided append from storage jbt:temp bundle.just_voided[1]
data modify storage jbt:temp bundle.last_voided append from storage jbt:temp bundle.just_voided[2]

# modify the bundle (removing contents and storing voided items)
item modify entity @s jbt.void_bundle:filled jbt.void_bundle:empty

# make a little noise :)
playsound minecraft:entity.puffer_fish.blow_up player @a ~ ~ ~ 0.4 1
playsound minecraft:entity.illusioner.mirror_move player @a ~ ~ ~ 0.5 1.4