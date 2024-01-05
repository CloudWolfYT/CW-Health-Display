scoreboard objectives add cw_hp_disp dummy
scoreboard objectives add cw_hp_max_disp dummy
scoreboard players set #10 cw_hp_disp 10
scoreboard players add .strict cw_hp_disp 0

execute unless entity @e[type=text_display,tag=cw_hp_disp] run forceload add ~ ~
execute unless entity @e[type=text_display,tag=cw_hp_disp] run summon text_display ~ -65 ~ {Tags:["cw_hp_disp"]}

tellraw @a[gamemode=creative] ["",{"text":"< ","color":"#a2f5ff"},{"text":"C","color":"#a8ecf5"},{"text":"W ","color":"#aee3ec"},{"text":"M","color":"#b4dae2"},{"text":"o","color":"#bad1d9"},{"text":"b ","color":"#c1c9cf"},{"text":"H","color":"#c7c0c6"},{"text":"P ","color":"#cdb7bc"},{"text":"D","color":"#d3aeb3"},{"text":"i","color":"#d9a5a9"},{"text":"s","color":"#e09da0"},{"text":"p","color":"#e69496"},{"text":"l","color":"#ec8b8d"},{"text":"a","color":"#f28283"},{"text":"y ","color":"#f8797a"},{"text":">","color":"#ff7171"},{"text":" INSTALLED","color":"#ACFFA4"},{"text":", for settings "},{"text":"[Click Here]","bold":true,"color":"#94DAFF","clickEvent":{"action":"run_command","value":"/function cw_hp_disp:settings/root"}}]