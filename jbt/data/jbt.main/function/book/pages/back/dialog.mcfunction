$dialog show @s { \
  "type": "minecraft:multi_action", \
  "title": {"translate":"item.jbt.owners_manual"}, \
  "body": [ \
    { \
      "type": "minecraft:plain_message", \
      "width": 135, \
      "contents": [{ \
            "translate":"jbt.book.back_page","font":"jbt:base","shadow_color":0,"color":"white","with":[ \
                {"translate":"jbt.book.doodle.$(doodle)"}, \
                {"translate":"jbt.book.back_line","with":[{"translate":"jbt.book.previous_page","hover_event":{"action":"show_text","value":{"translate":"jbt.book.previous_page.hover"}},"click_event":{"action":"run_command","command":"trigger jbt.book_buttons set 9901"}}]} \
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