advancement revoke @s only blobs:apply_settings

execute if score @s blob matches 10001 run item modify entity @s saddle blobs:settings/fullbright
execute if score @s blob matches 10002 run item modify entity @s saddle blobs:settings/locator_bar
execute if score @s blob matches 10003 run item modify entity @s saddle blobs:settings/hell
execute if score @s blob matches 10004 run item modify entity @s saddle blobs:settings/debug

execute if score @s blob matches 10001 run function blobs:settings/settings/fullbright
execute if score @s blob matches 10002 run function blobs:settings/settings/locator_bar
execute if score @s blob matches 10003 run function blobs:settings/settings/hell
execute if score @s blob matches 10004 run function blobs:settings/settings/debug

function blobs:settings/render/get_settings