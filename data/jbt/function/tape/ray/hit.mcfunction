scoreboard players set @s jbt_tape_raycast_hit 1

execute align xyz summon minecraft:marker run function jbt:tape/ray/summon

execute if predicate jbt:tape/open/both run return run function jbt:tape/action/measure/check
function jbt:tape/action/store/check
