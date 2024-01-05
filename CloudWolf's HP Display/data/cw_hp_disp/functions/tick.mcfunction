# If strict, only apply to tagged entities

execute if score .strict cw_hp_disp matches 0 as @e[type=!#cw_hp_disp:no_hp,nbt={HurtTime:9s}] run function cw_hp_disp:update
execute if score .strict cw_hp_disp matches 1 as @e[type=!#cw_hp_disp:no_hp,tag=cw_hp_disp,nbt={HurtTime:9s}] run function cw_hp_disp:update