scoreboard players set $global_book_page jbt.dummy 0
data modify storage jbt:book pages set value {}

data remove storage jbt:temp register

#handle page numbers
function jbt.main:book/page_number

function #jbt.main:pages