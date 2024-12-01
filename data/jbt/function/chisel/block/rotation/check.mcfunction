$execute unless items entity @s hotbar.$(chosen_slot) #jbt:has_rotation run return fail
function jbt:side/get
function jbt:direction/get
execute if score @s jbt_place_check matches 0 store success score @s jbt_place_check run function jbt:chisel/block/rotation/stairs/check with storage jbt:chisel
execute if score @s jbt_place_check matches 0 store success score @s jbt_place_check run function jbt:chisel/block/rotation/slabs/check with storage jbt:chisel
execute if score @s jbt_place_check matches 0 store success score @s jbt_place_check run function jbt:chisel/block/rotation/logs/check with storage jbt:chisel
execute if score @s jbt_place_check matches 0 store success score @s jbt_place_check run function jbt:chisel/block/rotation/trapdoors/check with storage jbt:chisel
execute if score @s jbt_place_check matches 0 store success score @s jbt_place_check run function jbt:chisel/block/rotation/fence_gates/check with storage jbt:chisel
execute if score @s jbt_place_check matches 0 store success score @s jbt_place_check run function jbt:chisel/block/rotation/buttons/check with storage jbt:chisel