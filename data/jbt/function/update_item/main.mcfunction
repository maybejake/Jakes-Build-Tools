scoreboard players set @s jbt_update_item 0

execute if entity @s[predicate=jbt:bag/mainhand] run return run function jbt:update_item/bag
execute if entity @s[predicate=jbt:bucket/mainhand] run return run function jbt:update_item/bucket
execute if entity @s[predicate=jbt:bundle/mainhand] run return run function jbt:update_item/bundle
execute if entity @s[predicate=jbt:chisel/either] run return run function jbt:update_item/chisel
execute if entity @s[predicate=jbt:grass/mainhand] run return run function jbt:update_item/grass
execute if entity @s[predicate=jbt:hammer] run return run function jbt:update_item/hammer
execute if entity @s[predicate=jbt:hardhat/normal] run return run function jbt:update_item/hardhat_normal
execute if entity @s[predicate=jbt:hardhat/rare] run return run function jbt:update_item/hardhat_rare
execute if entity @s[predicate=jbt:ladder/mainhand] run return run function jbt:update_item/ladder
execute if entity @s[predicate=jbt:magnet/mainhand] run return run function jbt:update_item/magnet
execute if entity @s[predicate=jbt:tape/mainhand] run return run function jbt:update_item/tape
execute if entity @s[predicate=jbt:trowel/mainhand/either] run return run function jbt:update_item/trowel
execute if entity @s[predicate=jbt:wrench/mainhand] run return run function jbt:update_item/wrench