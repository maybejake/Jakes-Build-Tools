$execute if score $y1 temp = $one temp if score $z1 temp = $one temp if score $x1 temp = $one temp run return run data modify storage jbt:tape dimensions set value "$(x)x$(z)x$(y)"
$execute if score $y1 temp = $one temp if score $z1 temp = $one temp run return run data modify storage jbt:tape dimensions set value "$(x)"
$execute if score $y1 temp = $one temp if score $x1 temp = $one temp run return run data modify storage jbt:tape dimensions set value "$(z)"
$execute if score $z1 temp = $one temp if score $x1 temp = $one temp run return run data modify storage jbt:tape dimensions set value "$(y)"
$execute if score $x1 temp = $one temp unless score $y1 temp = $one temp unless score $z1 temp = $one temp run return run data modify storage jbt:tape dimensions set value "$(z)x$(y)"
$execute unless score $x1 temp = $one temp if score $y1 temp = $one temp unless score $z1 temp = $one temp run return run data modify storage jbt:tape dimensions set value "$(x)x$(z)"
$execute unless score $x1 temp = $one temp unless score $y1 temp = $one temp if score $z1 temp = $one temp run return run data modify storage jbt:tape dimensions set value "$(x)x$(y)"
$data modify storage jbt:tape dimensions set value "$(x)x$(z)x$(y)"