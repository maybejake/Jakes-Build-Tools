#> jbt.iris:raycast/test_for_block
#
# @within jbt.iris:raycast/loop
# @output
#   Result: 0
#   Success: 1 if a block was hit, 0 otherwise

# Check if the current block is loaded
execute store success score $loaded jbt.iris if blocks ~ ~ ~ ~ ~ ~ ~ ~ ~ masked
execute if score $loaded jbt.iris matches 0 run return fail

# Check if the current block is blacklisted, or explicitly not whitelisted
execute if data storage jbt.iris:settings Whitelist run data modify storage jbt.iris:args id set from storage jbt.iris:settings Whitelist
execute if data storage jbt.iris:settings Whitelist store success score $is_whitelisted jbt.iris run function jbt.iris:raycast/macro_functions/block_id_test with storage jbt.iris:args
execute if data storage jbt.iris:settings Whitelist unless score $is_whitelisted jbt.iris matches 1 run return fail
execute if data storage jbt.iris:settings Blacklist run data modify storage jbt.iris:args id set from storage jbt.iris:settings Blacklist
execute if data storage jbt.iris:settings Blacklist store success score $is_blacklisted jbt.iris run function jbt.iris:raycast/macro_functions/block_id_test with storage jbt.iris:args
execute if data storage jbt.iris:settings Blacklist if score $is_blacklisted jbt.iris matches 1 run return fail

# See if the block is hit
function jbt.iris:get_hitbox/block
execute unless data storage jbt.iris:data Shape[0] run return fail
return run function jbt.iris:raycast/check_intersection/loop
