#hammer check
execute if score @s jbt.hammer_check matches 1.. at @s run function jbt.hammer:check

#ladder check
execute if score @s jbt.ladder_check matches 1.. at @s run function jbt.rope_ladder:check

#magnet check
function jbt.item_magnet:check

#bundle check
execute at @s run function jbt.void_bundle:check

#hardhat check
function jbt.hardhat:check

#mining helmet check
function jbt.mining_helmet:check

#cooldowns
execute if score @s jbt.cooldown matches 1.. at @s run function jbt.main:cooldown

execute if score @s jbt.use_book matches 1.. run function jbt.main:book/check

execute if score @s jbt.book_buttons matches 1.. run function jbt.main:book/buttons/switch