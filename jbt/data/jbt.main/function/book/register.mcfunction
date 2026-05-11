$data modify storage jbt:book pages.$(page_number) set from storage jbt:temp register

#advance global
scoreboard players add $global_book_page jbt.dummy 1

#clear storage
data remove storage jbt:temp register

#handle page numbers for next page
function jbt.main:book/page_number