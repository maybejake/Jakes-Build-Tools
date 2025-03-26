function jbt:side/get
function jbt:direction/get
$data modify storage jbt:rotation block set value "$(block)"
function jbt:rotation/get/start
execute if score @s jbt_rotation matches 1 store success score @s jbt_place_check run function jbt:wrench/rotation/topbottom/place with storage jbt:wrench
execute if score @s jbt_rotation matches 2 store success score @s jbt_place_check run function jbt:wrench/rotation/xyz/place with storage jbt:wrench
execute if score @s jbt_rotation matches 3 store success score @s jbt_place_check run function jbt:wrench/rotation/neswud/place with storage jbt:wrench
execute if score @s jbt_rotation matches 5 store success score @s jbt_place_check run function jbt:wrench/rotation/neswtb/place with storage jbt:wrench
execute if score @s jbt_rotation matches 6 store success score @s jbt_place_check run function jbt:wrench/rotation/nesw/place with storage jbt:wrench
function jbt:direction/reset