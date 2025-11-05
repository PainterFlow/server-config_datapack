$summon marker 0 0 0 {Tags:["player_detector"],CustomName:"ID: $(id)"}
$execute as @e[tag=player_detector,name="ID: $(id)"] run scoreboard players set @s id $(id)

$tellraw PainterFlow11 "$(id) joined"