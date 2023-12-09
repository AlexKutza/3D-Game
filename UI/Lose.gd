extends Control

func _ready():
	$text.show()
	await get_tree().create_timer(2).timeout
	$text2.show()
	await get_tree().create_timer(2).timeout
	$Replay.show()


func _on_replay_pressed():
	get_tree().change_scene_to_file("res://UI/main.tscn")
