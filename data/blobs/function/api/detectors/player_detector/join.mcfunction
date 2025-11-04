$summon marker 0 0 0 {Tags:["player_detector"],data:{found_player:1b,id:$(id_comp)},CustomName:"$(id)"}
$execute as @e[tag=player_detector,name="$(id)"] run scoreboard players set @s id $(id)

$tellraw PainterFlow11 "$(id) joined"