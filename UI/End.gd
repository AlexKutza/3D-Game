extends SubViewportContainer

func _on_animation_player_animation_finished(anim_name):
	if Global.time <= 0:
		get_tree().change_scene_to_file("res://UI/Lose.tscn")
	else:
		get_tree().change_scene_to_file("res://UI/Win.tscn")

