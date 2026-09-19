# get how many orbs to create
data modify storage jbt:temp flask.smash.orbs set compute default integer {type:"minecraft:uniform",min:3,max:7}
execute store result score @s jbt.remaining_orbs run data get storage jbt:temp flask.smash.orbs

# loop to create orbs
function jbt.experience_flask:smash/orbs/loop

scoreboard players remove @s jbt.flask_experience 32768
execute if score @s jbt.flask_experience matches 1.. run return run function jbt.experience_flask:smash/loop

kill @s