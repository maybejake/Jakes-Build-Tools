$data modify storage jbt:temp register.dialog set value { \
  "type": "minecraft:multi_action", \
  "title": {"translate":"item.jbt.owners_manual"}, \
  "body": [ \
    { \
      "type": "minecraft:plain_message", \
      "width": 135, \
      "contents": [{ \
            "translate":"jbt.book.page_template","font":"jbt:base","shadow_color":0,"color":"white","with":[ \
                {"translate":"item.jbt.hammer","color":"#f8f4ed","font":"minecraft:default"}, \
                {"translate":"jbt.book.item_slot_row_1","with":[{"translate":"jbt.book.blank_row_1"}]}, \
                {"translate":"jbt.book.item_slot_row_1","with":[{"translate":"jbt.book.heavy_core_row_1"}],"hover_event":{"action":"show_text","value":{"translate":"block.minecraft.heavy_core"}}}, \
                {"translate":"jbt.book.item_slot_row_1","with":[{"translate":"jbt.book.blank_row_1"}]}, \
                {"translate":"jbt.book.item_slot_row_2","with":[{"translate":"jbt.book.blank_row_2"}]}, \
                {"translate":"jbt.book.item_slot_row_2","with":[{"translate":"jbt.book.stick_row_2"}],"hover_event":{"action":"show_text","value":{"translate":"item.minecraft.stick"}}}, \
                {"translate":"jbt.book.item_slot_row_2","with":[{"translate":"jbt.book.blank_row_2"}]}, \
                {"translate":"jbt.book.item_slot_row_3","with":[{"translate":"jbt.book.blank_row_3"}]}, \
                {"translate":"jbt.book.item_slot_row_3","with":[{"translate":"jbt.book.lightning_rod_row_3"}],"hover_event":{"action":"show_text","value":{"translate":"block.minecraft.lightning_rod"}}}, \
                {"translate":"jbt.book.item_slot_row_3","with":[{"translate":"jbt.book.blank_row_3"}]}, \
                {"translate":"jbt.book.hammer_diagram"}, \
                {"translate":"jbt.book.hammer_description","color":"#4469a4","font":"minecraft:default"}, \
                {"translate":"jbt.book.bottom_line","with":[{"translate":"jbt.book.previous_page","hover_event":{"action":"show_text","value":{"translate":"jbt.book.previous_page.hover"}},"click_event":{"action":"run_command","command":"trigger jbt.book_buttons set 9901"}},{"translate":"jbt.book.page_number.$(page_number_width)","font":"jbt:small_text","with":[{"text":"$(page_number)","color":"#f8f4ed"}]},{"translate":"jbt.book.next_page","hover_event":{"action":"show_text","value":{"translate":"jbt.book.next_page.hover"}},"click_event":{"action":"run_command","command":"trigger jbt.book_buttons set 9902"}}]} \
            ] \
        }] \
    }, \
    { \
      "type": "minecraft:plain_message", \
      "width": 1, \
      "contents": [{"text":"\n"}] \
    } \
  ], \
  "inputs": [], \
  "can_close_with_escape": true, \
  "pause": false, \
  "after_action": "none", \
  "actions": [ \
    { \
      "label": {"translate":"gui.done"}, \
      "width": 211, \
      "action": { \
        "type": "run_command", \
        "command": "trigger jbt.book_buttons set 9991" \
      } \
    } \
  ] \
}