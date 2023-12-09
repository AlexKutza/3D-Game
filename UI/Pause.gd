extends Control


func _on_quit_pressed():
	get_tree().quit()

func _on_main_pressed():
	get_tree().paused = false
	get_tree().change_scene_to_file("res://UI/main.tscn")
