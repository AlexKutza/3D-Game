extends Control

func _ready():
	update_time()

func update_time():
	$Time.text = str(Global.time)

func _on_time_hud_timeout():
	Global.update_time(-1)
