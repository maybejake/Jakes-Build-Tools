$data modify storage jbt:rotation block set value "$(chosen_block)"
execute unless score @s jbt_side matches 1.. run function jbt:side/get
function jbt:direction/get
function jbt:rotation/get/start
execute if score @s jbt_rotation matches 1 store success score @s jbt_place_check run function jbt:rotation/topbottom/place with storage jbt:rotation
execute if score @s jbt_rotation matches 2 store success score @s jbt_place_check run function jbt:rotation/xyz/place with storage jbt:rotation
execute if score @s jbt_rotation matches 3 store success score @s jbt_place_check run function jbt:rotation/neswud/place with storage jbt:rotation
execute if score @s jbt_rotation matches 4 store success score @s jbt_place_check run function jbt:rotation/neswfc/place with storage jbt:rotation
execute if score @s jbt_rotation matches 5 store success score @s jbt_place_check run function jbt:rotation/neswtb/place with storage jbt:rotation
execute if score @s jbt_rotation matches 6 store success score @s jbt_place_check run function jbt:rotation/nesw/place with storage jbt:rotation
function jbt:direction/reset