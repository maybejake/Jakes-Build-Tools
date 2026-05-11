# value map:
# 9901 = previous page
# 9902 = next page
# 9903 = back to index
# 9991 = close dialog

execute if score @s jbt.book_buttons matches 9901 run return run function jbt.main:book/buttons/previous_page
execute if score @s jbt.book_buttons matches 9902 run return run function jbt.main:book/buttons/next_page

execute if score @s jbt.book_buttons matches 9903 run return run function jbt.main:book/buttons/previous_incomplete_recipe

execute if score @s jbt.book_buttons matches 9991 run return run function jbt.main:book/buttons/close