$data modify storage jbt:temp rotation.block set value "$(block)"
function jbt.main:rotation/get/start
execute if score $rotation jbt.dummy matches 1 store success score $place_check jbt.dummy run function jbt.block_wrench:rotation/topbottom/place with storage jbt:temp wrench
execute if score $rotation jbt.dummy matches 2 store success score $place_check jbt.dummy run function jbt.block_wrench:rotation/xyz/place with storage jbt:temp wrench
execute if score $rotation jbt.dummy matches 3 store success score $place_check jbt.dummy run function jbt.block_wrench:rotation/neswud/place with storage jbt:temp wrench
execute if score $rotation jbt.dummy matches 5 store success score $place_check jbt.dummy run function jbt.block_wrench:rotation/neswtb/place with storage jbt:temp wrench
execute if score $rotation jbt.dummy matches 6 store success score $place_check jbt.dummy run function jbt.block_wrench:rotation/nesw/place with storage jbt:temp wrench