#flask smash check
execute if entity @s[tag=jbt.flask_marker,predicate=!jbt.main:hasvehicle] at @s run return run function jbt.experience_flask:smash/smash

#ladder break check
execute if entity @s[tag=jbt.ladder_marker] at @s run return run function jbt.rope_ladder:marker/check

#helmet light check
execute if entity @s[tag=jbt.light_marker] at @s run return run function jbt.mining_helmet:tick