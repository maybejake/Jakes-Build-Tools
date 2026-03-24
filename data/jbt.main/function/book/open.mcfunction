#ensure trigger is enabled
scoreboard players enable @s jbt.book_buttons

#do dcf
function dcf:open

#make sure current page is set to something
execute unless score @s jbt.current_page matches 0.. run scoreboard players set @s jbt.current_page 0

#min max
execute if score @s jbt.current_page matches ..-1 run scoreboard players set @s jbt.current_page 0
execute if score @s jbt.current_page >= $global_book_page jbt.dummy run scoreboard players operation @s jbt.current_page = $global_book_page jbt.dummy
execute if score @s jbt.current_page = $global_book_page jbt.dummy run scoreboard players remove @s jbt.current_page 1

#get page
execute store result storage jbt:temp book.current_page int 1 run scoreboard players get @s jbt.current_page
function jbt.main:book/get_page with storage jbt:temp book

#make a funny little noise
execute at @s run playsound item.book.page_turn neutral @s ~ ~ ~ 1 1

#open
execute if data storage jbt:temp book.page_data.function run return run function jbt.main:book/page_function with storage jbt:temp book.page_data
function jbt.main:book/open_page with storage jbt:temp book.page_data