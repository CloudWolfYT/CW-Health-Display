## COMMENTED OUT LINES ARE EASY TO FOLLOW METHOD, OTHER IS OPTIMIZED

#scoreboard players set .hp_digs cw_hp_disp 1
#scoreboard players set .max_digs cw_hp_disp 1
#execute if score .old cw_hp_disp matches 10..99 run scoreboard players set .hp_digs cw_hp_disp 2
#execute if score .old_max cw_hp_disp matches 10..99 run scoreboard players set .max_digs cw_hp_disp 2
#execute if score .old cw_hp_disp matches 100..999 run scoreboard players set .hp_digs cw_hp_disp 3
#execute if score .old_max cw_hp_disp matches 100..999 run scoreboard players set .max_digs cw_hp_disp 3
#execute if score .old cw_hp_disp matches 1000..9999 run scoreboard players set .hp_digs cw_hp_disp 4
#execute if score .old_max cw_hp_disp matches 1000..9999 run scoreboard players set .max_digs cw_hp_disp 4

#[X/Y] where X is the hp digs and Y is the max digs
#scoreboard players set .x cw_hp_disp 60
#scoreboard players operation .x cw_hp_disp += .hp_digs cw_hp_disp
#scoreboard players add .x cw_hp_disp 62
#scoreboard players operation .x cw_hp_disp += .max_digs cw_hp_disp
#scoreboard players add .x cw_hp_disp 52

# super simplified version but harder to follow, basically x = all chars that are constant + extra for digits
scoreboard players set .x cw_hp_disp 176
execute if score .old cw_hp_disp matches 10.. run scoreboard players add .x cw_hp_disp 1
execute if score .old_max cw_hp_disp matches 10.. run scoreboard players add .x cw_hp_disp 1
execute if score .old cw_hp_disp matches 100.. run scoreboard players add .x cw_hp_disp 1
execute if score .old_max cw_hp_disp matches 100.. run scoreboard players add .x cw_hp_disp 1
execute if score .old cw_hp_disp matches 1000.. run scoreboard players add .x cw_hp_disp 1
execute if score .old_max cw_hp_disp matches 1000.. run scoreboard players add .x cw_hp_disp 1

execute store result storage cw_hp_disp args.x int 1 run scoreboard players get .x cw_hp_disp
function cw_hp_disp:cut_str with storage cw_hp_disp args