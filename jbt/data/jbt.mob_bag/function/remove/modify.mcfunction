function jbt.mob_bag:swing

execute if predicate jbt.mob_bag:mainhand run return run item modify entity @s weapon.mainhand jbt.mob_bag:fill
execute if predicate jbt.mob_bag:offhand run item modify entity @s weapon.offhand jbt.mob_bag:fill