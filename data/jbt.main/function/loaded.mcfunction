tellraw @a[gamemode=creative] ["",{"translate":"jbt.tooltip","font":"jbt:tooltip","color":"white","italic":false},{"translate":"jbt.loaded","fallback":" loaded!","color":"white","bold":false}]

#raycasting
scoreboard objectives add jbt.raycast_distance dummy

#dummy
scoreboard objectives add jbt.dummy dummy

#id system
scoreboard objectives add jbt.id dummy

#flask experience
scoreboard objectives add jbt.flask_levels dummy
scoreboard objectives add jbt.flask_points dummy
scoreboard objectives add jbt.flask_value dummy

#hammer check
scoreboard objectives add jbt.hammer_check minecraft.used:minecraft.netherite_pickaxe

#ladder check
scoreboard objectives add jbt.ladder_check minecraft.used:minecraft.ladder
scoreboard objectives add jbt.ladder_count dummy

#timer stuff
scoreboard objectives add jbt.timer dummy

#generic cooldown
scoreboard objectives add jbt.cooldown dummy

#book stuff
scoreboard objectives add jbt.use_book minecraft.used:minecraft.written_book
scoreboard objectives add jbt.current_page dummy
scoreboard objectives add jbt.book_buttons trigger

scoreboard objectives add jbt.doodle dummy

#load chunk
execute in minecraft:overworld run forceload add -20000000 100 -20000000 100

#create chest
execute in minecraft:overworld unless block -20000000 -64 99 minecraft:chest run setblock -20000000 -64 99 minecraft:chest

#load pages
function jbt.main:book/register_all