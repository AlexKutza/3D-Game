extends Node3D

func _ready():
	$Countdown.start()
	Global.time = 100

func _on_countdown_timeout():
	get_tree().change_scene_to_file("res://UI/End.tscn")


func _on_area_3d_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene_to_file("res://UI/End.tscn")
