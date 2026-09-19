scoreboard players remove @s jbt.remaining_orbs 1

# calculate value
data modify storage jbt:temp flask.orb.value set compute entity @s integer jbt.experience_flask:orb_value

# randomise motion
data modify storage jbt:temp flask.orb.x set compute default float jbt.experience_flask:motion/horizontal
data modify storage jbt:temp flask.orb.y set compute default float jbt.experience_flask:motion/vertical
data modify storage jbt:temp flask.orb.z set compute default float jbt.experience_flask:motion/horizontal

# pondering my orb
function jbt.experience_flask:smash/orbs/spawn with storage jbt:temp flask.orb

execute if score @s jbt.remaining_orbs matches 1.. run function jbt.experience_flask:smash/orbs/loop