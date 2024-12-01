$execute unless items entity @s hotbar.$(chosen_slot) #jbt:has_rotation run return fail
execute positioned ^ ^ ^0.05 run function jbt:side/get
function jbt:direction/get
execute if score @s jbt_place_check matches 0 store success score @s jbt_place_check run function jbt:trowel/block/rotation/stairs/check with storage jbt:trowel
execute if score @s jbt_place_check matches 0 store success score @s jbt_place_check run function jbt:trowel/block/rotation/slabs/check with storage jbt:trowel
execute if score @s jbt_place_check matches 0 store success score @s jbt_place_check run function jbt:trowel/block/rotation/logs/check with storage jbt:trowel
execute if score @s jbt_place_check matches 0 store success score @s jbt_place_check run function jbt:trowel/block/rotation/trapdoors/check with storage jbt:trowel
execute if score @s jbt_place_check matches 0 store success score @s jbt_place_check run function jbt:trowel/block/rotation/fence_gates/check with storage jbt:trowel
execute if score @s jbt_place_check matches 0 store success score @s jbt_place_check run function jbt:trowel/block/rotation/buttons/check with storage jbt:trowel