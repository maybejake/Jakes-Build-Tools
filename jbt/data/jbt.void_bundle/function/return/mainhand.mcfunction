# get bundle
function jbt.main:loot_table/to_data {loot_table:"jbt.main:technical/get_slot/mainhand"}

# attempt to remove voided item
execute unless function jbt.void_bundle:return/unvoid run return fail

# update the voided list
item modify entity @s weapon.mainhand jbt.void_bundle:update_voided