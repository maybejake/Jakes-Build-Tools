data remove storage jbt:temp rotation

$data modify storage jbt:temp rotation.block set value "$(chosen_block)"

execute unless score $side jbt.dummy matches 1.. store result score $side jbt.dummy run function jbt.main:side/get
execute store result score $half jbt.dummy run function jbt.main:side/half
execute store result score $direction jbt.dummy run function jbt.main:direction/get
function jbt.main:rotation/get/start

scoreboard players set $place_check jbt.dummy 0
execute if score $rotation jbt.dummy matches 1 store success score $place_check jbt.dummy run function jbt.main:rotation/topbottom/place
execute if score $rotation jbt.dummy matches 2 store success score $place_check jbt.dummy run function jbt.main:rotation/xyz/place with storage jbt:temp rotation
execute if score $rotation jbt.dummy matches 3 store success score $place_check jbt.dummy run function jbt.main:rotation/neswud/place
execute if score $rotation jbt.dummy matches 4 store success score $place_check jbt.dummy run function jbt.main:rotation/neswfc/place
execute if score $rotation jbt.dummy matches 5 store success score $place_check jbt.dummy run function jbt.main:rotation/neswtb/place
execute if score $rotation jbt.dummy matches 6 store success score $place_check jbt.dummy run function jbt.main:rotation/nesw/place with storage jbt:temp rotation