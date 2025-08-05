tellraw @a ["",{"text":"Jake's Build Tools ","color":"gold","bold":true},{"translate":"jbt:loaded","fallback":"loaded!","color":"white","bold":false}]

#raycasting
scoreboard objectives add jbt.raycast_distance dummy

#reach
scoreboard objectives add jbt.reach dummy
scoreboard objectives add jbt.reach_tool dummy
scoreboard objectives add jbt.reach_hammer dummy

#dummy
scoreboard objectives add jbt.dummy dummy

#click check
scoreboard objectives add jbt.click_check minecraft.used:minecraft.warped_fungus_on_a_stick

#id system (i cant update the variable because it's gonna break everything coconut.jpeg)
scoreboard objectives add jbt_id dummy

#cooldown
scoreboard objectives add jbt.bag_cooldown dummy
scoreboard objectives add jbt.bundle_cooldown dummy

#flask experience
scoreboard objectives add jbt.flask_levels dummy
scoreboard objectives add jbt.flask_points dummy
scoreboard objectives add jbt.flask_value dummy

#hammer check
scoreboard objectives add jbt.hammer_check minecraft.used:minecraft.iron_pickaxe

#ladder check
scoreboard objectives add jbt.ladder_check minecraft.used:minecraft.ladder
scoreboard objectives add jbt.ladder_count dummy

#timer stuff
scoreboard objectives add jbt.timer dummy

#enable selections
execute unless score $tape_selection_toggle jbt.dummy matches 0..1 run scoreboard players set $tape_selection_toggle jbt.dummy 1

#load chunk
execute in minecraft:overworld run forceload add -20000000 100 -20000000 100

#create chest
execute in minecraft:overworld unless block -20000000 -64 99 minecraft:chest run setblock -20000000 -64 99 minecraft:chest

#start tick
schedule clear jbt.main:tick_20
function jbt.main:tick_20

schedule clear jbt.main:tick_2
function jbt.main:tick_2