execute if score $global_book_page jbt.dummy matches 1..9 run data modify storage jbt:temp register.page_number_width set value "single"
execute if score $global_book_page jbt.dummy matches 10..99 run data modify storage jbt:temp register.page_number_width set value "double"
execute if score $global_book_page jbt.dummy matches 100.. run data modify storage jbt:temp register.page_number_width set value "triple"

execute store result storage jbt:temp register.page_number int 1 run scoreboard players get $global_book_page jbt.dummy