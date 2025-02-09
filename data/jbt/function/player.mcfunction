#click check
execute if score @s jbt_click_check matches 1.. at @s run function jbt:click_check

#hammer check
execute if score @s jbt_hammer_check matches 1.. at @s run function jbt:hammer/check

#magnet check
execute if entity @s[predicate=jbt:magnet] at @s run function jbt:magnet/effect

#ladder check
execute if score @s jbt_ladder_placed matches 1.. at @s run function jbt:ladder/check

#bundle check
execute at @s run function jbt:bundle/check